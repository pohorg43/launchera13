.class public Lcom/oplus/compat/net/INetworkStatsServiceNative;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "INetworkStatsServiceNative"


# direct methods
.method public constructor <init>()V
    .registers 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static openSession()Lcom/oplus/compat/net/INetworkStatsSessionNative;
    .registers 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/oplus/compat/net/INetworkStatsSessionNative;

    invoke-direct {v0}, Lcom/oplus/compat/net/INetworkStatsSessionNative;-><init>()V

    return-object v0

    :cond_c
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance v0, Lcom/oplus/compat/net/INetworkStatsSessionNative;

    invoke-static {}, Lcom/oplus/compat/net/INetworkStatsServiceNative;->openSessionQCompat()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/compat/net/INetworkStatsSessionNative;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_1c
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isP()Z

    move-result v0

    if-eqz v0, :cond_36

    const-string v0, "netstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    new-instance v1, Lcom/oplus/compat/net/INetworkStatsSessionNative;

    invoke-interface {v0}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/oplus/compat/net/INetworkStatsSessionNative;-><init>(Landroid/net/INetworkStatsSession;)V

    return-object v1

    :cond_36
    new-instance v0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method private static openSessionQCompat()Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
