.class public Lcom/oplus/compat/net/INetworkStatsSessionNative;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/compat/net/INetworkStatsSessionNative$ReflectInfo;
    }
.end annotation


# static fields
.field private static final COMPONENT_NAME:Ljava/lang/String; = "android.net.INetworkStatsSession"

.field private static final RESULT:Ljava/lang/String; = "result"

.field private static final TAG:Ljava/lang/String; = "INetworkStatsSessionNative"


# instance fields
.field private mINetworkStatsSession:Landroid/net/INetworkStatsSession;

.field private mINetworkStatsSessionWrapper:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/compat/net/INetworkStatsSessionNative;->mINetworkStatsSessionWrapper:Ljava/lang/Object;

    iput-object v0, p0, Lcom/oplus/compat/net/INetworkStatsSessionNative;->mINetworkStatsSession:Landroid/net/INetworkStatsSession;

    return-void
.end method

.method public constructor <init>(Landroid/net/INetworkStatsSession;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/compat/net/INetworkStatsSessionNative;->mINetworkStatsSessionWrapper:Ljava/lang/Object;

    iput-object v0, p0, Lcom/oplus/compat/net/INetworkStatsSessionNative;->mINetworkStatsSession:Landroid/net/INetworkStatsSession;

    iput-object p1, p0, Lcom/oplus/compat/net/INetworkStatsSessionNative;->mINetworkStatsSession:Landroid/net/INetworkStatsSession;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/compat/net/INetworkStatsSessionNative;->mINetworkStatsSessionWrapper:Ljava/lang/Object;

    iput-object v0, p0, Lcom/oplus/compat/net/INetworkStatsSessionNative;->mINetworkStatsSession:Landroid/net/INetworkStatsSession;

    iput-object p1, p0, Lcom/oplus/compat/net/INetworkStatsSessionNative;->mINetworkStatsSessionWrapper:Ljava/lang/Object;

    return-void
.end method

.method private static closeQCompat(Ljava/lang/Object;)V
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    return-void
.end method

.method private static getNetWorkStatsQCompat(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getNetWorkStatsQCompat(Ljava/lang/Object;Ljava/lang/Object;JJ)Ljava/lang/Object;
    .registers 6
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LongLogTag"
        }
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/oplus/compat/net/INetworkStatsSessionNative;->mINetworkStatsSessionWrapper:Ljava/lang/Object;

    invoke-static {p0}, Lcom/oplus/compat/net/INetworkStatsSessionNative;->closeQCompat(Ljava/lang/Object;)V

    goto :goto_1e

    :cond_13
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isP()Z

    move-result v0

    if-eqz v0, :cond_21

    :try_start_19
    iget-object p0, p0, Lcom/oplus/compat/net/INetworkStatsSessionNative;->mINetworkStatsSession:Landroid/net/INetworkStatsSession;

    invoke-interface {p0}, Landroid/net/INetworkStatsSession;->close()V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1e} :catch_1f

    :goto_1e
    return-void

    :catch_1f
    move-exception p0

    throw p0

    :cond_21
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method

