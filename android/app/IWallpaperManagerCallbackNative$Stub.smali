.class public abstract Landroid/app/IWallpaperManagerCallbackNative$Stub;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Landroid/app/IWallpaperManagerCallbackNative;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IWallpaperManagerCallbackNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IWallpaperManagerCallbackNative$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_onWallpaperChanged:I = 0x1

.field public static final TRANSACTION_onWallpaperColorsChanged:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.IWallpaperManagerCallbackNative"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallbackNative;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "android.app.IWallpaperManagerCallbackNative"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/IWallpaperManagerCallbackNative;

    if-eqz v1, :cond_13

    check-cast v0, Landroid/app/IWallpaperManagerCallbackNative;

    return-object v0

    :cond_13
    new-instance v0, Landroid/app/IWallpaperManagerCallbackNative$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/app/IWallpaperManagerCallbackNative$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/app/IWallpaperManagerCallbackNative;
    .registers 1

    sget-object v0, Landroid/app/IWallpaperManagerCallbackNative$Stub$Proxy;->sDefaultImpl:Landroid/app/IWallpaperManagerCallbackNative;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/app/IWallpaperManagerCallbackNative;)Z
    .registers 2

    sget-object v0, Landroid/app/IWallpaperManagerCallbackNative$Stub$Proxy;->sDefaultImpl:Landroid/app/IWallpaperManagerCallbackNative;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Landroid/app/IWallpaperManagerCallbackNative$Stub$Proxy;->sDefaultImpl:Landroid/app/IWallpaperManagerCallbackNative;

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "setDefaultImpl() called twice"

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

    const-string v1, "android.app.IWallpaperManagerCallbackNative"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_3e

    if-eq p1, v0, :cond_34

    const/4 v2, 0x2

    if-eq p1, v2, :cond_12

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_24

    sget-object p1, Landroid/app/WallpaperColors;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/WallpaperColors;

    goto :goto_25

    :cond_24
    const/4 p1, 0x0

    :goto_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p4, p2}, Landroid/app/IWallpaperManagerCallbackNative;->onWallpaperColorsChanged(Landroid/app/WallpaperColors;II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    :cond_34
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Landroid/app/IWallpaperManagerCallbackNative;->onWallpaperChanged()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    :cond_3e
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
