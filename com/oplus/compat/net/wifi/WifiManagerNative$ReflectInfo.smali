.class Lcom/oplus/compat/net/wifi/WifiManagerNative$ReflectInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/net/wifi/WifiManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReflectInfo"
.end annotation


# static fields
.field private static getSoftApWifiGeneration:Lcom/oplus/utils/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefMethod<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static isDBSSupported:Lcom/oplus/utils/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefMethod<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static isDualBandSupported:Lcom/oplus/utils/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefMethod<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static isWifiApEnabled:Lcom/oplus/utils/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefMethod<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static setWifiEnabled:Lcom/oplus/utils/reflect/RefMethod;
    .annotation runtime Lcom/oplus/utils/reflect/MethodName;
        params = {
            Z
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefMethod<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/oplus/compat/net/wifi/WifiManagerNative$ReflectInfo;

    const-string v1, "android.net.wifi.WifiManager"

    invoke-static {v0, v1}, Lcom/oplus/utils/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$1000()Lcom/oplus/utils/reflect/RefMethod;
    .registers 1

    sget-object v0, Lcom/oplus/compat/net/wifi/WifiManagerNative$ReflectInfo;->getSoftApWifiGeneration:Lcom/oplus/utils/reflect/RefMethod;

    return-object v0
.end method

.method public static synthetic access$1100()Lcom/oplus/utils/reflect/RefMethod;
    .registers 1

    sget-object v0, Lcom/oplus/compat/net/wifi/WifiManagerNative$ReflectInfo;->setWifiEnabled:Lcom/oplus/utils/reflect/RefMethod;

    return-object v0
.end method

.method public static synthetic access$1200()Lcom/oplus/utils/reflect/RefMethod;
    .registers 1

    sget-object v0, Lcom/oplus/compat/net/wifi/WifiManagerNative$ReflectInfo;->isWifiApEnabled:Lcom/oplus/utils/reflect/RefMethod;

    return-object v0
.end method

.method public static synthetic access$1300()Lcom/oplus/utils/reflect/RefMethod;
    .registers 1

    sget-object v0, Lcom/oplus/compat/net/wifi/WifiManagerNative$ReflectInfo;->isDualBandSupported:Lcom/oplus/utils/reflect/RefMethod;

    return-object v0
.end method

.method public static synthetic access$1400()Lcom/oplus/utils/reflect/RefMethod;
    .registers 1

    sget-object v0, Lcom/oplus/compat/net/wifi/WifiManagerNative$ReflectInfo;->isDBSSupported:Lcom/oplus/utils/reflect/RefMethod;

    return-object v0
.end method
