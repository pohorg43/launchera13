.class public final Lcom/android/common/util/PackageCompatUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/util/PackageCompatUtils$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/common/util/PackageCompatUtils$Companion;

.field private static final INSTANT_PLATFORM_PKG_NAME_NEW:Ljava/lang/String; = "com.heytap.instant.platform"

.field private static final INSTANT_PLATFORM_PKG_NAME_OLD:Ljava/lang/String; = "com.nearme.instant.platform"

.field private static final NEARME_GAMECENTER_NEW:Ljava/lang/String; = "com.heytap.gamecenter"

.field private static final NEARME_GAMECENTER_OLD:Ljava/lang/String; = "com.nearme.gamecenter"

.field private static final OPLUS_MARKET_NEW:Ljava/lang/String; = "com.heytap.market"

.field private static final OPLUS_MARKET_OLD:Ljava/lang/String;

.field private static sInstallGameNew:Z

.field private static sInstallMarketNew:Z

.field private static sInstallPlatformNew:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/common/util/PackageCompatUtils$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/common/util/PackageCompatUtils$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/common/util/PackageCompatUtils;->Companion:Lcom/android/common/util/PackageCompatUtils$Companion;

    const v0, 0x7f12003e

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/common/util/PackageCompatUtils;->OPLUS_MARKET_OLD:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getOPLUS_MARKET_OLD$cp()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/common/util/PackageCompatUtils;->OPLUS_MARKET_OLD:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getSInstallGameNew$cp()Z
    .registers 1

    sget-boolean v0, Lcom/android/common/util/PackageCompatUtils;->sInstallGameNew:Z

    return v0
.end method

.method public static final synthetic access$getSInstallMarketNew$cp()Z
    .registers 1

    sget-boolean v0, Lcom/android/common/util/PackageCompatUtils;->sInstallMarketNew:Z

    return v0
.end method

.method public static final synthetic access$getSInstallPlatformNew$cp()Z
    .registers 1

    sget-boolean v0, Lcom/android/common/util/PackageCompatUtils;->sInstallPlatformNew:Z

    return v0
.end method

.method public static final synthetic access$setSInstallGameNew$cp(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/common/util/PackageCompatUtils;->sInstallGameNew:Z

    return-void
.end method

.method public static final synthetic access$setSInstallMarketNew$cp(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/common/util/PackageCompatUtils;->sInstallMarketNew:Z

    return-void
.end method

.method public static final synthetic access$setSInstallPlatformNew$cp(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/common/util/PackageCompatUtils;->sInstallPlatformNew:Z

    return-void
.end method

.method public static final getGameCenterPackage()Ljava/lang/String;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/PackageCompatUtils;->Companion:Lcom/android/common/util/PackageCompatUtils$Companion;

    invoke-virtual {v0}, Lcom/android/common/util/PackageCompatUtils$Companion;->getGameCenterPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstantPlatformPackage()Ljava/lang/String;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/PackageCompatUtils;->Companion:Lcom/android/common/util/PackageCompatUtils$Companion;

    invoke-virtual {v0}, Lcom/android/common/util/PackageCompatUtils$Companion;->getInstantPlatformPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getMarketPackage()Ljava/lang/String;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/PackageCompatUtils;->Companion:Lcom/android/common/util/PackageCompatUtils$Companion;

    invoke-virtual {v0}, Lcom/android/common/util/PackageCompatUtils$Companion;->getMarketPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final initInstallStatus(Landroid/content/Context;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/PackageCompatUtils;->Companion:Lcom/android/common/util/PackageCompatUtils$Companion;

    invoke-virtual {v0, p0}, Lcom/android/common/util/PackageCompatUtils$Companion;->initInstallStatus(Landroid/content/Context;)V

    return-void
.end method
