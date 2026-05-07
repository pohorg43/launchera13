.class public final Lcom/android/common/util/PackageCompatUtils$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/util/PackageCompatUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/common/util/PackageCompatUtils$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getGameCenterPackage()Ljava/lang/String;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/util/PackageCompatUtils;->access$getSInstallGameNew$cp()Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "com.heytap.gamecenter"

    goto :goto_b

    :cond_9
    const-string p0, "com.nearme.gamecenter"

    :goto_b
    return-object p0
.end method

.method public final getInstantPlatformPackage()Ljava/lang/String;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/util/PackageCompatUtils;->access$getSInstallPlatformNew$cp()Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "com.heytap.instant.platform"

    goto :goto_b

    :cond_9
    const-string p0, "com.nearme.instant.platform"

    :goto_b
    return-object p0
.end method

.method public final getMarketPackage()Ljava/lang/String;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/util/PackageCompatUtils;->access$getOPLUS_MARKET_OLD$cp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lcom/android/common/util/PackageCompatUtils;->access$getOPLUS_MARKET_OLD$cp()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_f
    const-string v0, ""

    :goto_11
    invoke-virtual {p0}, Lcom/android/common/util/PackageCompatUtils$Companion;->getSInstallMarketNew()Z

    move-result p0

    if-eqz p0, :cond_1a

    const-string v0, "com.heytap.market"

    goto :goto_1d

    :cond_1a
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_1d
    return-object v0
.end method

.method public final getSInstallMarketNew()Z
    .registers 1

    invoke-static {}, Lcom/android/common/util/PackageCompatUtils;->access$getSInstallMarketNew$cp()Z

    move-result p0

    return p0
.end method

.method public final initInstallStatus(Landroid/content/Context;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "com.heytap.market"

    invoke-virtual {v0, p1, v1}, Lcom/android/common/util/PackageUtils$Companion;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/common/util/PackageCompatUtils$Companion;->setSInstallMarketNew(Z)V

    const-string p0, "com.heytap.gamecenter"

    invoke-virtual {v0, p1, p0}, Lcom/android/common/util/PackageUtils$Companion;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Lcom/android/common/util/PackageCompatUtils;->access$setSInstallGameNew$cp(Z)V

    const-string p0, "com.heytap.instant.platform"

    invoke-virtual {v0, p1, p0}, Lcom/android/common/util/PackageUtils$Companion;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Lcom/android/common/util/PackageCompatUtils;->access$setSInstallPlatformNew$cp(Z)V

    invoke-static {}, Lcom/android/launcher/download/DownloadStateProvider;->initDownloadSourceList()V

    return-void
.end method

.method public final setSInstallMarketNew(Z)V
    .registers 2

    invoke-static {p1}, Lcom/android/common/util/PackageCompatUtils;->access$setSInstallMarketNew$cp(Z)V

    return-void
.end method
