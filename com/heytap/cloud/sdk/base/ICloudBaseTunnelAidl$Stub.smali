.class public abstract Lcom/heytap/cloud/sdk/base/ICloudBaseTunnelAidl$Stub;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lcom/heytap/cloud/sdk/base/ICloudBaseTunnelAidl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/cloud/sdk/base/ICloudBaseTunnelAidl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/cloud/sdk/base/ICloudBaseTunnelAidl$Stub$a;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.heytap.cloud.sdk.base.ICloudBaseTunnelAidl"

.field public static final TRANSACTION_execute:I = 0x1

.field public static final TRANSACTION_execute1:I = 0x2

.field public static final TRANSACTION_execute2:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.heytap.cloud.sdk.base.ICloudBaseTunnelAidl"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/heytap/cloud/sdk/base/ICloudBaseTunnelAidl;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.heytap.cloud.sdk.base.ICloudBaseTunnelAidl"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/heytap/cloud/sdk/base/ICloudBaseTunnelAidl;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/heytap/cloud/sdk/base/ICloudBaseTunnelAidl;

    return-object v0

    :cond_13
    new-instance v0, Lcom/heytap/cloud/sdk/base/ICloudBaseTunnelAidl$Stub$a;

    invoke-direct {v0, p0}, Lcom/heytap/cloud/sdk/base/ICloudBaseTunnelAidl$Stub$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/heytap/cloud/sdk/base/ICloudBaseTunnelAidl;
    .registers 1

    sget-object v0, Lcom/heytap/cloud/sdk/base/ICloudBaseTunnelAidl$Stub$a;->b:Lcom/heytap/cloud/sdk/base/ICloudBaseTunnelAidl;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/heytap/cloud/sdk/base/ICloudBaseTunnelAidl;)Z
    .registers 2

    sget-object v0, Lcom/heytap/cloud/sdk/base/ICloudBaseTunnelAidl$Stub$a;->b:Lcom/heytap/cloud/sdk/base/ICloudBaseTunnelAidl;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Lcom/heytap/cloud/sdk/base/ICloudBaseTunnelAidl$Stub$a;->b:Lcom/heytap/cloud/sdk/base/ICloudBaseTunnelAidl;

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

    const-string v1, "com.heytap.cloud.sdk.base.ICloudBaseTunnelAidl"

    if-eq p1, v0, :cond_6c

    const/4 v2, 0x2

    if-eq p1, v2, :cond_43

    const/4 v2, 0x3

    if-eq p1, v2, :cond_19

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_15

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_15
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :cond_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/heytap/cloud/sdk/base/ICloudBaseCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/heytap/cloud/sdk/base/ICloudBaseCallBack;

    move-result-object p2

    invoke-interface {p0, p1, p4, v1, p2}, Lcom/heytap/cloud/sdk/base/ICloudBaseTunnelAidl;->execute2(Ljava/lang/String;ILjava/util/Map;Lcom/heytap/cloud/sdk/base/ICloudBaseCallBack;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    :cond_43
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object p2

    invoke-interface {p0, p1, p4, v2, p2}, Lcom/heytap/cloud/sdk/base/ICloudBaseTunnelAidl;->execute1(Ljava/lang/String;ILjava/util/Map;Ljava/util/Map;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    return v0

    :cond_6c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object p2

    invoke-interface {p0, p1, p4, p2}, Lcom/heytap/cloud/sdk/base/ICloudBaseTunnelAidl;->execute(Ljava/lang/String;ILjava/util/Map;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method
