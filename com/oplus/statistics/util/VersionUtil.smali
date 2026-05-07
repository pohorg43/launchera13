.class public Lcom/oplus/statistics/util/VersionUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DCS_PKG_NAME:Ljava/lang/String;

.field private static final SUPPORT_CONTENT_PROVIDER_VERSION:I = 0x50df20

.field private static final SUPPORT_PERIOD_DATA_VERSION:I = 0x4e1830

.field private static final TAG:Ljava/lang/String; = "VersionUtil"

.field private static final UNINSTALL_APP_FLAG:I = -0x1


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/lang/String;

    const-string v1, "Y29tLm5lYXJtZS5zdGF0aXN0aWNzLnJvbQ=="

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sput-object v0, Lcom/oplus/statistics/util/VersionUtil;->DCS_PKG_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/pm/PackageManager$NameNotFoundException;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/oplus/statistics/util/VersionUtil;->lambda$getDataCollectionAppVersion$0(Landroid/content/pm/PackageManager$NameNotFoundException;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDataCollectionAppVersion(Landroid/content/Context;)J
    .registers 3
    .param p0  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    sget-object v0, Lcom/oplus/statistics/util/VersionUtil;->DCS_PKG_NAME:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_f} :catch_10

    return-wide v0

    :catch_10
    move-exception p0

    new-instance v0, Lcom/oplus/statistics/record/a;

    invoke-direct {v0, p0}, Lcom/oplus/statistics/record/a;-><init>(Landroid/content/pm/PackageManager$NameNotFoundException;)V

    const-string p0, "VersionUtil"

    invoke-static {p0, v0}, Lcom/oplus/statistics/util/LogUtil;->w(Ljava/lang/String;Lcom/oplus/statistics/util/Supplier;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static isContentProviderRecorder(Landroid/content/Context;)Z
    .registers 1
    .param p0  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/oplus/statistics/record/ContentProviderRecorder;->isSupport(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isSupportPeriodData(Landroid/content/Context;)Z
    .registers 5
    .param p0  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/oplus/statistics/util/VersionUtil;->getDataCollectionAppVersion(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/32 v2, 0x4e1830

    cmp-long p0, v0, v2

    if-gez p0, :cond_14

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_12

    goto :goto_14

    :cond_12
    const/4 p0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 p0, 0x1

    :goto_15
    return p0
.end method

.method private static synthetic lambda$getDataCollectionAppVersion$0(Landroid/content/pm/PackageManager$NameNotFoundException;)Ljava/lang/String;
    .registers 2

    const-string v0, "getDataCollectionAppVersion exception: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
