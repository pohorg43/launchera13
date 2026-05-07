.class public Lcom/oplus/shield/authcode/AuthCache;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ANDROID_PACKAGE:Ljava/lang/String; = "android"


# instance fields
.field private final mCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/oplus/shield/authcode/info/AuthResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mPlatformSignature:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LruCache;

    sget v1, Lcom/oplus/shield/Constants;->MAX_CACHE:I

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/shield/authcode/AuthCache;->mCache:Landroid/util/LruCache;

    iput-object p1, p0, Lcom/oplus/shield/authcode/AuthCache;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getAuthResultInCache(Ljava/lang/String;)Lcom/oplus/shield/authcode/info/AuthResult;
    .registers 2

    iget-object p0, p0, Lcom/oplus/shield/authcode/AuthCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/shield/authcode/info/AuthResult;

    return-object p0
.end method

.method public hasCache(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/oplus/shield/authcode/AuthCache;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/oplus/shield/utils/PackageUtils;->getAppPlatformData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/shield/authcode/AuthCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/shield/authcode/info/AuthResult;

    const/4 p1, 0x0

    if-eqz p0, :cond_2c

    invoke-virtual {p0}, Lcom/oplus/shield/authcode/info/AuthResult;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_2c

    :cond_18
    invoke-virtual {p0}, Lcom/oplus/shield/authcode/info/AuthResult;->getSigSHA256()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_23

    return p1

    :cond_23
    invoke-virtual {p0}, Lcom/oplus/shield/authcode/info/AuthResult;->getAuthCode()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_2c
    :goto_2c
    return p1
.end method

.method public isLocalVersion()Z
    .registers 3

    iget-object v0, p0, Lcom/oplus/shield/authcode/AuthCache;->mPlatformSignature:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/oplus/shield/authcode/AuthCache;->mContext:Landroid/content/Context;

    const-string v1, "android"

    invoke-static {v0, v1}, Lcom/oplus/shield/utils/CertUtils;->getCertificateSHA256(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/shield/authcode/AuthCache;->mPlatformSignature:Ljava/lang/String;

    :cond_12
    iget-object p0, p0, Lcom/oplus/shield/authcode/AuthCache;->mPlatformSignature:Ljava/lang/String;

    const-string v0, "72:8E:6B:5E:6D:3F:AA:00:E2:DE:12:CC:46:4D:02:7B:FF:E2:DD:87:32:99:67:F7:20:28:F2:FD:13:C1:22:E9"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public isPlatformSignature(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/oplus/shield/authcode/AuthCache;->mPlatformSignature:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/oplus/shield/authcode/AuthCache;->mContext:Landroid/content/Context;

    const-string v1, "android"

    invoke-static {v0, v1}, Lcom/oplus/shield/utils/CertUtils;->getCertificateSHA256(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/shield/authcode/AuthCache;->mPlatformSignature:Ljava/lang/String;

    :cond_12
    iget-object p0, p0, Lcom/oplus/shield/authcode/AuthCache;->mPlatformSignature:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public putCache(Ljava/lang/String;Lcom/oplus/shield/authcode/info/AuthResult;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p2}, Lcom/oplus/shield/authcode/info/AuthResult;->initPermissionTable()V

    invoke-virtual {p2}, Lcom/oplus/shield/authcode/info/AuthResult;->setUpdateTime()V

    invoke-virtual {p2, p3}, Lcom/oplus/shield/authcode/info/AuthResult;->setSigSHA256(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/shield/authcode/AuthCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {p0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
