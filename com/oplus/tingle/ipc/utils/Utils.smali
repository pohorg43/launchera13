.class public Lcom/oplus/tingle/ipc/utils/Utils;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMasterApplicationPackageName()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/oplus/tingle/ipc/utils/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "com.oplus.appcoreservice"

    return-object v0

    :cond_9
    invoke-static {}, Lcom/oplus/tingle/Constants;->getAppPlatformPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
