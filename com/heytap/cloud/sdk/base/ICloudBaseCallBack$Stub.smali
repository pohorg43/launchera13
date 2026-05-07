.class public abstract Lcom/heytap/cloud/sdk/base/ICloudBaseCallBack$Stub;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lcom/heytap/cloud/sdk/base/ICloudBaseCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/cloud/sdk/base/ICloudBaseCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/cloud/sdk/base/ICloudBaseCallBack$Stub$a;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.heytap.cloud.sdk.base.ICloudBaseCallBack"

.field public static final TRANSACTION_cloudServiceCallBack:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.heytap.cloud.sdk.base.ICloudBaseCallBack"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/heytap/cloud/sdk/base/ICloudBaseCallBack;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.heytap.cloud.sdk.base.ICloudBaseCallBack"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/heytap/cloud/sdk/base/ICloudBaseCallBack;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/heytap/cloud/sdk/base/ICloudBaseCallBack;

    return-object v0

    :cond_13
    new-instance v0, Lcom/heytap/cloud/sdk/base/ICloudBaseCallBack$Stub$a;

    invoke-direct {v0, p0}, Lcom/heytap/cloud/sdk/base/ICloudBaseCallBack$Stub$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/heytap/cloud/sdk/base/ICloudBaseCallBack;
    .registers 1

    sget-object v0, Lcom/heytap/cloud/sdk/base/ICloudBaseCallBack$Stub$a;->b:Lcom/heytap/cloud/sdk/base/ICloudBaseCallBack;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/heytap/cloud/sdk/base/ICloudBaseCallBack;)Z
    .registers 2

    sget-object v0, Lcom/heytap/cloud/sdk/base/ICloudBaseCallBack$Stub$a;->b:Lcom/heytap/cloud/sdk/base/ICloudBaseCallBack;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Lcom/heytap/cloud/sdk/base/ICloudBaseCallBack$Stub$a;->b:Lcom/heytap/cloud/sdk/base/ICloudBaseCallBack;

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

    const-string v1, "com.heytap.cloud.sdk.base.ICloudBaseCallBack"

    if-eq p1, v0, :cond_13

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_f

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_f
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :cond_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/heytap/cloud/sdk/base/ICloudBaseCallBack;->cloudServiceCallBack(Ljava/util/Map;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
