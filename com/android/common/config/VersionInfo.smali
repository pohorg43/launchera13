.class public Lcom/android/common/config/VersionInfo;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final BRAND:Ljava/lang/String;

.field public static final BUILD_MODEL:Ljava/lang/String;

.field public static final PREFIX_OPLUS:Ljava/lang/String; = "OPLUS "

.field public static final PROJECT_ID:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "VersionInfo"

.field public static final VERSION_OTA:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sput-object v0, Lcom/android/common/config/VersionInfo;->BRAND:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "OPLUS "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_13
    sput-object v0, Lcom/android/common/config/VersionInfo;->BUILD_MODEL:Ljava/lang/String;

    sget-object v0, Landroid/os/OplusPropertyList;->SEPARATE_SOFT:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/common/config/VersionInfo;->PROJECT_ID:Ljava/lang/String;

    const-string/jumbo v0, "ro.build.version.ota"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/common/config/VersionInfo;->VERSION_OTA:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEuexCountry()Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/os/OplusPropertyList;->OPLUS_EUEX_COUNTRY:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLauncherVersionString(Landroid/content/Context;)Ljava/lang/String;
    .registers 9

    const-string v0, "_"

    const-string v1, ""

    const-string v2, "VersionInfo"

    if-nez p0, :cond_e

    const-string p0, "getLauncherVersionString. The context is null!"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_e
    :try_start_e
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v4, 0x80

    invoke-virtual {v3, p0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object v3, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    iget-object v4, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v3, :cond_65

    const-string/jumbo v5, "versionCommit"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_33

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_34

    :cond_33
    move-object v5, v6

    :goto_34
    const-string/jumbo v7, "versionDate"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_41

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_41
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_65

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_65

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object p0, v3, v4

    const/4 p0, 0x1

    aput-object v0, v3, p0

    const/4 p0, 0x2

    aput-object v5, v3, p0

    const/4 p0, 0x3

    aput-object v0, v3, p0

    const/4 p0, 0x4

    aput-object v6, v3, p0

    invoke-static {v3}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    :cond_65
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_69} :catch_6a

    return-object p0

    :catch_6a
    move-exception p0

    const-string v0, "getLauncherVersionString. e is "

    invoke-static {v0, p0, v2}, Lcom/android/common/config/i;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    return-object v1
.end method

.method public static getOperatorName()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRegionMark()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->getRegionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isAustraliaVersion()Z
    .registers 2

    invoke-static {}, Lcom/android/common/config/VersionInfo;->getRegionMark()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isChromeHotseatVersion(Landroid/content/Context;)Z
    .registers 2

    invoke-static {}, Lcom/android/common/config/VersionInfo;->getOperatorName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_c

    return v0

    :cond_c
    invoke-static {}, Lcom/android/common/config/VersionInfo;->isAustraliaVersion()Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    return v0
.end method

.method public static isCustomLayoutProject(Landroid/content/Context;)Z
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f03003a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    sget-object v0, Lcom/android/common/config/VersionInfo;->PROJECT_ID:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isEngLandVersion()Z
    .registers 2

    invoke-static {}, Lcom/android/common/config/VersionInfo;->getRegionMark()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isEuexCountry(Ljava/lang/String;)Z
    .registers 2

    invoke-static {}, Lcom/android/common/config/VersionInfo;->getEuexCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isEuropeanUnionVersion()Z
    .registers 2

    invoke-static {}, Lcom/android/common/config/VersionInfo;->getRegionMark()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EUEX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFactoryVersion()Z
    .registers 2

    const-string/jumbo v0, "ro.oplus.image.my_engineering.type"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "factory"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFranceOrange()Z
    .registers 1

    const-string v0, "FR-ORANGE"

    invoke-static {v0}, Lcom/android/common/config/VersionInfo;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "FR-ORANGE-COTA"

    invoke-static {v0}, Lcom/android/common/config/VersionInfo;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "FR-ORANGE_LITE"

    invoke-static {v0}, Lcom/android/common/config/VersionInfo;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    return v0
.end method

.method public static isGoogleRsa()Z
    .registers 2

    const-string/jumbo v0, "ro.com.google.clientidbase.ms"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android-oplus-rev1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isGoogleRsa3()Z
    .registers 2

    const-string/jumbo v0, "ro.oplus.rsa3.support"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isIdThaVnm()Z
    .registers 1

    invoke-static {}, Lcom/android/common/config/VersionInfo;->isIndonesiaVersion()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {}, Lcom/android/common/config/VersionInfo;->isThailandVersion()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {}, Lcom/android/common/config/VersionInfo;->isVietnamVersion()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method public static isIndiaVersion()Z
    .registers 2

    invoke-static {}, Lcom/android/common/config/VersionInfo;->getRegionMark()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isIndonesiaVersion()Z
    .registers 2

    invoke-static {}, Lcom/android/common/config/VersionInfo;->getRegionMark()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isMalaysiaVersion()Z
    .registers 2

    invoke-static {}, Lcom/android/common/config/VersionInfo;->getRegionMark()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isOpenMarketVersion(Landroid/content/Context;)Z
    .registers 2

    invoke-static {}, Lcom/android/common/config/VersionInfo;->getOperatorName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isCmccCustom()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 p0, 0x0

    return p0

    :cond_16
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f03003d

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {}, Lcom/android/common/config/VersionInfo;->getOperatorName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isOperator(Ljava/lang/String;)Z
    .registers 2

    invoke-static {}, Lcom/android/common/config/VersionInfo;->getOperatorName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isPhilippinesVersion()Z
    .registers 2

    invoke-static {}, Lcom/android/common/config/VersionInfo;->getRegionMark()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPolandOrange()Z
    .registers 1

    const-string v0, "PL-ORANGE"

    invoke-static {v0}, Lcom/android/common/config/VersionInfo;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "PL-ORANGE-COTA"

    invoke-static {v0}, Lcom/android/common/config/VersionInfo;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public static isRegion(Ljava/lang/String;)Z
    .registers 2

    invoke-static {}, Lcom/android/common/config/VersionInfo;->getRegionMark()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isRussianVersion()Z
    .registers 2

    invoke-static {}, Lcom/android/common/config/VersionInfo;->getRegionMark()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSaleMode2020Model(Landroid/content/Context;)Z
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f030046

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    sget-object v0, Lcom/android/common/config/VersionInfo;->PROJECT_ID:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isSodaProject(Landroid/content/Context;)Z
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f030051

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    sget-object v0, Lcom/android/common/config/VersionInfo;->PROJECT_ID:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isSpainOrange()Z
    .registers 1

    const-string v0, "ES-ORANGE"

    invoke-static {v0}, Lcom/android/common/config/VersionInfo;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "ES-ORANGE-COTA"

    invoke-static {v0}, Lcom/android/common/config/VersionInfo;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public static isThailandVersion()Z
    .registers 2

    invoke-static {}, Lcom/android/common/config/VersionInfo;->getRegionMark()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isVietnamVersion()Z
    .registers 2

    invoke-static {}, Lcom/android/common/config/VersionInfo;->getRegionMark()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isVodafoneCustomizer()Z
    .registers 1

    const-string v0, "EU-VODAFONE_EEA"

    invoke-static {v0}, Lcom/android/common/config/VersionInfo;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "VODAFONE_NONEEA"

    invoke-static {v0}, Lcom/android/common/config/VersionInfo;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "RO-VODAFONE_EEA"

    invoke-static {v0}, Lcom/android/common/config/VersionInfo;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    return v0
.end method
