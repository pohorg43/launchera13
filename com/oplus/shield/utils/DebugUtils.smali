.class public Lcom/oplus/shield/utils/DebugUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/shield/utils/DebugUtils$DebugObserver;
    }
.end annotation


# static fields
.field private static final DEBUG_SETTINGS_KEY:Ljava/lang/String; = "oplus_appplatform_debug"

.field private static final RELEASE_PROPERTY:Ljava/lang/String; = "ro.build.release_type"

.field private static isDebugMode:Z = false

.field private static mIsReleaseVersion:Z = true

.field private static volatile sInstance:Lcom/oplus/shield/utils/DebugUtils;


# instance fields
.field private initialized:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/shield/utils/DebugUtils;->initialized:Z

    return-void
.end method

.method public static synthetic access$100()Z
    .registers 1

    sget-boolean v0, Lcom/oplus/shield/utils/DebugUtils;->isDebugMode:Z

    return v0
.end method

.method public static synthetic access$102(Z)Z
    .registers 1

    sput-boolean p0, Lcom/oplus/shield/utils/DebugUtils;->isDebugMode:Z

    return p0
.end method

.method public static synthetic access$200(Lcom/oplus/shield/utils/DebugUtils;)Z
    .registers 1

    invoke-direct {p0}, Lcom/oplus/shield/utils/DebugUtils;->getDebugMode()Z

    move-result p0

    return p0
.end method

.method private getDebugMode()Z
    .registers 3

    iget-object p0, p0, Lcom/oplus/shield/utils/DebugUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "oplus_appplatform_debug"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_11

    move v1, v0

    :cond_11
    return v1
.end method

.method public static getInstance()Lcom/oplus/shield/utils/DebugUtils;
    .registers 2

    sget-object v0, Lcom/oplus/shield/utils/DebugUtils;->sInstance:Lcom/oplus/shield/utils/DebugUtils;

    if-nez v0, :cond_17

    const-class v0, Lcom/oplus/shield/utils/DebugUtils;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/oplus/shield/utils/DebugUtils;->sInstance:Lcom/oplus/shield/utils/DebugUtils;

    if-nez v1, :cond_12

    new-instance v1, Lcom/oplus/shield/utils/DebugUtils;

    invoke-direct {v1}, Lcom/oplus/shield/utils/DebugUtils;-><init>()V

    sput-object v1, Lcom/oplus/shield/utils/DebugUtils;->sInstance:Lcom/oplus/shield/utils/DebugUtils;

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
    sget-object v0, Lcom/oplus/shield/utils/DebugUtils;->sInstance:Lcom/oplus/shield/utils/DebugUtils;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .registers 6

    iget-boolean v0, p0, Lcom/oplus/shield/utils/DebugUtils;->initialized:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/shield/utils/DebugUtils;->initialized:Z

    const-string v1, "ro.build.release_type"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/shield/utils/DebugUtils;->mIsReleaseVersion:Z

    if-nez v0, :cond_44

    iput-object p1, p0, Lcom/oplus/shield/utils/DebugUtils;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/oplus/shield/utils/DebugUtils;->getDebugMode()Z

    move-result v0

    sput-boolean v0, Lcom/oplus/shield/utils/DebugUtils;->isDebugMode:Z

    const-string v0, "oplus_appplatform_debug"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v1, 0x0

    new-instance v2, Lcom/oplus/shield/utils/DebugUtils$DebugObserver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/oplus/shield/utils/DebugUtils$DebugObserver;-><init>(Lcom/oplus/shield/utils/DebugUtils;Lcom/oplus/shield/utils/DebugUtils$1;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Current MODE is debug mode : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/oplus/shield/utils/DebugUtils;->isDebugMode:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/shield/utils/PLog;->e(Ljava/lang/String;)V

    :cond_44
    return-void
.end method

.method public isDebugMode()Z
    .registers 1

    sget-boolean p0, Lcom/oplus/shield/utils/DebugUtils;->mIsReleaseVersion:Z

    if-nez p0, :cond_a

    sget-boolean p0, Lcom/oplus/shield/utils/DebugUtils;->isDebugMode:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method
