.class public abstract Lcom/heytap/browser/ILauncherOverlayBrowserCallback$Stub;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lcom/heytap/browser/ILauncherOverlayBrowserCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/browser/ILauncherOverlayBrowserCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/browser/ILauncherOverlayBrowserCallback$Stub$a;
    }
.end annotation


# static fields
.field public static final TRANSACTION_isPreloaded:I = 0x3

.field public static final TRANSACTION_onWindowEndScroll:I = 0x5

.field public static final TRANSACTION_overlayScrollChanged:I = 0x1

.field public static final TRANSACTION_overlayStatusChanged:I = 0x2

.field public static final TRANSACTION_updateNewsParams:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.heytap.browser.ILauncherOverlayBrowserCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/heytap/browser/ILauncherOverlayBrowserCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.heytap.browser.ILauncherOverlayBrowserCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/heytap/browser/ILauncherOverlayBrowserCallback;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/heytap/browser/ILauncherOverlayBrowserCallback;

    return-object v0

    :cond_13
    new-instance v0, Lcom/heytap/browser/ILauncherOverlayBrowserCallback$Stub$a;

    invoke-direct {v0, p0}, Lcom/heytap/browser/ILauncherOverlayBrowserCallback$Stub$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/heytap/browser/ILauncherOverlayBrowserCallback;
    .registers 1

    sget-object v0, Lcom/heytap/browser/ILauncherOverlayBrowserCallback$Stub$a;->b:Lcom/heytap/browser/ILauncherOverlayBrowserCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/heytap/browser/ILauncherOverlayBrowserCallback;)Z
    .registers 2

    sget-object v0, Lcom/heytap/browser/ILauncherOverlayBrowserCallback$Stub$a;->b:Lcom/heytap/browser/ILauncherOverlayBrowserCallback;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Lcom/heytap/browser/ILauncherOverlayBrowserCallback$Stub$a;->b:Lcom/heytap/browser/ILauncherOverlayBrowserCallback;

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.heytap.browser.ILauncherOverlayBrowserCallback"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_5e

    if-eq p1, v0, :cond_53

    const/4 v2, 0x2

    if-eq p1, v2, :cond_48

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3d

    const/4 v2, 0x4

    if-eq p1, v2, :cond_26

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1b

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_1b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/heytap/browser/ILauncherOverlayBrowserCallback;->onWindowEndScroll(I)V

    return v0

    :cond_26
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_38

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    goto :goto_39

    :cond_38
    const/4 p1, 0x0

    :goto_39
    invoke-interface {p0, p1}, Lcom/heytap/browser/ILauncherOverlayBrowserCallback;->updateNewsParams(Landroid/os/Bundle;)V

    return v0

    :cond_3d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/heytap/browser/ILauncherOverlayBrowserCallback;->isPreloaded(I)V

    return v0

    :cond_48
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/heytap/browser/ILauncherOverlayBrowserCallback;->overlayStatusChanged(I)V

    return v0

    :cond_53
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-interface {p0, p1}, Lcom/heytap/browser/ILauncherOverlayBrowserCallback;->overlayScrollChanged(F)V

    return v0

    :cond_5e
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
