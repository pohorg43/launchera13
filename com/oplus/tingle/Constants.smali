.class public Lcom/oplus/tingle/Constants;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final APP_CORE_SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.oplus.appcoreservice"

.field private static final APP_PLATFORM_PACKAGE_NAME:Ljava/lang/String; = "com.oplus.appplatform"

.field private static final BINDER_DESCRIPTOR:Ljava/lang/String; = "com.oplus.epona.binder"

.field public static final BINDER_TRANSACTION_transact:I = 0x1

.field private static final EXTRA_BINDER:Ljava/lang/String; = "com.oplus.epona.ext_binder"

.field private static final MASTER_PROVIDER_URI:Ljava/lang/String; = "com.oplus.appplatform.master.provider"

.field public static final METHOD_SEND_BINDER:Ljava/lang/String; = "sendBinder"

.field public static final WINDOW_SERVICE_INNER:Ljava/lang/String; = "windowInner"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppPlatformPackageName()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/oplus/tingle/ipc/utils/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "com.oplus.appplatform"

    return-object v0

    :cond_9
    invoke-static {}, Lcom/oplus/tingle/Constants;->getAppPlatformPackageNameCompat()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_13

    const-string v0, ""

    :cond_13
    return-object v0
.end method

.method private static getAppPlatformPackageNameCompat()Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getBinderDescriptor()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/oplus/tingle/ipc/utils/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "com.oplus.epona.binder"

    return-object v0

    :cond_9
    invoke-static {}, Lcom/oplus/tingle/Constants;->getBinderDescriptorCompat()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static getBinderDescriptorCompat()Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getExtraBinder()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/oplus/tingle/ipc/utils/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "com.oplus.epona.ext_binder"

    return-object v0

    :cond_9
    invoke-static {}, Lcom/oplus/tingle/Constants;->getExtraBinderCompat()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static getExtraBinderCompat()Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method private static getMasterProviderCompat()Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getMasterProviderUri()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/oplus/tingle/ipc/utils/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "com.oplus.appplatform.master.provider"

    return-object v0

    :cond_9
    invoke-static {}, Lcom/oplus/tingle/Constants;->getMasterProviderCompat()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
