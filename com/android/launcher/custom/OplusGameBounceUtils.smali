.class public Lcom/android/launcher/custom/OplusGameBounceUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile sInstance:Lcom/android/launcher/custom/OplusGameBounceUtils;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/launcher/custom/OplusGameBounceUtils;
    .registers 2

    sget-object v0, Lcom/android/launcher/custom/OplusGameBounceUtils;->sInstance:Lcom/android/launcher/custom/OplusGameBounceUtils;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/launcher/custom/OplusGameBounceUtils;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/launcher/custom/OplusGameBounceUtils;->sInstance:Lcom/android/launcher/custom/OplusGameBounceUtils;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/launcher/custom/OplusGameBounceUtils;

    invoke-direct {v1}, Lcom/android/launcher/custom/OplusGameBounceUtils;-><init>()V

    sput-object v1, Lcom/android/launcher/custom/OplusGameBounceUtils;->sInstance:Lcom/android/launcher/custom/OplusGameBounceUtils;

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
    sget-object v0, Lcom/android/launcher/custom/OplusGameBounceUtils;->sInstance:Lcom/android/launcher/custom/OplusGameBounceUtils;

    return-object v0
.end method

.method public static onLauncherStarted(Lcom/android/launcher/Launcher;)V
    .registers 1

    return-void
.end method

.method public static sendRemovePackageBroadcast(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    return-void
.end method


# virtual methods
.method public isGameOpenPackage(Ljava/lang/Object;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public isGameOpenPackage(Ljava/lang/String;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public registerGameBounceListener(Landroid/content/Context;)V
    .registers 2

    return-void
.end method

.method public resetGameBouncePackage()V
    .registers 1

    return-void
.end method

.method public unregisterGameBounceListener(Landroid/content/Context;)V
    .registers 2

    return-void
.end method
