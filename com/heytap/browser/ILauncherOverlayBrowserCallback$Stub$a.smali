.class public Lcom/heytap/browser/ILauncherOverlayBrowserCallback$Stub$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/heytap/browser/ILauncherOverlayBrowserCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/browser/ILauncherOverlayBrowserCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static b:Lcom/heytap/browser/ILauncherOverlayBrowserCallback;


# instance fields
.field public a:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/heytap/browser/ILauncherOverlayBrowserCallback$Stub$a;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/heytap/browser/ILauncherOverlayBrowserCallback$Stub$a;->a:Landroid/os/IBinder;

    return-object p0
.end method

.method public isPreloaded(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.heytap.browser.ILauncherOverlayBrowserCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/heytap/browser/ILauncherOverlayBrowserCallback$Stub$a;->a:Landroid/os/IBinder;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_28

    invoke-static {}, Lcom/heytap/browser/ILauncherOverlayBrowserCallback$Stub;->getDefaultImpl()Lcom/heytap/browser/ILauncherOverlayBrowserCallback;

    move-result-object p0

    if-eqz p0, :cond_28

    invoke-static {}, Lcom/heytap/browser/ILauncherOverlayBrowserCallback$Stub;->getDefaultImpl()Lcom/heytap/browser/ILauncherOverlayBrowserCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/heytap/browser/ILauncherOverlayBrowserCallback;->isPreloaded(I)V
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

.method public onWindowEndScroll(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.heytap.browser.ILauncherOverlayBrowserCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/heytap/browser/ILauncherOverlayBrowserCallback$Stub$a;->a:Landroid/os/IBinder;

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_28

    invoke-static {}, Lcom/heytap/browser/ILauncherOverlayBrowserCallback$Stub;->getDefaultImpl()Lcom/heytap/browser/ILauncherOverlayBrowserCallback;

    move-result-object p0

    if-eqz p0, :cond_28

    invoke-static {}, Lcom/heytap/browser/ILauncherOverlayBrowserCallback$Stub;->getDefaultImpl()Lcom/heytap/browser/ILauncherOverlayBrowserCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/heytap/browser/ILauncherOverlayBrowserCallback;->onWindowEndScroll(I)V
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

.method public overlayScrollChanged(F)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.heytap.browser.ILauncherOverlayBrowserCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object p0, p0, Lcom/heytap/browser/ILauncherOverlayBrowserCallback$Stub$a;->a:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_27

    invoke-static {}, Lcom/heytap/browser/ILauncherOverlayBrowserCallback$Stub;->getDefaultImpl()Lcom/heytap/browser/ILauncherOverlayBrowserCallback;

    move-result-object p0

    if-eqz p0, :cond_27

    invoke-static {}, Lcom/heytap/browser/ILauncherOverlayBrowserCallback$Stub;->getDefaultImpl()Lcom/heytap/browser/ILauncherOverlayBrowserCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/heytap/browser/ILauncherOverlayBrowserCallback;->overlayScrollChanged(F)V
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

.method public overlayStatusChanged(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.heytap.browser.ILauncherOverlayBrowserCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/heytap/browser/ILauncherOverlayBrowserCallback$Stub$a;->a:Landroid/os/IBinder;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_28

    invoke-static {}, Lcom/heytap/browser/ILauncherOverlayBrowserCallback$Stub;->getDefaultImpl()Lcom/heytap/browser/ILauncherOverlayBrowserCallback;

    move-result-object p0

    if-eqz p0, :cond_28

    invoke-static {}, Lcom/heytap/browser/ILauncherOverlayBrowserCallback$Stub;->getDefaultImpl()Lcom/heytap/browser/ILauncherOverlayBrowserCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/heytap/browser/ILauncherOverlayBrowserCallback;->overlayStatusChanged(I)V
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

.method public updateNewsParams(Landroid/os/Bundle;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.heytap.browser.ILauncherOverlayBrowserCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    :cond_14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_17
    iget-object p0, p0, Lcom/heytap/browser/ILauncherOverlayBrowserCallback$Stub$a;->a:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_32

    invoke-static {}, Lcom/heytap/browser/ILauncherOverlayBrowserCallback$Stub;->getDefaultImpl()Lcom/heytap/browser/ILauncherOverlayBrowserCallback;

    move-result-object p0

    if-eqz p0, :cond_32

    invoke-static {}, Lcom/heytap/browser/ILauncherOverlayBrowserCallback$Stub;->getDefaultImpl()Lcom/heytap/browser/ILauncherOverlayBrowserCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/heytap/browser/ILauncherOverlayBrowserCallback;->updateNewsParams(Landroid/os/Bundle;)V
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_36

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_32
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_36
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method
