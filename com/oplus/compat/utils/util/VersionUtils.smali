.class public final Lcom/oplus/compat/utils/util/VersionUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final APP_PLATFORM_PACKAGE_NAME:Ljava/lang/String;

.field private static final DISPATCHER_PROVIDER_URI:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "VersionUtils"

.field private static sAppPlatformExists:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->getDispatcherProviderUri()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/compat/utils/util/VersionUtils;->DISPATCHER_PROVIDER_URI:Ljava/lang/String;

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->getAppPlatformPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/compat/utils/util/VersionUtils;->APP_PLATFORM_PACKAGE_NAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appPlatformExists()Z
    .registers 3

    sget-object v0, Lcom/oplus/compat/utils/util/VersionUtils;->sAppPlatformExists:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0

    :cond_9
    invoke-static {}, Lcom/oplus/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/oplus/compat/utils/util/VersionUtils;->DISPATCHER_PROVIDER_URI:Ljava/lang/String;

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_2d

    sget-object v1, Lcom/oplus/compat/utils/util/VersionUtils;->APP_PLATFORM_PACKAGE_NAME:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v1, Lcom/oplus/compat/utils/util/VersionUtils;->sAppPlatformExists:Ljava/util/concurrent/atomic/AtomicBoolean;

    return v0

    :cond_2d
    const/4 v0, 0x0

    return v0
.end method

.method private static getAppPlatformPackageName()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "com.oplus.appplatform"

    return-object v0

    :cond_9
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->getAppPlatformPackageNameForCompat()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static getAppPlatformPackageNameForCompat()Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method private static getDispatcherProviderUri()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "com.oplus.appplatform.dispatcher"

    return-object v0

    :cond_9
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->getDispatcherProviderUriForCompat()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static getDispatcherProviderUriForCompat()Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public static isL()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isL_MR1()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isM()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isN()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isN_MR1()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isO()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isO_MR1()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isOsVersion11_3()Z
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/oplus/os/OplusBuild;->getOplusOSVERSION()I

    move-result v1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_b

    const/16 v2, 0x16

    if-lt v1, v2, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0

    :catchall_b
    move-exception v1

    const-string v2, "Get OsVersion Exception : "

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VersionUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isOsVersion12_0()Z
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/oplus/os/OplusBuild;->getOplusOSVERSION()I

    move-result v1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_b

    const/16 v2, 0x17

    if-lt v1, v2, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0

    :catchall_b
    move-exception v1

    const-string v2, "Get OsVersion Exception : "

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VersionUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isP()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isQ()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isR()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isS()Z
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_13

    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v1, "S"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public static isT()Z
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x20

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