.method public getDeviceSummaryForNetwork(Lcom/oplus/compat/net/NetworkTemplateNative;JJ)Lcom/oplus/compat/net/NetworkStatsNative;
    .registers 14
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/PrivilegedApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_51

    new-instance p0, Lcom/oplus/epona/Request$Builder;

    invoke-direct {p0}, Lcom/oplus/epona/Request$Builder;-><init>()V

    const-string v0, "android.net.INetworkStatsSession"

    invoke-virtual {p0, v0}, Lcom/oplus/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    const-string v0, "getDeviceSummaryForNetwork"

    invoke-virtual {p0, v0}, Lcom/oplus/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    iget-object p1, p1, Lcom/oplus/compat/net/NetworkTemplateNative;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    const-string v0, "networkTemplate"

    invoke-virtual {p0, v0, p1}, Lcom/oplus/epona/Request$Builder;->withParcelable(Ljava/lang/String;Landroid/os/Parcelable;)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    const-string p1, "start"

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/epona/Request$Builder;->withLong(Ljava/lang/String;J)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    const-string p1, "end"

    invoke-virtual {p0, p1, p4, p5}, Lcom/oplus/epona/Request$Builder;->withLong(Ljava/lang/String;J)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/Request$Builder;->build()Lcom/oplus/epona/Request;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/epona/Epona;->newCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/internal/RealCall;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/internal/RealCall;->execute()Lcom/oplus/epona/Response;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_50

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "result"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/NetworkStats;

    new-instance p1, Lcom/oplus/compat/net/NetworkStatsNative;

    invoke-direct {p1, p0}, Lcom/oplus/compat/net/NetworkStatsNative;-><init>(Landroid/net/NetworkStats;)V

    return-object p1

    :cond_50
    return-object v1

    :cond_51
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-object v2, p0, Lcom/oplus/compat/net/INetworkStatsSessionNative;->mINetworkStatsSessionWrapper:Ljava/lang/Object;

    iget-object v3, p1, Lcom/oplus/compat/net/NetworkTemplateNative;->mNetworkTemplateWrapper:Ljava/lang/Object;

    move-wide v4, p2

    move-wide v6, p4

    invoke-static/range {v2 .. v7}, Lcom/oplus/compat/net/INetworkStatsSessionNative;->getNetWorkStatsQCompat(Ljava/lang/Object;Ljava/lang/Object;JJ)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_64

    return-object v1

    :cond_64
    new-instance p1, Lcom/oplus/compat/net/NetworkStatsNative;

    invoke-direct {p1, p0}, Lcom/oplus/compat/net/NetworkStatsNative;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_6a
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isP()Z

    move-result v0

    if-eqz v0, :cond_9b

    invoke-static {}, Lcom/oplus/compat/net/INetworkStatsSessionNative$ReflectInfo;->access$100()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/compat/net/INetworkStatsSessionNative;->mINetworkStatsSession:Landroid/net/INetworkStatsSession;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object p1, p1, Lcom/oplus/compat/net/NetworkTemplateNative;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v2, p1

    invoke-virtual {v0, p0, v2}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/NetworkStats;

    if-nez p0, :cond_95

    return-object v1

    :cond_95
    new-instance p1, Lcom/oplus/compat/net/NetworkStatsNative;

    invoke-direct {p1, p0}, Lcom/oplus/compat/net/NetworkStatsNative;-><init>(Landroid/net/NetworkStats;)V

    return-object p1

    :cond_9b
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "not supported before P"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getIncrementForNetwork(Lcom/oplus/compat/net/NetworkTemplateNative;)Lcom/oplus/compat/net/NetworkStatsNative;
    .registers 6
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-nez v0, :cond_49

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    iget-object p0, p0, Lcom/oplus/compat/net/INetworkStatsSessionNative;->mINetworkStatsSessionWrapper:Ljava/lang/Object;

    iget-object p1, p1, Lcom/oplus/compat/net/NetworkTemplateNative;->mNetworkTemplateWrapper:Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/oplus/compat/net/INetworkStatsSessionNative;->getNetWorkStatsQCompat(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_18

    return-object v1

    :cond_18
    new-instance p1, Lcom/oplus/compat/net/NetworkStatsNative;

    invoke-direct {p1, p0}, Lcom/oplus/compat/net/NetworkStatsNative;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_1e
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isP()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-static {}, Lcom/oplus/compat/net/INetworkStatsSessionNative$ReflectInfo;->access$000()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/compat/net/INetworkStatsSessionNative;->mINetworkStatsSession:Landroid/net/INetworkStatsSession;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object p1, p1, Lcom/oplus/compat/net/NetworkTemplateNative;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    aput-object p1, v2, v3

    invoke-virtual {v0, p0, v2}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/NetworkStats;

    if-nez p0, :cond_3b

    return-object v1

    :cond_3b
    new-instance p1, Lcom/oplus/compat/net/NetworkStatsNative;

    invoke-direct {p1, p0}, Lcom/oplus/compat/net/NetworkStatsNative;-><init>(Landroid/net/NetworkStats;)V

    return-object p1

    :cond_41
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "not supported before P"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_49
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "not supported in R"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
