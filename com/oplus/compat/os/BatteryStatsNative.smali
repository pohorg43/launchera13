.class public Lcom/oplus/compat/os/BatteryStatsNative;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final COMPONENT_NAME:Ljava/lang/String; = "android.os.BatteryStats"

.field private static final RESULT:Ljava/lang/String; = "result"

.field public static STATS_SINCE_CHARGED:I = 0x0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "BatteryStatsNative"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    :try_start_0
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/oplus/compat/os/BatteryStatsNative;->getStatsSinceCharged()I

    move-result v0

    sput v0, Lcom/oplus/compat/os/BatteryStatsNative;->STATS_SINCE_CHARGED:I

    goto :goto_1f

    :cond_d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not support before Q"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_15

    :catchall_15
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryStatsNative"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1f
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getStatsSinceCharged()I
    .registers 4

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->appPlatformExists()Z

    move-result v0

    const-string v1, "BatteryStatsNative"

    const/4 v2, 0x0

    if-nez v0, :cond_16

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_10

    return v2

    :cond_10
    const-string v0, "not supported before Q"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    :cond_16
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_1d

    return v2

    :cond_1d
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_41

    const-string v0, "android.os.BatteryStats"

    const-string v3, "STATS_SINCE_CHARGED"

    invoke-static {v0, v3}, Lcom/android/launcher/filter/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/epona/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-virtual {v0}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_3c
    const-string v0, "STATS_SINCE_CHARGED is not connected with Epona"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    :goto_41
    return v2
.end method
