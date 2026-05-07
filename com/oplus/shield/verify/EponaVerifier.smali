.class public Lcom/oplus/shield/verify/EponaVerifier;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final mAuthCache:Lcom/oplus/shield/authcode/AuthCache;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/shield/verify/EponaVerifier;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/oplus/shield/authcode/AuthCache;

    invoke-direct {v0, p1}, Lcom/oplus/shield/authcode/AuthCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/shield/verify/EponaVerifier;->mAuthCache:Lcom/oplus/shield/authcode/AuthCache;

    return-void
.end method

.method private isAuthenticateFailed(Lcom/oplus/shield/authcode/info/AuthResult;Ljava/lang/String;)Z
    .registers 4

    invoke-virtual {p1}, Lcom/oplus/shield/authcode/info/AuthResult;->getResultCode()I

    move-result p1

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_d

    invoke-direct {p0, p1, p2}, Lcom/oplus/shield/verify/EponaVerifier;->printEponaVerityFailedLog(ILjava/lang/String;)V

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

    const-string p0, "Epona Authentication Failed Cause Caller Package Empty"

    invoke-static {p0}, Lcom/oplus/shield/utils/PLog;->e(Ljava/lang/String;)V

    return v0

    :cond_d
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_28

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Epona Authentication Failed Cause Component Empty : "

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

    iget-object p0, p0, Lcom/oplus/shield/verify/EponaVerifier;->mAuthCache:Lcom/oplus/shield/authcode/AuthCache;

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

.method private printEponaVerityFailedLog(ILjava/lang/String;)V
    .registers 3

    const-string p0, "Epona Authentication Failed "

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

.method private printEponaVerityResultLog(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const-string p0, "Epona verity "

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    if-eqz p1, :cond_b

    const-string p1, "SUCCESS"

    goto :goto_d

    :cond_b
    const-string p1, "FAILED"

    :goto_d
    const-string v0, " Caller : ["

    const-string v1, "] Component : ["

    invoke-static {p0, p1, v0, p4, v1}, Landroidx/room/s;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] ActionName : ["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/shield/utils/PLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method private verifyEponaPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    iget-object p0, p0, Lcom/oplus/shield/verify/EponaVerifier;->mAuthCache:Lcom/oplus/shield/authcode/AuthCache;

    invoke-virtual {p0, p3}, Lcom/oplus/shield/authcode/AuthCache;->getAuthResultInCache(Ljava/lang/String;)Lcom/oplus/shield/authcode/info/AuthResult;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_66

    const-string v1, "."

    invoke-static {p1, v1}, Lcom/oplus/shield/utils/SystemUtils;->getSplitString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-le v2, v3, :cond_20

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_20
    const-string v1, "epona"

    invoke-virtual {p0, v1, p1}, Lcom/oplus/shield/authcode/info/AuthResult;->checkPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_31

    invoke-virtual {p0, v1, p2}, Lcom/oplus/shield/authcode/info/AuthResult;->checkPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    goto :goto_31

    :cond_2f
    move v1, v0

    goto :goto_32

    :cond_31
    :goto_31
    move v1, v4

    :goto_32
    const-string v2, "tingle"

    invoke-virtual {p0, v2, p1}, Lcom/oplus/shield/authcode/info/AuthResult;->checkPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_43

    invoke-virtual {p0, v2, p2}, Lcom/oplus/shield/authcode/info/AuthResult;->checkPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_41

    goto :goto_43

    :cond_41
    move p0, v0

    goto :goto_44

    :cond_43
    :goto_43
    move p0, v4

    :goto_44
    if-nez v1, :cond_61

    if-eqz p0, :cond_61

    const-string v2, "Action : ["

    const-string v3, "/"

    const-string v5, "] is re-wrapped form Tingle, Caller : ["

    invoke-static {v2, p1, v3, p2, v5}, Ld/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/shield/utils/PLog;->d(Ljava/lang/String;)V

    :cond_61
    if-nez v1, :cond_65

    if-eqz p0, :cond_66

    :cond_65
    move v0, v4

    :cond_66
    return v0
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    invoke-direct {p0, p3, p1}, Lcom/oplus/shield/verify/EponaVerifier;->isParamsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Lcom/oplus/shield/verify/EponaVerifier;->mAuthCache:Lcom/oplus/shield/authcode/AuthCache;

    invoke-virtual {v0}, Lcom/oplus/shield/authcode/AuthCache;->isLocalVersion()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_12

    return v2

    :cond_12
    iget-object v0, p0, Lcom/oplus/shield/verify/EponaVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/oplus/shield/utils/CertUtils;->getCertificateSHA256(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/oplus/shield/verify/EponaVerifier;->isSystemUid()Z

    move-result v3

    if-nez v3, :cond_4f

    invoke-direct {p0, v0}, Lcom/oplus/shield/verify/EponaVerifier;->isPlatformSignature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    goto :goto_4f

    :cond_25
    iget-object v2, p0, Lcom/oplus/shield/verify/EponaVerifier;->mAuthCache:Lcom/oplus/shield/authcode/AuthCache;

    invoke-virtual {v2, p3, v0}, Lcom/oplus/shield/authcode/AuthCache;->hasCache(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/shield/verify/EponaVerifier;->verifyEponaPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/oplus/shield/verify/EponaVerifier;->printEponaVerityResultLog(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_35
    iget-object v2, p0, Lcom/oplus/shield/verify/EponaVerifier;->mContext:Landroid/content/Context;

    invoke-static {v2, p3}, Lcom/oplus/shield/authcode/Authentication;->checkAuthCode(Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/shield/authcode/info/AuthResult;

    move-result-object v2

    invoke-direct {p0, v2, p3}, Lcom/oplus/shield/verify/EponaVerifier;->isAuthenticateFailed(Lcom/oplus/shield/authcode/info/AuthResult;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_42

    return v1

    :cond_42
    iget-object v1, p0, Lcom/oplus/shield/verify/EponaVerifier;->mAuthCache:Lcom/oplus/shield/authcode/AuthCache;

    invoke-virtual {v1, p3, v2, v0}, Lcom/oplus/shield/authcode/AuthCache;->putCache(Ljava/lang/String;Lcom/oplus/shield/authcode/info/AuthResult;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/shield/verify/EponaVerifier;->verifyEponaPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/oplus/shield/verify/EponaVerifier;->printEponaVerityResultLog(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_4f
    :goto_4f
    return v2
.end method
