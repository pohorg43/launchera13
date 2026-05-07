.class public Lcom/oplus/statistics/OTrackContext;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "OTrackContext"

.field private static sTrackContextMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/statistics/OTrackContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAppId:Ljava/lang/String;

.field private mConfig:Lcom/oplus/statistics/OTrackConfig;

.field private final mContext:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oplus/statistics/OTrackContext;->sTrackContextMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/oplus/statistics/OTrackConfig;)V
    .registers 4
    .param p2  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Lcom/oplus/statistics/OTrackConfig;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/statistics/OTrackContext;->mAppId:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/statistics/OTrackContext;->mContext:Landroid/content/Context;

    if-eqz p3, :cond_e

    invoke-direct {p0, p2, p3}, Lcom/oplus/statistics/OTrackContext;->createDefaultConfig(Landroid/content/Context;Lcom/oplus/statistics/OTrackConfig;)Lcom/oplus/statistics/OTrackConfig;

    move-result-object p1

    goto :goto_12

    :cond_e
    invoke-direct {p0, p2}, Lcom/oplus/statistics/OTrackContext;->createDefaultConfig(Landroid/content/Context;)Lcom/oplus/statistics/OTrackConfig;

    move-result-object p1

    :goto_12
    iput-object p1, p0, Lcom/oplus/statistics/OTrackContext;->mConfig:Lcom/oplus/statistics/OTrackConfig;

    return-void
.end method

.method public static synthetic a()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/oplus/statistics/OTrackContext;->lambda$createDefaultConfig$0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createDefaultConfig(Landroid/content/Context;)Lcom/oplus/statistics/OTrackConfig;
    .registers 4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    :try_start_4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_d} :catch_e

    goto :goto_16

    :catch_e
    sget-object p1, Landroidx/room/f;->k:Landroidx/room/f;

    const-string v0, "OTrackContext"

    invoke-static {v0, p1}, Lcom/oplus/statistics/util/LogUtil;->w(Ljava/lang/String;Lcom/oplus/statistics/util/Supplier;)V

    const/4 p1, 0x0

    :goto_16
    if-nez p1, :cond_1b

    sget-object p0, Lcom/oplus/statistics/OTrackConfig;->DUMMY:Lcom/oplus/statistics/OTrackConfig;

    return-object p0

    :cond_1b
    new-instance v0, Lcom/oplus/statistics/OTrackConfig$Builder;

    invoke-direct {v0}, Lcom/oplus/statistics/OTrackConfig$Builder;-><init>()V

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oplus/statistics/OTrackConfig$Builder;->setPackageName(Ljava/lang/String;)Lcom/oplus/statistics/OTrackConfig$Builder;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oplus/statistics/OTrackConfig$Builder;->setVersionName(Ljava/lang/String;)Lcom/oplus/statistics/OTrackConfig$Builder;

    move-result-object v0

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/oplus/statistics/OTrackConfig$Builder;->setAppName(Ljava/lang/String;)Lcom/oplus/statistics/OTrackConfig$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/statistics/OTrackConfig$Builder;->build()Lcom/oplus/statistics/OTrackConfig;

    move-result-object p0

    return-object p0
.end method

.method private createDefaultConfig(Landroid/content/Context;Lcom/oplus/statistics/OTrackConfig;)Lcom/oplus/statistics/OTrackConfig;
    .registers 3

    invoke-virtual {p2}, Lcom/oplus/statistics/OTrackConfig;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_11

    invoke-static {p1}, Lcom/oplus/statistics/util/ApkInfoUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/oplus/statistics/OTrackConfig;->setPackageName(Ljava/lang/String;)V

    :cond_11
    invoke-virtual {p2}, Lcom/oplus/statistics/OTrackConfig;->getVersionName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_22

    invoke-static {p1}, Lcom/oplus/statistics/util/ApkInfoUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/oplus/statistics/OTrackConfig;->setVersionName(Ljava/lang/String;)V

    :cond_22
    invoke-virtual {p2}, Lcom/oplus/statistics/OTrackConfig;->getAppName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_33

    invoke-static {p1}, Lcom/oplus/statistics/util/ApkInfoUtil;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/oplus/statistics/OTrackConfig;->setAppName(Ljava/lang/String;)V

    :cond_33
    return-object p2
.end method

.method public static declared-synchronized createIfNeed(Ljava/lang/String;Landroid/content/Context;Lcom/oplus/statistics/OTrackConfig;)Lcom/oplus/statistics/OTrackContext;
    .registers 5
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lcom/oplus/statistics/OTrackConfig;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-class v0, Lcom/oplus/statistics/OTrackContext;

    monitor-enter v0

    :try_start_3
    invoke-static {p0}, Lcom/oplus/statistics/OTrackContext;->get(Ljava/lang/String;)Lcom/oplus/statistics/OTrackContext;

    move-result-object v1

    if-nez v1, :cond_13

    new-instance v1, Lcom/oplus/statistics/OTrackContext;

    invoke-direct {v1, p0, p1, p2}, Lcom/oplus/statistics/OTrackContext;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/oplus/statistics/OTrackConfig;)V

    sget-object p1, Lcom/oplus/statistics/OTrackContext;->sTrackContextMap:Ljava/util/Map;

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    :cond_13
    monitor-exit v0

    return-object v1

    :catchall_15
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized get(Ljava/lang/String;)Lcom/oplus/statistics/OTrackContext;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-class v0, Lcom/oplus/statistics/OTrackContext;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/oplus/statistics/OTrackContext;->sTrackContextMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/statistics/OTrackContext;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static synthetic lambda$createDefaultConfig$0()Ljava/lang/String;
    .registers 1

    const-string v0, "createDefaultConfig PackageManager.NameNotFoundException."

    return-object v0
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/statistics/OTrackContext;->mAppId:Ljava/lang/String;

    return-object p0
.end method

.method public getConfig()Lcom/oplus/statistics/OTrackConfig;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/oplus/statistics/OTrackConfig;->DUMMY:Lcom/oplus/statistics/OTrackConfig;

    iget-object v1, p0, Lcom/oplus/statistics/OTrackContext;->mConfig:Lcom/oplus/statistics/OTrackConfig;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/oplus/statistics/OTrackContext;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/oplus/statistics/OTrackContext;->createDefaultConfig(Landroid/content/Context;)Lcom/oplus/statistics/OTrackConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/statistics/OTrackContext;->mConfig:Lcom/oplus/statistics/OTrackConfig;

    :cond_12
    iget-object p0, p0, Lcom/oplus/statistics/OTrackContext;->mConfig:Lcom/oplus/statistics/OTrackConfig;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/oplus/statistics/OTrackContext;->mContext:Landroid/content/Context;

    return-object p0
.end method
