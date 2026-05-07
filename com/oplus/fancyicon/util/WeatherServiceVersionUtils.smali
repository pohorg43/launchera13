.class public Lcom/oplus/fancyicon/util/WeatherServiceVersionUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final COMMON_VERSION_CODE:I = 0x9efc

.field private static final SERVICE_PACKAGE_KEY:Ljava/lang/String; = "Y29tLmNvbG9yb3Mud2VhdGhlci5zZXJ2aWNl"

.field private static final TAG:Ljava/lang/String; = "WeatherServiceVersionUtils"

.field public static mWeatherServicePkg:Ljava/lang/String; = ""


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "Y29tLmNvbG9yb3Mud2VhdGhlci5zZXJ2aWNl"

    invoke-static {v0}, Lcom/oplus/fancyicon/util/Base64Util;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/fancyicon/util/WeatherServiceVersionUtils;->mWeatherServicePkg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWeatherServiceVersionCode(Landroid/content/Context;)J
    .registers 6

    const-string v0, "WeatherServiceVersionUtils"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-wide/16 v1, 0x0

    :try_start_8
    sget-object v3, Lcom/oplus/fancyicon/util/WeatherServiceVersionUtils;->mWeatherServicePkg:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v1, p0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serviceVersionCode"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_26
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_26} :catch_27

    goto :goto_2c

    :catch_27
    const-string p0, "No WeatherService"

    invoke-static {v0, p0}, Lcom/oplus/fancyicon/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2c
    return-wide v1
.end method

.method public static isCommonWeatherServiceExist(Landroid/content/Context;)Z
    .registers 5

    invoke-static {p0}, Lcom/oplus/fancyicon/util/WeatherServiceVersionUtils;->getWeatherServiceVersionCode(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/32 v2, 0x9efc

    cmp-long p0, v0, v2

    if-ltz p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method
