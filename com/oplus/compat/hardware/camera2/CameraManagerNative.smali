.class public Lcom/oplus/compat/hardware/camera2/CameraManagerNative;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/oplus/compat/annotation/OplusApi;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraManagerNative"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAuthResultInfo(Landroid/content/Context;IIILjava/lang/String;)V
    .registers 12
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/OplusApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_1d

    :try_start_6
    invoke-static {}, Landroid/hardware/camera2/OplusCameraManager;->getInstance()Landroid/hardware/camera2/OplusCameraManager;

    move-result-object v1

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/hardware/camera2/OplusCameraManager;->addAuthResultInfo(Landroid/content/Context;IIILjava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/NoSuchMethodError; {:try_start_6 .. :try_end_12} :catch_13

    goto :goto_2e

    :catch_13
    move-exception p0

    const-string p1, "CameraManagerNative"

    const-string p2, "no permission to access the blocked method"

    invoke-static {p0, p1, p2, p0}, Lcom/oplus/compat/app/e;->a(Ljava/lang/NoSuchMethodError;Ljava/lang/String;Ljava/lang/String;Ljava/lang/NoSuchMethodError;)Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    move-result-object p0

    throw p0

    :cond_1d
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string v0, "camera"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CameraManager;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/oplus/compat/hardware/camera2/CameraManagerNative;->addAuthResultInfoQCompat(Landroid/hardware/camera2/CameraManager;IIILjava/lang/String;)V

    :goto_2e
    return-void

    :cond_2f
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "Not supported before Q"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static addAuthResultInfoQCompat(Landroid/hardware/camera2/CameraManager;IIILjava/lang/String;)V
    .registers 5
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    return-void
.end method

.method public static setDeathRecipient(Landroid/hardware/camera2/CameraManager;Landroid/os/IBinder;)V
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/OplusApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_18

    :try_start_6
    invoke-static {}, Landroid/hardware/camera2/OplusCameraManager;->getInstance()Landroid/hardware/camera2/OplusCameraManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/OplusCameraManager;->setDeathRecipient(Landroid/os/IBinder;)V
    :try_end_d
    .catch Ljava/lang/NoSuchMethodError; {:try_start_6 .. :try_end_d} :catch_e

    goto :goto_21

    :catch_e
    move-exception p0

    const-string p1, "CameraManagerNative"

    const-string v0, "no permission to access the blocked method"

    invoke-static {p0, p1, v0, p0}, Lcom/oplus/compat/app/e;->a(Ljava/lang/NoSuchMethodError;Ljava/lang/String;Ljava/lang/String;Ljava/lang/NoSuchMethodError;)Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    move-result-object p0

    throw p0

    :cond_18
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {p0, p1}, Lcom/oplus/compat/hardware/camera2/CameraManagerNative;->setDeathRecipientQCompat(Landroid/hardware/camera2/CameraManager;Landroid/os/IBinder;)V

    :goto_21
    return-void

    :cond_22
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "Not supported before Q"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static setDeathRecipientQCompat(Landroid/hardware/camera2/CameraManager;Landroid/os/IBinder;)V
    .registers 2
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    return-void
.end method
