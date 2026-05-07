.class public Lcom/oplus/compatui/LogUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DEBUG_D:Z = true

.field private static final DEBUG_V:Z

.field private static final LOG_LEVEL:I

.field private static final TAG:Ljava/lang/String; = "CompatMode_wmshell"

.field private static final TAG_WITH_CLASS_NAME:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    const-string v0, "log.tag.CompatMode"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/oplus/compatui/LogUtil;->LOG_LEVEL:I

    const-string v1, "persist.sys.assert.panic"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_19

    const/4 v1, 0x5

    if-le v0, v1, :cond_17

    goto :goto_19

    :cond_17
    move v1, v2

    goto :goto_1a

    :cond_19
    :goto_19
    move v1, v3

    :goto_1a
    sput-boolean v1, Lcom/oplus/compatui/LogUtil;->DEBUG_V:Z

    const/16 v1, 0x63

    if-ge v0, v1, :cond_21

    move v2, v3

    :cond_21
    sput-boolean v2, Lcom/oplus/compatui/LogUtil;->TAG_WITH_CLASS_NAME:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTagWithClassName()Z
    .registers 1

    sget-boolean v0, Lcom/oplus/compatui/LogUtil;->TAG_WITH_CLASS_NAME:Z

    return v0
.end method

.method public static logD(Ljava/lang/String;)V
    .registers 2

    const-string v0, "CompatMode_wmshell"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logD(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logI(Ljava/lang/String;)V
    .registers 2

    const-string v0, "CompatMode_wmshell"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logV(Ljava/lang/String;)V
    .registers 2

    sget-boolean v0, Lcom/oplus/compatui/LogUtil;->DEBUG_V:Z

    if-eqz v0, :cond_9

    const-string v0, "CompatMode_wmshell"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method public static logV(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/oplus/compatui/LogUtil;->DEBUG_V:Z

    if-eqz v0, :cond_7

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method
