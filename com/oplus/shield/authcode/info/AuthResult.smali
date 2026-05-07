.class public Lcom/oplus/shield/authcode/info/AuthResult;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final mAuthCode:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;

.field private mPermissionTables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/shield/authcode/PermissionTable;",
            ">;"
        }
    .end annotation
.end field

.field private final mPermitBits:[B

.field private final mResultCode:I

.field private mSigSHA256:Ljava/lang/String;

.field private mUpdateTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;I[BLjava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/shield/authcode/info/AuthResult;->mPackageName:Ljava/lang/String;

    iput p2, p0, Lcom/oplus/shield/authcode/info/AuthResult;->mResultCode:I

    iput-object p3, p0, Lcom/oplus/shield/authcode/info/AuthResult;->mPermitBits:[B

    iput-object p4, p0, Lcom/oplus/shield/authcode/info/AuthResult;->mAuthCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public checkPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    iget-object p0, p0, Lcom/oplus/shield/authcode/info/AuthResult;->mPermissionTables:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/shield/authcode/PermissionTable;

    if-eqz p0, :cond_f

    invoke-virtual {p0, p2}, Lcom/oplus/shield/authcode/PermissionTable;->hasPermission(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public getAuthCode()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/shield/authcode/info/AuthResult;->mAuthCode:Ljava/lang/String;

    return-object p0
.end method

.method public getResultCode()I
    .registers 1

    iget p0, p0, Lcom/oplus/shield/authcode/info/AuthResult;->mResultCode:I

    return p0
.end method

.method public getSigSHA256()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/shield/authcode/info/AuthResult;->mSigSHA256:Ljava/lang/String;

    return-object p0
.end method

.method public initPermissionTable()V
    .registers 9

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/shield/authcode/info/AuthResult;->mPermissionTables:Ljava/util/Map;

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/oplus/shield/authcode/info/AuthResult;->mPermitBits:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    const-string v1, ";"

    invoke-static {v0, v1}, Lcom/oplus/shield/utils/SystemUtils;->getSplitString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_74

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_18

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "epona"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_48

    const-string v3, "tingle"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_18

    :cond_48
    iget-object v3, p0, Lcom/oplus/shield/authcode/info/AuthResult;->mPermissionTables:Ljava/util/Map;

    new-instance v5, Lcom/oplus/shield/authcode/PermissionTable;

    invoke-direct {v5, v1}, Lcom/oplus/shield/authcode/PermissionTable;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/oplus/shield/authcode/info/AuthResult;->mPackageName:Ljava/lang/String;

    const-string v6, " Permission : type ["

    const-string v7, "] -"

    invoke-static {v3, v5, v6, v4, v7}, Landroidx/room/s;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/oplus/shield/utils/SystemUtils;->getSplitString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/shield/utils/PLog;->d(Ljava/lang/String;)V

    goto :goto_18

    :cond_74
    return-void
.end method

.method public isExpired()Z
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oplus/shield/authcode/info/AuthResult;->mUpdateTime:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/oplus/shield/Constants;->CACHE_UPDATE_TIME:J

    cmp-long p0, v0, v2

    if-lez p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public setSigSHA256(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/shield/authcode/info/AuthResult;->mSigSHA256:Ljava/lang/String;

    return-void
.end method

.method public setUpdateTime()V
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/shield/authcode/info/AuthResult;->mUpdateTime:J

    return-void
.end method
