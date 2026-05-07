.class public Lcom/oplus/utils/Logger;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/utils/Logger$LoggerObserver;
    }
.end annotation


# static fields
.field private static sDEBUG:Z

.field private static sInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static volatile sInstance:Lcom/oplus/utils/Logger;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lcom/oplus/utils/Logger;->getDebugMode()Z

    move-result v0

    sput-boolean v0, Lcom/oplus/utils/Logger;->sDEBUG:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/oplus/utils/Logger;->sInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$102(Z)Z
    .registers 1

    sput-boolean p0, Lcom/oplus/utils/Logger;->sDEBUG:Z

    return p0
.end method

.method public static synthetic access$200()Z
    .registers 1

    invoke-static {}, Lcom/oplus/utils/Logger;->getDebugMode()Z

    move-result v0

    return v0
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-boolean v0, Lcom/oplus/utils/Logger;->sDEBUG:Z

    if-eqz v0, :cond_b

    invoke-static {p1, p2}, Lcom/oplus/utils/Logger;->formatMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-boolean v0, Lcom/oplus/utils/Logger;->sDEBUG:Z

    if-eqz v0, :cond_b

    invoke-static {p1, p2}, Lcom/oplus/utils/Logger;->formatMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void
.end method

.method private static formatMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p1  # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    :cond_5
    array-length v0, p1

    if-lez v0, :cond_c

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :cond_c
    return-object p0
.end method

.method private static getDebugMode()Z
    .registers 2

    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getInstance()Lcom/oplus/utils/Logger;
    .registers 2

    sget-object v0, Lcom/oplus/utils/Logger;->sInstance:Lcom/oplus/utils/Logger;

    if-nez v0, :cond_17

    const-class v0, Lcom/oplus/utils/Logger;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/oplus/utils/Logger;->sInstance:Lcom/oplus/utils/Logger;

    if-nez v1, :cond_12

    new-instance v1, Lcom/oplus/utils/Logger;

    invoke-direct {v1}, Lcom/oplus/utils/Logger;-><init>()V

    sput-object v1, Lcom/oplus/utils/Logger;->sInstance:Lcom/oplus/utils/Logger;

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
    sget-object v0, Lcom/oplus/utils/Logger;->sInstance:Lcom/oplus/utils/Logger;

    return-object v0
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-boolean v0, Lcom/oplus/utils/Logger;->sDEBUG:Z

    if-eqz v0, :cond_b

    invoke-static {p1, p2}, Lcom/oplus/utils/Logger;->formatMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void
.end method

.method public static isDebug()Z
    .registers 1

    sget-boolean v0, Lcom/oplus/utils/Logger;->sDEBUG:Z

    return v0
.end method

.method public static setDebug(Z)V
    .registers 1

    sput-boolean p0, Lcom/oplus/utils/Logger;->sDEBUG:Z

    return-void
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-boolean v0, Lcom/oplus/utils/Logger;->sDEBUG:Z

    if-eqz v0, :cond_b

    invoke-static {p1, p2}, Lcom/oplus/utils/Logger;->formatMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-boolean v0, Lcom/oplus/utils/Logger;->sDEBUG:Z

    if-eqz v0, :cond_b

    invoke-static {p1, p2}, Lcom/oplus/utils/Logger;->formatMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .registers 5

    sget-object p0, Lcom/oplus/utils/Logger;->sInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p0

    if-eqz p0, :cond_a

    return-void

    :cond_a
    if-eqz p1, :cond_26

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-eqz p0, :cond_26

    const-string p0, "log_switch_type"

    invoke-static {p0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    new-instance v1, Lcom/oplus/utils/Logger$LoggerObserver;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/oplus/utils/Logger$LoggerObserver;-><init>(Lcom/oplus/utils/Logger$1;)V

    invoke-virtual {p1, p0, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_26
    return-void
.end method
