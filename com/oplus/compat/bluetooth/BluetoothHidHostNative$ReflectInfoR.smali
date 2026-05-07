.class Lcom/oplus/compat/bluetooth/BluetoothHidHostNative$ReflectInfoR;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/bluetooth/BluetoothHidHostNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReflectInfoR"
.end annotation


# static fields
.field private static connect:Lcom/oplus/utils/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefMethod<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static constructor:Lcom/oplus/utils/reflect/RefConstructor;
    .annotation runtime Lcom/oplus/utils/reflect/MethodName;
        params = {
            Landroid/bluetooth/BluetoothProfile;
        }
    .end annotation
.end field

.field private static disconnect:Lcom/oplus/utils/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefMethod<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static getConnectionState:Lcom/oplus/utils/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefMethod<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion12_0()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-nez v0, :cond_13

    const-class v0, Lcom/oplus/compat/bluetooth/BluetoothHidHostNative$ReflectInfoR;

    const-string v1, "com.oplus.inner.bluetooth.BluetoothHidHostWrapper"

    invoke-static {v0, v1}, Lcom/oplus/utils/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    :cond_13
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/oplus/utils/reflect/RefConstructor;
    .registers 1

    sget-object v0, Lcom/oplus/compat/bluetooth/BluetoothHidHostNative$ReflectInfoR;->constructor:Lcom/oplus/utils/reflect/RefConstructor;

    return-object v0
.end method

.method public static synthetic access$200()Lcom/oplus/utils/reflect/RefMethod;
    .registers 1

    sget-object v0, Lcom/oplus/compat/bluetooth/BluetoothHidHostNative$ReflectInfoR;->connect:Lcom/oplus/utils/reflect/RefMethod;

    return-object v0
.end method

.method public static synthetic access$400()Lcom/oplus/utils/reflect/RefMethod;
    .registers 1

    sget-object v0, Lcom/oplus/compat/bluetooth/BluetoothHidHostNative$ReflectInfoR;->disconnect:Lcom/oplus/utils/reflect/RefMethod;

    return-object v0
.end method

.method public static synthetic access$600()Lcom/oplus/utils/reflect/RefMethod;
    .registers 1

    sget-object v0, Lcom/oplus/compat/bluetooth/BluetoothHidHostNative$ReflectInfoR;->getConnectionState:Lcom/oplus/utils/reflect/RefMethod;

    return-object v0
.end method
