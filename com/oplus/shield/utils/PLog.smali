.class public Lcom/oplus/shield/utils/PLog;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/shield/utils/PLog$LoggerObserver;
    }
.end annotation


# static fields
.field private static final LOG_PROPERTY:Ljava/lang/String; = "persist.sys.assert.panic"

.field private static mIsDebug:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$102(Z)Z
    .registers 1

    sput-boolean p0, Lcom/oplus/shield/utils/PLog;->mIsDebug:Z

    return p0
.end method

.method public static d(Ljava/lang/String;)V
    .registers 2

    sget-boolean v0, Lcom/oplus/shield/utils/PLog;->mIsDebug:Z

    if-eqz v0, :cond_9

    const-string v0, "AppPlatform.Shield"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .registers 2

    const-string v0, "AppPlatform.Shield"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .registers 2

    sget-boolean v0, Lcom/oplus/shield/utils/PLog;->mIsDebug:Z

    if-eqz v0, :cond_9

    const-string v0, "AppPlatform.Shield"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .registers 5

    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/shield/utils/PLog;->mIsDebug:Z

    const-string v0, "log_switch_type"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance v2, Lcom/oplus/shield/utils/PLog$LoggerObserver;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/oplus/shield/utils/PLog$LoggerObserver;-><init>(Lcom/oplus/shield/utils/PLog$1;)V

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public static isDebug()Z
    .registers 1

    sget-boolean v0, Lcom/oplus/shield/utils/PLog;->mIsDebug:Z

    return v0
.end method

.method public static setDebug(Z)V
    .registers 1

    sput-boolean p0, Lcom/oplus/shield/utils/PLog;->mIsDebug:Z

    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .registers 2

    const-string v0, "AppPlatform.Shield"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
