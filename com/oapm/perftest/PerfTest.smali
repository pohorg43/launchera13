.class public Lcom/oapm/perftest/PerfTest;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSQLiteConcernDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 1

    return-void
.end method

.method public static beginDefinedStartup(Ljava/lang/String;)V
    .registers 1

    return-void
.end method

.method public static endDefinedStartup(Ljava/lang/String;)V
    .registers 1

    return-void
.end method

.method public static initOApm(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    return-void
.end method

.method public static isInAnalyzerProcess(Landroid/content/Context;)Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public static isOapmProcess(Landroid/content/Context;)Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public static isOnline()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static leakWatch(Ljava/lang/Object;)V
    .registers 1

    return-void
.end method

.method public static markNativeLeakScene(Ljava/lang/String;)V
    .registers 1

    return-void
.end method

.method public static setBlockThreshold(I)V
    .registers 1

    return-void
.end method

.method public static setNetRequestEnable(Z)V
    .registers 1

    return-void
.end method

.method public static startFrameScene(Ljava/lang/String;)V
    .registers 1

    return-void
.end method

.method public static stopFrameScene()V
    .registers 0

    return-void
.end method

.method public static uploadHprof()V
    .registers 0

    return-void
.end method
