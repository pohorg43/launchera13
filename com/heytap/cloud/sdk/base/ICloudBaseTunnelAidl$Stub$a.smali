.class public Lcom/heytap/cloud/sdk/base/ICloudBaseTunnelAidl$Stub$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/heytap/cloud/sdk/base/ICloudBaseTunnelAidl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/cloud/sdk/base/ICloudBaseTunnelAidl$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static b:Lcom/heytap/cloud/sdk/base/ICloudBaseTunnelAidl;


# instance fields
.field public a:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/heytap/cloud/sdk/base/ICloudBaseTunnelAidl$Stub$a;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/heytap/cloud/sdk/base/ICloudBaseTunnelAidl$Stub$a;->a:Landroid/os/IBinder;

    return-object p0
.end method

.method public execute(Ljava/lang/String;ILjava/util/Map;)Z
    .registers 8
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
    const-string v2, "com.heytap.cloud.sdk.base.ICloudBaseTunnelAidl"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    iget-object p0, p0, Lcom/heytap/cloud/sdk/base/ICloudBaseTunnelAidl$Stub$a;->a:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_35

    invoke-static {}, Lcom/heytap/cloud/sdk/base/ICloudBaseTunnelAidl$Stub;->getDefaultImpl()Lcom/heytap/cloud/sdk/base/ICloudBaseTunnelAidl;

    move-result-object p0

    if-eqz p0, :cond_35

    invoke-static {}, Lcom/heytap/cloud/sdk/base/ICloudBaseTunnelAidl$Stub;->getDefaultImpl()Lcom/heytap/cloud/sdk/base/ICloudBaseTunnelAidl;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/heytap/cloud/sdk/base/ICloudBaseTunnelAidl;->execute(Ljava/lang/String;ILjava/util/Map;)Z

    move-result p0
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_46

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :cond_35
    :try_start_35
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_46

    if-eqz p0, :cond_3f

    move v2, v3

    :cond_3f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_46
    move-exception p0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public execute1(Ljava/lang/String;ILjava/util/Map;Ljava/util/Map;)Z
    .registers 9
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
    const-string v2, "com.heytap.cloud.sdk.base.ICloudBaseTunnelAidl"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    iget-object p0, p0, Lcom/heytap/cloud/sdk/base/ICloudBaseTunnelAidl$Stub$a;->a:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_38

    invoke-static {}, Lcom/heytap/cloud/sdk/base/ICloudBaseTunnelAidl$Stub;->getDefaultImpl()Lcom/heytap/cloud/sdk/base/ICloudBaseTunnelAidl;

    move-result-object p0

    if-eqz p0, :cond_38

    invoke-static {}, Lcom/heytap/cloud/sdk/base/ICloudBaseTunnelAidl$Stub;->getDefaultImpl()Lcom/heytap/cloud/sdk/base/ICloudBaseTunnelAidl;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/heytap/cloud/sdk/base/ICloudBaseTunnelAidl;->execute1(Ljava/lang/String;ILjava/util/Map;Ljava/util/Map;)Z

    move-result p0
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_52

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :cond_38
    :try_start_38
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_42

    const/4 v3, 0x1

    :cond_42
    const-class p0, Lcom/heytap/cloud/sdk/base/ICloudBaseTunnelAidl$Stub$a;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;
    :try_end_4b
    .catchall {:try_start_38 .. :try_end_4b} :catchall_52

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_52
    move-exception p0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public execute2(Ljava/lang/String;ILjava/util/Map;Lcom/heytap/cloud/sdk/base/ICloudBaseCallBack;)Z
    .registers 9
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
    const-string v2, "com.heytap.cloud.sdk.base.ICloudBaseTunnelAidl"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    if-eqz p4, :cond_1d

    invoke-interface {p4}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object p0, p0, Lcom/heytap/cloud/sdk/base/ICloudBaseTunnelAidl$Stub$a;->a:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_40

    invoke-static {}, Lcom/heytap/cloud/sdk/base/ICloudBaseTunnelAidl$Stub;->getDefaultImpl()Lcom/heytap/cloud/sdk/base/ICloudBaseTunnelAidl;

    move-result-object p0

    if-eqz p0, :cond_40

    invoke-static {}, Lcom/heytap/cloud/sdk/base/ICloudBaseTunnelAidl$Stub;->getDefaultImpl()Lcom/heytap/cloud/sdk/base/ICloudBaseTunnelAidl;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/heytap/cloud/sdk/base/ICloudBaseTunnelAidl;->execute2(Ljava/lang/String;ILjava/util/Map;Lcom/heytap/cloud/sdk/base/ICloudBaseCallBack;)Z

    move-result p0
    :try_end_39
    .catchall {:try_start_8 .. :try_end_39} :catchall_51

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :cond_40
    :try_start_40
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_51

    if-eqz p0, :cond_4a

    const/4 v3, 0x1

    :cond_4a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_51
    move-exception p0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method
