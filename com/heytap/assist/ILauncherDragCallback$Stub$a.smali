.class public Lcom/heytap/assist/ILauncherDragCallback$Stub$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/heytap/assist/ILauncherDragCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/assist/ILauncherDragCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static b:Lcom/heytap/assist/ILauncherDragCallback;


# instance fields
.field public a:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/heytap/assist/ILauncherDragCallback$Stub$a;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public addCardToLauncher(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.heytap.assist.ILauncherDragCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/heytap/assist/ILauncherDragCallback$Stub$a;->a:Landroid/os/IBinder;

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_29

    invoke-static {}, Lcom/heytap/assist/ILauncherDragCallback$Stub;->getDefaultImpl()Lcom/heytap/assist/ILauncherDragCallback;

    move-result-object p0

    if-eqz p0, :cond_29

    invoke-static {}, Lcom/heytap/assist/ILauncherDragCallback$Stub;->getDefaultImpl()Lcom/heytap/assist/ILauncherDragCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/heytap/assist/ILauncherDragCallback;->addCardToLauncher(I)V
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

.method public asBinder()Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/heytap/assist/ILauncherDragCallback$Stub$a;->a:Landroid/os/IBinder;

    return-object p0
.end method

.method public getSingleCardNum(I)I
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
    const-string v2, "com.heytap.assist.ILauncherDragCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/heytap/assist/ILauncherDragCallback$Stub$a;->a:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_2f

    invoke-static {}, Lcom/heytap/assist/ILauncherDragCallback$Stub;->getDefaultImpl()Lcom/heytap/assist/ILauncherDragCallback;

    move-result-object p0

    if-eqz p0, :cond_2f

    invoke-static {}, Lcom/heytap/assist/ILauncherDragCallback$Stub;->getDefaultImpl()Lcom/heytap/assist/ILauncherDragCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/heytap/assist/ILauncherDragCallback;->getSingleCardNum(I)I

    move-result p0
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3d

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_3d

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_3d
    move-exception p0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onEditStateChanged(Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.heytap.assist.ILauncherDragCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_e

    move v2, v1

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/heytap/assist/ILauncherDragCallback$Stub$a;->a:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_2d

    invoke-static {}, Lcom/heytap/assist/ILauncherDragCallback$Stub;->getDefaultImpl()Lcom/heytap/assist/ILauncherDragCallback;

    move-result-object p0

    if-eqz p0, :cond_2d

    invoke-static {}, Lcom/heytap/assist/ILauncherDragCallback$Stub;->getDefaultImpl()Lcom/heytap/assist/ILauncherDragCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/heytap/assist/ILauncherDragCallback;->onEditStateChanged(Z)V
    :try_end_29
    .catchall {:try_start_4 .. :try_end_29} :catchall_31

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2d
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_31
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onSyncEvent(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.heytap.assist.ILauncherDragCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/heytap/assist/ILauncherDragCallback$Stub$a;->a:Landroid/os/IBinder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_28

    invoke-static {}, Lcom/heytap/assist/ILauncherDragCallback$Stub;->getDefaultImpl()Lcom/heytap/assist/ILauncherDragCallback;

    move-result-object p0

    if-eqz p0, :cond_28

    invoke-static {}, Lcom/heytap/assist/ILauncherDragCallback$Stub;->getDefaultImpl()Lcom/heytap/assist/ILauncherDragCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/heytap/assist/ILauncherDragCallback;->onSyncEvent(I)V
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_2c

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_28
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2c
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onWidgetDragEnd(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.heytap.assist.ILauncherDragCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/heytap/assist/ILauncherDragCallback$Stub$a;->a:Landroid/os/IBinder;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_28

    invoke-static {}, Lcom/heytap/assist/ILauncherDragCallback$Stub;->getDefaultImpl()Lcom/heytap/assist/ILauncherDragCallback;

    move-result-object p0

    if-eqz p0, :cond_28

    invoke-static {}, Lcom/heytap/assist/ILauncherDragCallback$Stub;->getDefaultImpl()Lcom/heytap/assist/ILauncherDragCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/heytap/assist/ILauncherDragCallback;->onWidgetDragEnd(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_2c

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_28
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2c
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public requestBindAppWidgetPermission(Ljava/lang/String;)Z
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
    const-string v2, "com.heytap.assist.ILauncherDragCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/heytap/assist/ILauncherDragCallback$Stub$a;->a:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_2f

    invoke-static {}, Lcom/heytap/assist/ILauncherDragCallback$Stub;->getDefaultImpl()Lcom/heytap/assist/ILauncherDragCallback;

    move-result-object p0

    if-eqz p0, :cond_2f

    invoke-static {}, Lcom/heytap/assist/ILauncherDragCallback$Stub;->getDefaultImpl()Lcom/heytap/assist/ILauncherDragCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/heytap/assist/ILauncherDragCallback;->requestBindAppWidgetPermission(Ljava/lang/String;)Z

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

.method public sendCardInfoList(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.heytap.assist.ILauncherDragCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/heytap/assist/ILauncherDragCallback$Stub$a;->a:Landroid/os/IBinder;

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_28

    invoke-static {}, Lcom/heytap/assist/ILauncherDragCallback$Stub;->getDefaultImpl()Lcom/heytap/assist/ILauncherDragCallback;

    move-result-object p0

    if-eqz p0, :cond_28

    invoke-static {}, Lcom/heytap/assist/ILauncherDragCallback$Stub;->getDefaultImpl()Lcom/heytap/assist/ILauncherDragCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/heytap/assist/ILauncherDragCallback;->sendCardInfoList(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_2c

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_28
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2c
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public startWidgetDrag(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.heytap.assist.ILauncherDragCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/heytap/assist/ILauncherDragCallback$Stub$a;->a:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_27

    invoke-static {}, Lcom/heytap/assist/ILauncherDragCallback$Stub;->getDefaultImpl()Lcom/heytap/assist/ILauncherDragCallback;

    move-result-object p0

    if-eqz p0, :cond_27

    invoke-static {}, Lcom/heytap/assist/ILauncherDragCallback$Stub;->getDefaultImpl()Lcom/heytap/assist/ILauncherDragCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/heytap/assist/ILauncherDragCallback;->startWidgetDrag(Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_2b

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_27
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2b
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method
