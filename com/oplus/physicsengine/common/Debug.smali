.class public Lcom/oplus/physicsengine/common/Debug;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final COMMON_LOG_TAG:Ljava/lang/String; = "PhysicsWorld"

.field public static final FRAME_LOG_TAG:Ljava/lang/String; = "PhysicsWorld-Frame"

.field public static sDebug:Z

.field public static sDebugFrame:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debugFrame()Z
    .registers 1

    sget-boolean v0, Lcom/oplus/physicsengine/common/Debug;->sDebugFrame:Z

    return v0
.end method

.method public static isDebugMode()Z
    .registers 1

    sget-boolean v0, Lcom/oplus/physicsengine/common/Debug;->sDebug:Z

    return v0
.end method

.method public static logBackTrace(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "PhysicsWorld"

    invoke-static {v1, p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static logD(Ljava/lang/String;)V
    .registers 2

    const-string v0, "PhysicsWorld"

    invoke-static {v0, p0}, Lcom/oplus/physicsengine/common/Debug;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logD(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logE(Ljava/lang/String;)V
    .registers 2

    const-string v0, "PhysicsWorld"

    invoke-static {v0, p0}, Lcom/oplus/physicsengine/common/Debug;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logE(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logThrowable(Ljava/lang/Throwable;)V
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PhysicsWorld"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setDebugMode(Z)V
    .registers 1

    sput-boolean p0, Lcom/oplus/physicsengine/common/Debug;->sDebug:Z

    sput-boolean p0, Lcom/oplus/physicsengine/common/Debug;->sDebugFrame:Z

    return-void
.end method
