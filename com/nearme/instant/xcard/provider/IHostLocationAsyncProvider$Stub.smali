.class public abstract Lcom/nearme/instant/xcard/provider/IHostLocationAsyncProvider$Stub;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lcom/nearme/instant/xcard/provider/IHostLocationAsyncProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nearme/instant/xcard/provider/IHostLocationAsyncProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nearme/instant/xcard/provider/IHostLocationAsyncProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_getLocation:I = 0x1

.field public static final TRANSACTION_getLocationCardInfo:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.nearme.instant.xcard.provider.IHostLocationAsyncProvider"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/nearme/instant/xcard/provider/IHostLocationAsyncProvider;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.nearme.instant.xcard.provider.IHostLocationAsyncProvider"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/nearme/instant/xcard/provider/IHostLocationAsyncProvider;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/nearme/instant/xcard/provider/IHostLocationAsyncProvider;

    return-object v0

    :cond_13
    new-instance v0, Lcom/nearme/instant/xcard/provider/IHostLocationAsyncProvider$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/nearme/instant/xcard/provider/IHostLocationAsyncProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
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

    const-string v1, "com.nearme.instant.xcard.provider.IHostLocationAsyncProvider"

    if-lt p1, v0, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_4e

    if-eq p1, v0, :cond_3b

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1c

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/nearme/instant/xcard/provider/ILocationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nearme/instant/xcard/provider/ILocationCallback;

    move-result-object p4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object p2

    invoke-interface {p0, p1, p4, p2}, Lcom/nearme/instant/xcard/provider/IHostLocationAsyncProvider;->getLocationCardInfo(ILcom/nearme/instant/xcard/provider/ILocationCallback;Ljava/util/Map;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_4d

    :cond_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/nearme/instant/xcard/provider/ILocationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nearme/instant/xcard/provider/ILocationCallback;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/nearme/instant/xcard/provider/IHostLocationAsyncProvider;->getLocation(ILcom/nearme/instant/xcard/provider/ILocationCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_4d
    return v0

    :cond_4e
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
