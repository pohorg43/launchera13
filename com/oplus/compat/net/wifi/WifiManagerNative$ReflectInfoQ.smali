.class Lcom/oplus/compat/net/wifi/WifiManagerNative$ReflectInfoQ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/net/wifi/WifiManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReflectInfoQ"
.end annotation


# static fields
.field private static WIFI_GENERATION_4:Lcom/oplus/utils/reflect/RefInt;

.field private static WIFI_GENERATION_5:Lcom/oplus/utils/reflect/RefInt;

.field private static WIFI_GENERATION_6:Lcom/oplus/utils/reflect/RefInt;

.field private static WIFI_GENERATION_DEFAULT:Lcom/oplus/utils/reflect/RefInt;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-nez v0, :cond_13

    const-class v0, Lcom/oplus/compat/net/wifi/WifiManagerNative$ReflectInfoQ;

    const-string v1, "android.net.wifi.WifiManager"

    invoke-static {v0, v1}, Lcom/oplus/utils/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    :cond_13
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$300()Lcom/oplus/utils/reflect/RefInt;
    .registers 1

    sget-object v0, Lcom/oplus/compat/net/wifi/WifiManagerNative$ReflectInfoQ;->WIFI_GENERATION_DEFAULT:Lcom/oplus/utils/reflect/RefInt;

    return-object v0
.end method

.method public static synthetic access$400()Lcom/oplus/utils/reflect/RefInt;
    .registers 1

    sget-object v0, Lcom/oplus/compat/net/wifi/WifiManagerNative$ReflectInfoQ;->WIFI_GENERATION_4:Lcom/oplus/utils/reflect/RefInt;

    return-object v0
.end method

.method public static synthetic access$500()Lcom/oplus/utils/reflect/RefInt;
    .registers 1

    sget-object v0, Lcom/oplus/compat/net/wifi/WifiManagerNative$ReflectInfoQ;->WIFI_GENERATION_5:Lcom/oplus/utils/reflect/RefInt;

    return-object v0
.end method

.method public static synthetic access$600()Lcom/oplus/utils/reflect/RefInt;
    .registers 1

    sget-object v0, Lcom/oplus/compat/net/wifi/WifiManagerNative$ReflectInfoQ;->WIFI_GENERATION_6:Lcom/oplus/utils/reflect/RefInt;

    return-object v0
.end method
