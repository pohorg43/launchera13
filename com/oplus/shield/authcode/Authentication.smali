.class public Lcom/oplus/shield/authcode/Authentication;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final CHECK_SUCCESS_CODE:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAuthCode(Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/shield/authcode/info/AuthResult;
    .registers 10
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0, p1}, Lcom/oplus/shield/utils/PackageUtils;->getAppPlatformData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/oplus/shield/authcode/Authentication;->isPackageNameEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_65

    invoke-static {v0}, Lcom/oplus/shield/authcode/Authentication;->isAuthCodeEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_65

    :cond_13
    const/16 v1, 0x3ea

    :try_start_15
    const-string v4, ";"

    invoke-static {v0, v4}, Lcom/oplus/shield/utils/SystemUtils;->getSplitString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {p1, v5, p0}, Lcom/oplus/shield/authcode/Authentication;->checkSingleAuthCode(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)[[B

    move-result-object v5

    aget-object v6, v5, v3

    aget-byte v6, v6, v3

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1f

    aget-object p0, v5, v7

    new-instance v4, Lcom/oplus/shield/authcode/info/AuthResult;

    const/16 v5, 0x3e9

    invoke-direct {v4, p1, v5, p0, v0}, Lcom/oplus/shield/authcode/info/AuthResult;-><init>(Ljava/lang/String;I[BLjava/lang/String;)V

    return-object v4

    :cond_40
    new-instance p0, Lcom/oplus/shield/authcode/info/AuthResult;

    new-array v0, v3, [B

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/oplus/shield/authcode/info/AuthResult;-><init>(Ljava/lang/String;I[BLjava/lang/String;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_47} :catch_48

    return-object p0

    :catch_48
    move-exception p0

    const-string v0, "Check key get exception "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/shield/utils/PLog;->e(Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/shield/authcode/info/AuthResult;

    new-array v0, v3, [B

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/oplus/shield/authcode/info/AuthResult;-><init>(Ljava/lang/String;I[BLjava/lang/String;)V

    return-object p0

    :cond_65
    :goto_65
    new-instance p0, Lcom/oplus/shield/authcode/info/AuthResult;

    const/16 p1, 0x3ec

    new-array v0, v3, [B

    const-string v1, ""

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/oplus/shield/authcode/info/AuthResult;-><init>(Ljava/lang/String;I[BLjava/lang/String;)V

    return-object p0
.end method

.method private static checkSingleAuthCode(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)[[B
    .registers 7

    const/4 v0, 0x1

    new-array v1, v0, [[B

    new-array v2, v0, [B

    const/4 v3, 0x0

    aput-byte v3, v2, v3

    aput-object v2, v1, v3

    :try_start_a
    invoke-static {p0, p1, p2}, Lcom/oplus/shield/authcode/Authentication;->isSignerSuccess(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_16

    const-string p0, "Signature verify failed."

    invoke-static {p0}, Lcom/oplus/shield/utils/PLog;->i(Ljava/lang/String;)V

    return-object v1

    :cond_16
    const/4 p0, 0x3

    new-array p0, p0, [[B

    new-array p2, v0, [B

    aput-byte v0, p2, v3

    aput-object p2, p0, v3

    invoke-static {p1}, Lcom/oplus/shield/authcode/Authentication;->getPermission(Ljava/lang/String;)[B

    move-result-object p2

    aput-object p2, p0, v0

    const/4 p2, 0x2

    invoke-static {p1}, Lcom/oplus/shield/authcode/Authentication;->getExpiration(Ljava/lang/String;)[B

    move-result-object p1

    aput-object p1, p0, p2
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2c} :catch_2d

    return-object p0

    :catch_2d
    move-exception p0

    const-string p1, "Check key get exception "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/shield/utils/PLog;->e(Ljava/lang/String;)V

    return-object v1
.end method

.method private static getExpiration(Ljava/lang/String;)[B
    .registers 2

    invoke-static {p0}, Lcom/oplus/shield/utils/Base64Utils;->base642Byte(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/shield/utils/ParseUtils;->parsePermissionLength([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/shield/utils/SystemUtils;->byte2int([B)I

    move-result v0

    invoke-static {p0, v0}, Lcom/oplus/shield/utils/ParseUtils;->parseExpiration([BI)[B

    move-result-object p0

    return-object p0
.end method

.method private static getPermission(Ljava/lang/String;)[B
    .registers 2

    invoke-static {p0}, Lcom/oplus/shield/utils/Base64Utils;->base642Byte(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/shield/utils/ParseUtils;->parsePermissionLength([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/shield/utils/SystemUtils;->byte2int([B)I

    move-result v0

    invoke-static {p0, v0}, Lcom/oplus/shield/utils/ParseUtils;->parsePermission([BI)[B

    move-result-object p0

    return-object p0
.end method

.method private static isAuthCodeEmpty(Ljava/lang/String;)Z
    .registers 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_d

    const-string p0, "Get target application authCode is empty"

    invoke-static {p0}, Lcom/oplus/shield/utils/PLog;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_d
    const/4 p0, 0x1

    return p0
.end method

.method private static isPackageNameEmpty(Ljava/lang/String;)Z
    .registers 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_d

    const-string p0, "Get target packageName is empty"

    invoke-static {p0}, Lcom/oplus/shield/utils/PLog;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_d
    const/4 p0, 0x1

    return p0
.end method

.method private static isSignerSuccess(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .registers 11

    invoke-static {p1}, Lcom/oplus/shield/utils/Base64Utils;->base642Byte(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/shield/utils/ParseUtils;->parseVersion([B)[B

    move-result-object v2

    const/4 v0, 0x1

    new-array v4, v0, [B

    const/4 v0, 0x0

    const/16 v1, 0x8

    aput-byte v1, v4, v0

    invoke-static {p1}, Lcom/oplus/shield/utils/ParseUtils;->parsePermissionLength([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/shield/utils/SystemUtils;->byte2int([B)I

    move-result v3

    invoke-static {p1, v3}, Lcom/oplus/shield/utils/ParseUtils;->parsePermission([BI)[B

    move-result-object v6

    invoke-static {p1, v3}, Lcom/oplus/shield/utils/ParseUtils;->parseExpiration([BI)[B

    move-result-object v5

    invoke-static {p1, v3}, Lcom/oplus/shield/utils/ParseUtils;->parseDigest([BI)[B

    move-result-object v7

    move-object v0, p2

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/oplus/shield/utils/SignVerifyUtils;->isVerify(Landroid/content/Context;Ljava/lang/String;[BI[B[B[B[B)Z

    move-result p0

    return p0
.end method
