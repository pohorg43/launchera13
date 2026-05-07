.class public Lcom/oplus/shield/PermissionCheck;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile sInstance:Lcom/oplus/shield/PermissionCheck;


# instance fields
.field private volatile initialized:Z

.field private mContext:Landroid/content/Context;

.field private mEponaVerifier:Lcom/oplus/shield/verify/EponaVerifier;

.field private mNaviVerifier:Lcom/oplus/shield/verify/NaviVerifier;

.field private mTingleVerifier:Lcom/oplus/shield/verify/TingleVerifier;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/shield/PermissionCheck;->initialized:Z

    return-void
.end method

.method public static getInstance()Lcom/oplus/shield/PermissionCheck;
    .registers 2

    sget-object v0, Lcom/oplus/shield/PermissionCheck;->sInstance:Lcom/oplus/shield/PermissionCheck;

    if-nez v0, :cond_17

    const-class v0, Lcom/oplus/shield/PermissionCheck;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/oplus/shield/PermissionCheck;->sInstance:Lcom/oplus/shield/PermissionCheck;

    if-nez v1, :cond_12

    new-instance v1, Lcom/oplus/shield/PermissionCheck;

    invoke-direct {v1}, Lcom/oplus/shield/PermissionCheck;-><init>()V

    sput-object v1, Lcom/oplus/shield/PermissionCheck;->sInstance:Lcom/oplus/shield/PermissionCheck;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/oplus/shield/PermissionCheck;->sInstance:Lcom/oplus/shield/PermissionCheck;

    return-object v0
.end method

.method private getMasterApplicationPackageName()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/oplus/shield/utils/VersionUtils;->isS()Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "com.oplus.systemcore"

    return-object p0

    :cond_9
    invoke-static {}, Lcom/oplus/shield/Constants;->getAppPlatformPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public declared-synchronized init(Landroid/content/Context;)V
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/oplus/shield/PermissionCheck;->initialized:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_53

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcom/oplus/shield/PermissionCheck;->initialized:Z

    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_f

    goto :goto_13

    :cond_f
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :goto_13
    iput-object p1, p0, Lcom/oplus/shield/PermissionCheck;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_36

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/oplus/shield/PermissionCheck;->getMasterApplicationPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_36

    invoke-static {}, Lcom/oplus/shield/servicemaps/ServiceMap;->initServiceMap()V

    iget-object p1, p0, Lcom/oplus/shield/PermissionCheck;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oplus/shield/utils/PLog;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/oplus/shield/utils/DebugUtils;->getInstance()Lcom/oplus/shield/utils/DebugUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/shield/PermissionCheck;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/oplus/shield/utils/DebugUtils;->init(Landroid/content/Context;)V

    :cond_36
    new-instance p1, Lcom/oplus/shield/verify/EponaVerifier;

    iget-object v0, p0, Lcom/oplus/shield/PermissionCheck;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/oplus/shield/verify/EponaVerifier;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oplus/shield/PermissionCheck;->mEponaVerifier:Lcom/oplus/shield/verify/EponaVerifier;

    new-instance p1, Lcom/oplus/shield/verify/TingleVerifier;

    iget-object v0, p0, Lcom/oplus/shield/PermissionCheck;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/oplus/shield/verify/TingleVerifier;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oplus/shield/PermissionCheck;->mTingleVerifier:Lcom/oplus/shield/verify/TingleVerifier;

    new-instance p1, Lcom/oplus/shield/verify/NaviVerifier;

    iget-object v0, p0, Lcom/oplus/shield/PermissionCheck;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/oplus/shield/verify/NaviVerifier;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oplus/shield/PermissionCheck;->mNaviVerifier:Lcom/oplus/shield/verify/NaviVerifier;
    :try_end_51
    .catchall {:try_start_8 .. :try_end_51} :catchall_53

    monitor-exit p0

    return-void

    :catchall_53
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isValid()Z
    .registers 1

    invoke-static {}, Lcom/oplus/shield/utils/DebugUtils;->getInstance()Lcom/oplus/shield/utils/DebugUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/shield/utils/DebugUtils;->isDebugMode()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public verityEpona(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    iget-object p0, p0, Lcom/oplus/shield/PermissionCheck;->mEponaVerifier:Lcom/oplus/shield/verify/EponaVerifier;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/shield/verify/EponaVerifier;->verify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public verityNavi(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    iget-object p0, p0, Lcom/oplus/shield/PermissionCheck;->mNaviVerifier:Lcom/oplus/shield/verify/NaviVerifier;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/shield/verify/NaviVerifier;->verify(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public verityTingle(Ljava/lang/String;I)Z
    .registers 3

    iget-object p0, p0, Lcom/oplus/shield/PermissionCheck;->mTingleVerifier:Lcom/oplus/shield/verify/TingleVerifier;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/shield/verify/TingleVerifier;->verify(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method
