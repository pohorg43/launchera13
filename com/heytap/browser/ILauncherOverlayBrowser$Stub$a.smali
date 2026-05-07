.class public Lcom/heytap/browser/ILauncherOverlayBrowser$Stub$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/heytap/browser/ILauncherOverlayBrowser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/browser/ILauncherOverlayBrowser$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static b:Lcom/heytap/browser/ILauncherOverlayBrowser;


# instance fields
.field public a:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/heytap/browser/ILauncherOverlayBrowser$Stub$a;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/heytap/browser/ILauncherOverlayBrowser$Stub$a;->a:Landroid/os/IBinder;

    return-object p0
.end method

.method public closeOverlay(IZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.heytap.browser.ILauncherOverlayBrowser"

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

    iget-object p0, p0, Lcom/heytap/browser/ILauncherOverlayBrowser$Stub$a;->a:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_30

    invoke-static {}, Lcom/heytap/browser/ILauncherOverlayBrowser$Stub;->getDefaultImpl()Lcom/heytap/browser/ILauncherOverlayBrowser;

    move-result-object p0

    if-eqz p0, :cond_30

    invoke-static {}, Lcom/heytap/browser/ILauncherOverlayBrowser$Stub;->getDefaultImpl()Lcom/heytap/browser/ILauncherOverlayBrowser;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/heytap/browser/ILauncherOverlayBrowser;->closeOverlay(IZ)V
    :try_end_2c
    .catchall {:try_start_4 .. :try_end_2c} :catchall_34

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_30
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_34
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public endScrollWithVelocity(F)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.heytap.browser.ILauncherOverlayBrowser"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object p0, p0, Lcom/heytap/browser/ILauncherOverlayBrowser$Stub$a;->a:Landroid/os/IBinder;

    const/16 v1, 0xd

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_29

    invoke-static {}, Lcom/heytap/browser/ILauncherOverlayBrowser$Stub;->getDefaultImpl()Lcom/heytap/browser/ILauncherOverlayBrowser;

    move-result-object p0

    if-eqz p0, :cond_29

    invoke-static {}, Lcom/heytap/browser/ILauncherOverlayBrowser$Stub;->getDefaultImpl()Lcom/heytap/browser/ILauncherOverlayBrowser;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/heytap/browser/ILauncherOverlayBrowser;->endScrollWithVelocity(F)V
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

.method public onDestory()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.heytap.browser.ILauncherOverlayBrowser"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/heytap/browser/ILauncherOverlayBrowser$Stub$a;->a:Landroid/os/IBinder;

    const/16 v1, 0xa

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_26

    invoke-static {}, Lcom/heytap/browser/ILauncherOverlayBrowser$Stub;->getDefaultImpl()Lcom/heytap/browser/ILauncherOverlayBrowser;

    move-result-object p0

    if-eqz p0, :cond_26

    invoke-static {}, Lcom/heytap/browser/ILauncherOverlayBrowser$Stub;->getDefaultImpl()Lcom/heytap/browser/ILauncherOverlayBrowser;

    move-result-object p0

    invoke-interface {p0}, Lcom/heytap/browser/ILauncherOverlayBrowser;->onDestory()V
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

.method public onPause()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.heytap.browser.ILauncherOverlayBrowser"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/heytap/browser/ILauncherOverlayBrowser$Stub$a;->a:Landroid/os/IBinder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_25

    invoke-static {}, Lcom/heytap/browser/ILauncherOverlayBrowser$Stub;->getDefaultImpl()Lcom/heytap/browser/ILauncherOverlayBrowser;

    move-result-object p0

    if-eqz p0, :cond_25

    invoke-static {}, Lcom/heytap/browser/ILauncherOverlayBrowser$Stub;->getDefaultImpl()Lcom/heytap/browser/ILauncherOverlayBrowser;

    move-result-object p0

    invoke-interface {p0}, Lcom/heytap/browser/ILauncherOverlayBrowser;->onPause()V
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
    const-string v1, "com.heytap.browser.ILauncherOverlayBrowser"

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

    iget-object p0, p0, Lcom/heytap/browser/ILauncherOverlayBrowser$Stub$a;->a:Landroid/os/IBinder;

    const/16 v1, 0xb

    const/4 v3, 0x0

    invoke-interface {p0, v1, v0, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_35

    invoke-static {}, Lcom/heytap/browser/ILauncherOverlayBrowser$Stub;->getDefaultImpl()Lcom/heytap/browser/ILauncherOverlayBrowser;

    move-result-object p0

    if-eqz p0, :cond_35

    invoke-static {}, Lcom/heytap/browser/ILauncherOverlayBrowser$Stub;->getDefaultImpl()Lcom/heytap/browser/ILauncherOverlayBrowser;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/heytap/browser/ILauncherOverlayBrowser;->onProfileChanged(ZZ)V
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

.method public onResume()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.heytap.browser.ILauncherOverlayBrowser"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/heytap/browser/ILauncherOverlayBrowser$Stub$a;->a:Landroid/os/IBinder;

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_26

    invoke-static {}, Lcom/heytap/browser/ILauncherOverlayBrowser$Stub;->getDefaultImpl()Lcom/heytap/browser/ILauncherOverlayBrowser;

    move-result-object p0

    if-eqz p0, :cond_26

    invoke-static {}, Lcom/heytap/browser/ILauncherOverlayBrowser$Stub;->getDefaultImpl()Lcom/heytap/browser/ILauncherOverlayBrowser;

    move-result-object p0

    invoke-interface {p0}, Lcom/heytap/browser/ILauncherOverlayBrowser;->onResume()V
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

.method public onScroll(F)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.heytap.browser.ILauncherOverlayBrowser"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object p0, p0, Lcom/heytap/browser/ILauncherOverlayBrowser$Stub$a;->a:Landroid/os/IBinder;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_28

    invoke-static {}, Lcom/heytap/browser/ILauncherOverlayBrowser$Stub;->getDefaultImpl()Lcom/heytap/browser/ILauncherOverlayBrowser;

    move-result-object p0

    if-eqz p0, :cond_28

    invoke-static {}, Lcom/heytap/browser/ILauncherOverlayBrowser$Stub;->getDefaultImpl()Lcom/heytap/browser/ILauncherOverlayBrowser;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/heytap/browser/ILauncherOverlayBrowser;->onScroll(F)V
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

.method public onStart()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.heytap.browser.ILauncherOverlayBrowser"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/heytap/browser/ILauncherOverlayBrowser$Stub$a;->a:Landroid/os/IBinder;

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_25

    invoke-static {}, Lcom/heytap/browser/ILauncherOverlayBrowser$Stub;->getDefaultImpl()Lcom/heytap/browser/ILauncherOverlayBrowser;

    move-result-object p0

    if-eqz p0, :cond_25

    invoke-static {}, Lcom/heytap/browser/ILauncherOverlayBrowser$Stub;->getDefaultImpl()Lcom/heytap/browser/ILauncherOverlayBrowser;

    move-result-object p0

    invoke-interface {p0}, Lcom/heytap/browser/ILauncherOverlayBrowser;->onStart()V
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

.method public onStop()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.heytap.browser.ILauncherOverlayBrowser"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/heytap/browser/ILauncherOverlayBrowser$Stub$a;->a:Landroid/os/IBinder;

    const/16 v1, 0x9

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_26

    invoke-static {}, Lcom/heytap/browser/ILauncherOverlayBrowser$Stub;->getDefaultImpl()Lcom/heytap/browser/ILauncherOverlayBrowser;

    move-result-object p0

    if-eqz p0, :cond_26

    invoke-static {}, Lcom/heytap/browser/ILauncherOverlayBrowser$Stub;->getDefaultImpl()Lcom/heytap/browser/ILauncherOverlayBrowser;

    move-result-object p0

    invoke-interface {p0}, Lcom/heytap/browser/ILauncherOverlayBrowser;->onStop()V
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

.method public openAlphaOverlay(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.heytap.browser.ILauncherOverlayBrowser"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/heytap/browser/ILauncherOverlayBrowser$Stub$a;->a:Landroid/os/IBinder;

    const/16 v1, 0xc

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_29

    invoke-static {}, Lcom/heytap/browser/ILauncherOverlayBrowser$Stub;->getDefaultImpl()Lcom/heytap/browser/ILauncherOverlayBrowser;

    move-result-object p0

    if-eqz p0, :cond_29

    invoke-static {}, Lcom/heytap/browser/ILauncherOverlayBrowser$Stub;->getDefaultImpl()Lcom/heytap/browser/ILauncherOverlayBrowser;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/heytap/browser/ILauncherOverlayBrowser;->openAlphaOverlay(I)V
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

.method public startScroll()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.heytap.browser.ILauncherOverlayBrowser"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/heytap/browser/ILauncherOverlayBrowser$Stub$a;->a:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_24

    invoke-static {}, Lcom/heytap/browser/ILauncherOverlayBrowser$Stub;->getDefaultImpl()Lcom/heytap/browser/ILauncherOverlayBrowser;

    move-result-object p0

    if-eqz p0, :cond_24

    invoke-static {}, Lcom/heytap/browser/ILauncherOverlayBrowser$Stub;->getDefaultImpl()Lcom/heytap/browser/ILauncherOverlayBrowser;

    move-result-object p0

    invoke-interface {p0}, Lcom/heytap/browser/ILauncherOverlayBrowser;->startScroll()V
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

.method public terminal()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.heytap.browser.ILauncherOverlayBrowser"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/heytap/browser/ILauncherOverlayBrowser$Stub$a;->a:Landroid/os/IBinder;

    const/16 v1, 0xe

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_26

    invoke-static {}, Lcom/heytap/browser/ILauncherOverlayBrowser$Stub;->getDefaultImpl()Lcom/heytap/browser/ILauncherOverlayBrowser;

    move-result-object p0

    if-eqz p0, :cond_26

    invoke-static {}, Lcom/heytap/browser/ILauncherOverlayBrowser$Stub;->getDefaultImpl()Lcom/heytap/browser/ILauncherOverlayBrowser;

    move-result-object p0

    invoke-interface {p0}, Lcom/heytap/browser/ILauncherOverlayBrowser;->terminal()V
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

.method public windowAttached(Landroid/view/WindowManager$LayoutParams;Lcom/heytap/browser/ILauncherOverlayBrowserCallback;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.heytap.browser.ILauncherOverlayBrowser"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0, v2}, Landroid/view/WindowManager$LayoutParams;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    :cond_14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_17
    const/4 v2, 0x0

    if-eqz p2, :cond_1f

    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_20

    :cond_1f
    move-object v3, v2

    :goto_20
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/heytap/browser/ILauncherOverlayBrowser$Stub$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x3

    invoke-interface {p0, v3, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_40

    invoke-static {}, Lcom/heytap/browser/ILauncherOverlayBrowser$Stub;->getDefaultImpl()Lcom/heytap/browser/ILauncherOverlayBrowser;

    move-result-object p0

    if-eqz p0, :cond_40

    invoke-static {}, Lcom/heytap/browser/ILauncherOverlayBrowser$Stub;->getDefaultImpl()Lcom/heytap/browser/ILauncherOverlayBrowser;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/heytap/browser/ILauncherOverlayBrowser;->windowAttached(Landroid/view/WindowManager$LayoutParams;Lcom/heytap/browser/ILauncherOverlayBrowserCallback;I)V
    :try_end_3c
    .catchall {:try_start_4 .. :try_end_3c} :catchall_44

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_40
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_44
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public windowDetached(Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.heytap.browser.ILauncherOverlayBrowser"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_e

    move v2, v1

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/heytap/browser/ILauncherOverlayBrowser$Stub$a;->a:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_2d

    invoke-static {}, Lcom/heytap/browser/ILauncherOverlayBrowser$Stub;->getDefaultImpl()Lcom/heytap/browser/ILauncherOverlayBrowser;

    move-result-object p0

    if-eqz p0, :cond_2d

    invoke-static {}, Lcom/heytap/browser/ILauncherOverlayBrowser$Stub;->getDefaultImpl()Lcom/heytap/browser/ILauncherOverlayBrowser;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/heytap/browser/ILauncherOverlayBrowser;->windowDetached(Z)V
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
