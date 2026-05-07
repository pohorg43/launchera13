.class public Lcom/oplus/shield/verify/TingleVerifier;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final mAuthCache:Lcom/oplus/shield/authcode/AuthCache;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/shield/verify/TingleVerifier;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/oplus/shield/authcode/AuthCache;

    invoke-direct {v0, p1}, Lcom/oplus/shield/authcode/AuthCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/shield/verify/TingleVerifier;->mAuthCache:Lcom/oplus/shield/authcode/AuthCache;

    return-void
.end method

.method private isAuthenticateFailed(Lcom/oplus/shield/authcode/info/AuthResult;Ljava/lang/String;)Z
    .registers 4

    invoke-virtual {p1}, Lcom/oplus/shield/authcode/info/AuthResult;->getResultCode()I

    move-result p1

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_d

    invoke-direct {p0, p1, p2}, Lcom/oplus/shield/verify/TingleVerifier;->printTingleVerityFailedLog(ILjava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method private isParamsEmpty(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_d

    const-string p0, "Tingle Authentication Failed Cause Caller Package Empty"

    invoke-static {p0}, Lcom/oplus/shield/utils/PLog;->e(Ljava/lang/String;)V

    return v0

    :cond_d
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_28

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Tingle Authentication Failed Cause Descriptor Empty : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/shield/utils/PLog;->e(Ljava/lang/String;)V

    return v0

    :cond_28
    const/4 p0, 0x0

    return p0
.end method

.method private isPlatformSignature(Ljava/lang/String;)Z
    .registers 2

    iget-object p0, p0, Lcom/oplus/shield/verify/TingleVerifier;->mAuthCache:Lcom/oplus/shield/authcode/AuthCache;

    invoke-virtual {p0, p1}, Lcom/oplus/shield/authcode/AuthCache;->isPlatformSignature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isSystemUid()Z
    .registers 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private printTingleVerityFailedLog(ILjava/lang/String;)V
    .registers 3

    const-string p0, "Tingle Authentication Failed "

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1}, Lcom/oplus/shield/authcode/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Package : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/shield/utils/PLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method private printTingleVerityResultLog(ZLjava/lang/String;Ljava/lang/String;I)V
    .registers 7

    const-string p0, "Tingle verity "

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    if-eqz p1, :cond_b

    const-string p1, "SUCCESS"

    goto :goto_d

    :cond_b
    const-string p1, "FAILED"

    :goto_d
    const-string v0, " Caller : ["

    const-string v1, "] Descriptor : ["

    invoke-static {p0, p1, v0, p2, v1}, Landroidx/room/s;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] Method : ["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3, p4}, Lcom/oplus/shield/servicemaps/ServiceMap;->convertTransactCode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/shield/utils/PLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method private skipVerifyService(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    invoke-static {p2}, Lcom/oplus/shield/servicemaps/ServiceMap;->skipTingleVerifyService(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_29

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Tingle verity SUCCESS cause descriptor is ["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "], Caller Package ["

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/shield/utils/PLog;->d(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_29
    const/4 p0, 0x0

    return p0
.end method

.method private verifyTinglePermission(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    iget-object p0, p0, Lcom/oplus/shield/verify/TingleVerifier;->mAuthCache:Lcom/oplus/shield/authcode/AuthCache;

    invoke-virtual {p0, p2}, Lcom/oplus/shield/authcode/AuthCache;->getAuthResultInCache(Ljava/lang/String;)Lcom/oplus/shield/authcode/info/AuthResult;

    move-result-object p0

    if-eqz p0, :cond_f

    const-string p2, "tingle"

    invoke-virtual {p0, p2, p1}, Lcom/oplus/shield/authcode/info/AuthResult;->checkPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public verify(Ljava/lang/String;I)Z
    .registers 8

    iget-object v0, p0, Lcom/oplus/shield/verify/TingleVerifier;->mAuthCache:Lcom/oplus/shield/authcode/AuthCache;

    invoke-virtual {v0}, Lcom/oplus/shield/authcode/AuthCache;->isLocalVersion()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Lcom/oplus/shield/verify/TingleVerifier;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/oplus/shield/utils/PackageUtils;->getCallingPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/shield/verify/TingleVerifier;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/oplus/shield/utils/CertUtils;->getCertificateSHA256(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, p1}, Lcom/oplus/shield/verify/TingleVerifier;->isParamsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_26

    return v4

    :cond_26
    invoke-direct {p0}, Lcom/oplus/shield/verify/TingleVerifier;->isSystemUid()Z

    move-result v3

    if-nez v3, :cond_6a

    invoke-direct {p0, v2}, Lcom/oplus/shield/verify/TingleVerifier;->isPlatformSignature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6a

    invoke-direct {p0, v0, p1}, Lcom/oplus/shield/verify/TingleVerifier;->skipVerifyService(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_39

    goto :goto_6a

    :cond_39
    iget-object v1, p0, Lcom/oplus/shield/verify/TingleVerifier;->mAuthCache:Lcom/oplus/shield/authcode/AuthCache;

    invoke-virtual {v1, v0, v2}, Lcom/oplus/shield/authcode/AuthCache;->hasCache(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-static {p1, p2}, Lcom/oplus/shield/servicemaps/ServiceMap;->convertTransactCode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/oplus/shield/verify/TingleVerifier;->verifyTinglePermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/oplus/shield/verify/TingleVerifier;->printTingleVerityResultLog(ZLjava/lang/String;Ljava/lang/String;I)V

    return v1

    :cond_4d
    iget-object v1, p0, Lcom/oplus/shield/verify/TingleVerifier;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/oplus/shield/authcode/Authentication;->checkAuthCode(Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/shield/authcode/info/AuthResult;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/oplus/shield/verify/TingleVerifier;->isAuthenticateFailed(Lcom/oplus/shield/authcode/info/AuthResult;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5a

    return v4

    :cond_5a
    iget-object v3, p0, Lcom/oplus/shield/verify/TingleVerifier;->mAuthCache:Lcom/oplus/shield/authcode/AuthCache;

    invoke-virtual {v3, v0, v1, v2}, Lcom/oplus/shield/authcode/AuthCache;->putCache(Ljava/lang/String;Lcom/oplus/shield/authcode/info/AuthResult;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/oplus/shield/servicemaps/ServiceMap;->convertTransactCode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/oplus/shield/verify/TingleVerifier;->verifyTinglePermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/oplus/shield/verify/TingleVerifier;->printTingleVerityResultLog(ZLjava/lang/String;Ljava/lang/String;I)V

    :cond_6a
    :goto_6a
    return v1
.end method
