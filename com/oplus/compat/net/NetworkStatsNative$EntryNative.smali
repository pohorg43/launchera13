.class public Lcom/oplus/compat/net/NetworkStatsNative$EntryNative;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/net/NetworkStatsNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EntryNative"
.end annotation


# instance fields
.field private mEntry:Landroid/net/NetworkStats$Entry;

.field private mEntryWrapper:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/net/NetworkStats$Entry;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/compat/net/NetworkStatsNative$EntryNative;->mEntry:Landroid/net/NetworkStats$Entry;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/net/NetworkStats$Entry;Lcom/oplus/compat/net/NetworkStatsNative$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/oplus/compat/net/NetworkStatsNative$EntryNative;-><init>(Landroid/net/NetworkStats$Entry;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/compat/net/NetworkStatsNative$EntryNative;->mEntryWrapper:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lcom/oplus/compat/net/NetworkStatsNative$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/oplus/compat/net/NetworkStatsNative$EntryNative;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/oplus/compat/net/NetworkStatsNative$EntryNative;)Landroid/net/NetworkStats$Entry;
    .registers 1

    iget-object p0, p0, Lcom/oplus/compat/net/NetworkStatsNative$EntryNative;->mEntry:Landroid/net/NetworkStats$Entry;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/oplus/compat/net/NetworkStatsNative$EntryNative;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/oplus/compat/net/NetworkStatsNative$EntryNative;->mEntryWrapper:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public getRxBytes()J
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

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/oplus/compat/net/NetworkStatsNative$EntryNative;->mEntry:Landroid/net/NetworkStats$Entry;

    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    return-wide v0

    :cond_b
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object p0, p0, Lcom/oplus/compat/net/NetworkStatsNative$EntryNative;->mEntryWrapper:Ljava/lang/Object;

    invoke-static {p0}, Lcom/oplus/compat/net/NetworkStatsNative;->access$400(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_1e
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isP()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object p0, p0, Lcom/oplus/compat/net/NetworkStatsNative$EntryNative;->mEntry:Landroid/net/NetworkStats$Entry;

    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    return-wide v0

    :cond_29
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method

.method public getTxBytes()J
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

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/oplus/compat/net/NetworkStatsNative$EntryNative;->mEntry:Landroid/net/NetworkStats$Entry;

    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->txBytes:J

    return-wide v0

    :cond_b
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object p0, p0, Lcom/oplus/compat/net/NetworkStatsNative$EntryNative;->mEntryWrapper:Ljava/lang/Object;

    invoke-static {p0}, Lcom/oplus/compat/net/NetworkStatsNative;->access$500(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_1e
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isP()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object p0, p0, Lcom/oplus/compat/net/NetworkStatsNative$EntryNative;->mEntry:Landroid/net/NetworkStats$Entry;

    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->txBytes:J

    return-wide v0

    :cond_29
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method
