.class public Lcom/oplus/compat/net/NetworkStatsNative;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/compat/net/NetworkStatsNative$EntryNative;
    }
.end annotation


# instance fields
.field private mNetworkStats:Landroid/net/NetworkStats;

.field private mNetworkStatsWrapper:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/net/NetworkStats;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/compat/net/NetworkStatsNative;->mNetworkStats:Landroid/net/NetworkStats;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/compat/net/NetworkStatsNative;->mNetworkStatsWrapper:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic access$400(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1

    invoke-static {p0}, Lcom/oplus/compat/net/NetworkStatsNative;->getRxBytesQCompat(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$500(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1

    invoke-static {p0}, Lcom/oplus/compat/net/NetworkStatsNative;->getTxBytesQCompat(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static getEntryQCompat(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getRxBytesQCompat(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getTotalBytesQCompat(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getTxBytesQCompat(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method private static sizeQCompat(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getTotalBytes()J
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/oplus/compat/net/NetworkStatsNative;->mNetworkStats:Landroid/net/NetworkStats;

    invoke-virtual {p0}, Landroid/net/NetworkStats;->getTotalBytes()J

    move-result-wide v0

    return-wide v0

    :cond_d
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object p0, p0, Lcom/oplus/compat/net/NetworkStatsNative;->mNetworkStatsWrapper:Ljava/lang/Object;

    invoke-static {p0}, Lcom/oplus/compat/net/NetworkStatsNative;->getTotalBytesQCompat(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_20
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isP()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object p0, p0, Lcom/oplus/compat/net/NetworkStatsNative;->mNetworkStats:Landroid/net/NetworkStats;

    invoke-virtual {p0}, Landroid/net/NetworkStats;->getTotalBytes()J

    move-result-wide v0

    return-wide v0

    :cond_2d
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method

.method public getValues(ILcom/oplus/compat/net/NetworkStatsNative$EntryNative;)Lcom/oplus/compat/net/NetworkStatsNative$EntryNative;
    .registers 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    iget-object p0, p0, Lcom/oplus/compat/net/NetworkStatsNative;->mNetworkStats:Landroid/net/NetworkStats;

    if-nez p2, :cond_d

    move-object p2, v1

    goto :goto_11

    :cond_d
    invoke-static {p2}, Lcom/oplus/compat/net/NetworkStatsNative$EntryNative;->access$000(Lcom/oplus/compat/net/NetworkStatsNative$EntryNative;)Landroid/net/NetworkStats$Entry;

    move-result-object p2

    :goto_11
    invoke-virtual {p0, p1, p2}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object p0

    new-instance p1, Lcom/oplus/compat/net/NetworkStatsNative$EntryNative;

    invoke-direct {p1, p0, v1}, Lcom/oplus/compat/net/NetworkStatsNative$EntryNative;-><init>(Landroid/net/NetworkStats$Entry;Lcom/oplus/compat/net/NetworkStatsNative$1;)V

    return-object p1

    :cond_1b
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_35

    new-instance v0, Lcom/oplus/compat/net/NetworkStatsNative$EntryNative;

    iget-object p0, p0, Lcom/oplus/compat/net/NetworkStatsNative;->mNetworkStatsWrapper:Ljava/lang/Object;

    if-nez p2, :cond_29

    move-object p2, v1

    goto :goto_2d

    :cond_29
    invoke-static {p2}, Lcom/oplus/compat/net/NetworkStatsNative$EntryNative;->access$200(Lcom/oplus/compat/net/NetworkStatsNative$EntryNative;)Ljava/lang/Object;

    move-result-object p2

    :goto_2d
    invoke-static {p0, p1, p2}, Lcom/oplus/compat/net/NetworkStatsNative;->getEntryQCompat(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Lcom/oplus/compat/net/NetworkStatsNative$EntryNative;-><init>(Ljava/lang/Object;Lcom/oplus/compat/net/NetworkStatsNative$1;)V

    return-object v0

    :cond_35
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isP()Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object p0, p0, Lcom/oplus/compat/net/NetworkStatsNative;->mNetworkStats:Landroid/net/NetworkStats;

    if-nez p2, :cond_41

    move-object p2, v1

    goto :goto_45

    :cond_41
    invoke-static {p2}, Lcom/oplus/compat/net/NetworkStatsNative$EntryNative;->access$000(Lcom/oplus/compat/net/NetworkStatsNative$EntryNative;)Landroid/net/NetworkStats$Entry;

    move-result-object p2

    :goto_45
    invoke-virtual {p0, p1, p2}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object p0

    new-instance p1, Lcom/oplus/compat/net/NetworkStatsNative$EntryNative;

    invoke-direct {p1, p0, v1}, Lcom/oplus/compat/net/NetworkStatsNative$EntryNative;-><init>(Landroid/net/NetworkStats$Entry;Lcom/oplus/compat/net/NetworkStatsNative$1;)V

    return-object p1

    :cond_4f
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method

.method public size()I
    .registers 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/oplus/compat/net/NetworkStatsNative;->mNetworkStats:Landroid/net/NetworkStats;

    invoke-virtual {p0}, Landroid/net/NetworkStats;->size()I

    move-result p0

    return p0

    :cond_d
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object p0, p0, Lcom/oplus/compat/net/NetworkStatsNative;->mNetworkStatsWrapper:Ljava/lang/Object;

    invoke-static {p0}, Lcom/oplus/compat/net/NetworkStatsNative;->sizeQCompat(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_20
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isP()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object p0, p0, Lcom/oplus/compat/net/NetworkStatsNative;->mNetworkStats:Landroid/net/NetworkStats;

    invoke-virtual {p0}, Landroid/net/NetworkStats;->size()I

    move-result p0

    return p0

    :cond_2d
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method
