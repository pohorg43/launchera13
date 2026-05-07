.class public Lcom/android/launcher/custom/PictorialUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "PictorialUtils"

.field private static volatile sInstance:Lcom/android/launcher/custom/PictorialUtils;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/launcher/custom/PictorialUtils;
    .registers 2

    sget-object v0, Lcom/android/launcher/custom/PictorialUtils;->sInstance:Lcom/android/launcher/custom/PictorialUtils;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/launcher/custom/PictorialUtils;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/launcher/custom/PictorialUtils;->sInstance:Lcom/android/launcher/custom/PictorialUtils;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/launcher/custom/PictorialUtils;

    invoke-direct {v1}, Lcom/android/launcher/custom/PictorialUtils;-><init>()V

    sput-object v1, Lcom/android/launcher/custom/PictorialUtils;->sInstance:Lcom/android/launcher/custom/PictorialUtils;

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
    sget-object v0, Lcom/android/launcher/custom/PictorialUtils;->sInstance:Lcom/android/launcher/custom/PictorialUtils;

    return-object v0
.end method


# virtual methods
.method public unInstallRmGlPictorial(Landroid/content/Context;)V
    .registers 2

    return-void
.end method
