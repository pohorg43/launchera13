.class public Lcom/android/wm/shell/startingsurface/StartingWindowBooster;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DEBUG_PANIC:Z

.field private static final TAG:Ljava/lang/String; = "StartingWindowBooster"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/startingsurface/StartingWindowBooster;->DEBUG_PANIC:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static notifyUIFirstWhenAddStartingWindow(ZZI)V
    .registers 10

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    const/16 v1, 0x82

    goto :goto_7

    :cond_6
    move v1, v0

    :goto_7
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    sget-boolean v3, Lcom/android/wm/shell/startingsurface/StartingWindowBooster;->DEBUG_PANIC:Z

    if-eqz v3, :cond_2c

    sget-object v3, Lcom/android/wm/shell/startingsurface/StartingWindowBooster;->TAG:Ljava/lang/String;

    const-string v4, "notifyUIFirstWhenAddStartingWindow applyToUx="

    const-string v5, ", applyToRender="

    const-string v6, ", myPid="

    invoke-static {v4, p0, v5, p1, v6}, Lcom/android/common/util/b0;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v4, ",tid="

    const-string v5, ", uxValue="

    invoke-static {p0, v2, v4, p2, v5}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    sget-object p0, Lcom/oplus/uifirst/IOplusUIFirstManager;->DEFAULT:Lcom/oplus/uifirst/IOplusUIFirstManager;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p0, v3}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object p0

    check-cast p0, Lcom/oplus/uifirst/IOplusUIFirstManager;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v2, p2, v3}, Lcom/oplus/uifirst/IOplusUIFirstManager;->setUxThreadValue(IILjava/lang/String;)V

    if-eqz p1, :cond_4c

    sget-object p0, Lcom/oplus/uifirst/IOplusUIFirstManager;->DEFAULT:Lcom/oplus/uifirst/IOplusUIFirstManager;

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object p0

    check-cast p0, Lcom/oplus/uifirst/IOplusUIFirstManager;

    invoke-interface {p0, v2, v1}, Lcom/oplus/uifirst/IOplusUIFirstManager;->setProcessUxValue(II)V

    :cond_4c
    return-void
.end method
