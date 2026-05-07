.class public Lcom/heytap/cloud/sdk/base/ICloudBaseCallBack$Stub$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/heytap/cloud/sdk/base/ICloudBaseCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/cloud/sdk/base/ICloudBaseCallBack$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static b:Lcom/heytap/cloud/sdk/base/ICloudBaseCallBack;


# instance fields
.field public a:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/heytap/cloud/sdk/base/ICloudBaseCallBack$Stub$a;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/heytap/cloud/sdk/base/ICloudBaseCallBack$Stub$a;->a:Landroid/os/IBinder;

    return-object p0
.end method

.method public cloudServiceCallBack(Ljava/util/Map;)V
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
    const-string v2, "com.heytap.cloud.sdk.base.ICloudBaseCallBack"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    iget-object p0, p0, Lcom/heytap/cloud/sdk/base/ICloudBaseCallBack$Stub$a;->a:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_2e

    invoke-static {}, Lcom/heytap/cloud/sdk/base/ICloudBaseCallBack$Stub;->getDefaultImpl()Lcom/heytap/cloud/sdk/base/ICloudBaseCallBack;

    move-result-object p0

    if-eqz p0, :cond_2e

    invoke-static {}, Lcom/heytap/cloud/sdk/base/ICloudBaseCallBack$Stub;->getDefaultImpl()Lcom/heytap/cloud/sdk/base/ICloudBaseCallBack;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/heytap/cloud/sdk/base/ICloudBaseCallBack;->cloudServiceCallBack(Ljava/util/Map;)V
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_38

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2e
    :try_start_2e
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_38

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_38
    move-exception p0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method
