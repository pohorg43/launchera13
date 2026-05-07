.class public abstract Lcom/oplus/epona/IRemoteTransfer$Stub;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lcom/oplus/epona/IRemoteTransfer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/epona/IRemoteTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/epona/IRemoteTransfer$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_asyncCall:I = 0x2

.field public static final TRANSACTION_call:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.oplus.epona.IRemoteTransfer"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/oplus/epona/IRemoteTransfer;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.oplus.epona.IRemoteTransfer"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/oplus/epona/IRemoteTransfer;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/oplus/epona/IRemoteTransfer;

    return-object v0

    :cond_13
    new-instance v0, Lcom/oplus/epona/IRemoteTransfer$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/oplus/epona/IRemoteTransfer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/oplus/epona/IRemoteTransfer;
    .registers 1

    sget-object v0, Lcom/oplus/epona/IRemoteTransfer$Stub$Proxy;->sDefaultImpl:Lcom/oplus/epona/IRemoteTransfer;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/oplus/epona/IRemoteTransfer;)Z
    .registers 2

    sget-object v0, Lcom/oplus/epona/IRemoteTransfer$Stub$Proxy;->sDefaultImpl:Lcom/oplus/epona/IRemoteTransfer;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Lcom/oplus/epona/IRemoteTransfer$Stub$Proxy;->sDefaultImpl:Lcom/oplus/epona/IRemoteTransfer;

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
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.oplus.epona.IRemoteTransfer"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_5b

    const/4 v2, 0x0

    if-eq p1, v0, :cond_34

    const/4 v3, 0x2

    if-eq p1, v3, :cond_13

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_25

    sget-object p1, Lcom/oplus/epona/Request;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/oplus/epona/Request;

    :cond_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/epona/ITransferCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/epona/ITransferCallback;

    move-result-object p1

    invoke-interface {p0, v2, p1}, Lcom/oplus/epona/IRemoteTransfer;->asyncCall(Lcom/oplus/epona/Request;Lcom/oplus/epona/ITransferCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    :cond_34
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_46

    sget-object p1, Lcom/oplus/epona/Request;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/oplus/epona/Request;

    :cond_46
    invoke-interface {p0, v2}, Lcom/oplus/epona/IRemoteTransfer;->call(Lcom/oplus/epona/Request;)Lcom/oplus/epona/Response;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_56

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, p3, v0}, Lcom/oplus/epona/Response;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5a

    :cond_56
    const/4 p0, 0x0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5a
    return v0

    :cond_5b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
