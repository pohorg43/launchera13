.class public Lcom/oplus/compat/bluetooth/BluetoothCodecConfigNative;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LongLogTag"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/compat/bluetooth/BluetoothCodecConfigNative$ReflectInfo;
    }
.end annotation


# static fields
.field public static SOURCE_CODEC_TYPE_APTX_ADAPTIVE:I = 0x0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation
.end field

.field public static SOURCE_CODEC_TYPE_APTX_TWSP:I = 0x0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "BluetoothCodecConfigNative"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    :try_start_0
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {}, Lcom/oplus/compat/bluetooth/BluetoothCodecConfigNative$ReflectInfo;->access$000()Lcom/oplus/utils/reflect/RefInt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/utils/reflect/RefInt;->getWithException(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/oplus/compat/bluetooth/BluetoothCodecConfigNative;->SOURCE_CODEC_TYPE_APTX_ADAPTIVE:I

    invoke-static {}, Lcom/oplus/compat/bluetooth/BluetoothCodecConfigNative$ReflectInfo;->access$100()Lcom/oplus/utils/reflect/RefInt;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/utils/reflect/RefInt;->getWithException(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/oplus/compat/bluetooth/BluetoothCodecConfigNative;->SOURCE_CODEC_TYPE_APTX_TWSP:I

    goto :goto_2e

    :cond_1c
    new-instance v0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not support before R"

    invoke-direct {v0, v1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_24
    .catchall {:try_start_0 .. :try_end_24} :catchall_24

    :catchall_24
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothCodecConfigNative"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2e
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
