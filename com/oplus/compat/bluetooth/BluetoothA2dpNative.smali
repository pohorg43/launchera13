.class public Lcom/oplus/compat/bluetooth/BluetoothA2dpNative;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothA2dpNative"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static connect(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;)Z
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0

    :cond_b
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {p0, p1}, Lcom/oplus/inner/bluetooth/BluetoothA2dpWrapper;->connect(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0

    :cond_16
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {p0, p1}, Lcom/oplus/compat/bluetooth/BluetoothA2dpNative;->connectForCompat(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_27
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
    :try_end_2d
    .catchall {:try_start_0 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BluetoothA2dpNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private static connectForCompat(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/Object;
    .registers 2
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static disconnect(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;)Z
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0

    :cond_b
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {p0, p1}, Lcom/oplus/inner/bluetooth/BluetoothA2dpWrapper;->disconnect(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0

    :cond_16
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {p0, p1}, Lcom/oplus/compat/bluetooth/BluetoothA2dpNative;->disconnectForCompat(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_27
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
    :try_end_2d
    .catchall {:try_start_0 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BluetoothA2dpNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private static disconnectForCompat(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/Object;
    .registers 2
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getActiveDevice(Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothDevice;
    .registers 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothA2dp;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {p0}, Lcom/oplus/inner/bluetooth/BluetoothA2dpWrapper;->getActiveDevice(Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    return-object p0

    :cond_16
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-static {p0}, Lcom/oplus/compat/bluetooth/BluetoothA2dpNative;->getActiveDeviceForCompat(Landroid/bluetooth/BluetoothA2dp;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothDevice;

    return-object p0

    :cond_23
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
    :try_end_29
    .catchall {:try_start_0 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BluetoothA2dpNative"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getActiveDeviceForCompat(Landroid/bluetooth/BluetoothA2dp;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static setActiveDevice(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;)Z
    .registers 3
    .param p0  # Landroid/bluetooth/BluetoothA2dp;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0

    :cond_b
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {p0, p1}, Lcom/oplus/inner/bluetooth/BluetoothA2dpWrapper;->setActiveDevice(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0

    :cond_16
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {p0, p1}, Lcom/oplus/compat/bluetooth/BluetoothA2dpNative;->setActiveDeviceForCompat(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_27
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
    :try_end_2d
    .catchall {:try_start_0 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    new-instance p1, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p1, p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static setActiveDeviceForCompat(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/Object;
    .registers 2
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method
