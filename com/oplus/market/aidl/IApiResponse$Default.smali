.class public Lcom/oplus/market/aidl/IApiResponse$Default;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/market/aidl/IApiResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/market/aidl/IApiResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public onResponse(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
