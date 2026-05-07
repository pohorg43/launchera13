.class public Lcom/oplus/shield/Constants;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final APP_PLATFORM_CAPABILITY_CODE:Ljava/lang/String; = "AppPlatformCode"

.field public static final APP_PLATFORM_CAPABILITY_KEY:Ljava/lang/String; = "AppPlatformKey"

.field public static final APP_PLATFORM_CAPABILITY_TYPE:B = 0x8t

.field public static final APP_PLATFORM_PACKAGE_NAME:Ljava/lang/String; = "com.oplus.appplatform"

.field public static CACHE_UPDATE_TIME:J = 0x6ddd00L

.field public static final COMMA_REGEX:Ljava/lang/String; = ","

.field public static final LOCAL_PLATFORM_SIGNATURE:Ljava/lang/String; = "72:8E:6B:5E:6D:3F:AA:00:E2:DE:12:CC:46:4D:02:7B:FF:E2:DD:87:32:99:67:F7:20:28:F2:FD:13:C1:22:E9"

.field public static MAX_CACHE:I = 0x28

.field public static final OPLUS_PUBLIC_CODE:Ljava/lang/String; = "MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEvE0DoqARwzQKOb/b0cx7B0BQ4Ux8mTdND8rX9KHproZAuOP/M049VdcJ53sjVujUF1URD4IGMtkId2QYwXoDHw=="

.field public static final POINT_REGEX:Ljava/lang/String; = "."

.field public static final PUBLIC_KEY_STATUS_OK:Ljava/lang/String; = "OK"

.field public static final SEMICOLON_REGEX:Ljava/lang/String; = ";"

.field public static final SYSTEM_CORE_PACKAGE_NAME:Ljava/lang/String; = "com.oplus.systemcore"

.field public static final TAG:Ljava/lang/String; = "AppPlatform.Shield"

.field public static final TYPE_EPONA:Ljava/lang/String; = "epona"

.field public static final TYPE_TINGLE:Ljava/lang/String; = "tingle"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppPlatformPackageName()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/oplus/shield/utils/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "com.oplus.appplatform"

    return-object v0

    :cond_9
    invoke-static {}, Lcom/oplus/shield/Constants;->getAppPlatformPackageNameCompat()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static getAppPlatformPackageNameCompat()Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
