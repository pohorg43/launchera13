.class Lcom/oplus/compat/net/wifi/WifiConfigurationNative$ReflectInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/net/wifi/WifiConfigurationNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReflectInfo"
.end annotation


# static fields
.field private static apBand:Lcom/oplus/utils/reflect/RefInt;

.field private static apChannel:Lcom/oplus/utils/reflect/RefInt;

.field private static shareThisAp:Lcom/oplus/utils/reflect/RefBoolean;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/oplus/compat/net/wifi/WifiConfigurationNative$ReflectInfo;

    const-class v1, Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0, v1}, Lcom/oplus/utils/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/oplus/utils/reflect/RefInt;
    .registers 1

    sget-object v0, Lcom/oplus/compat/net/wifi/WifiConfigurationNative$ReflectInfo;->apBand:Lcom/oplus/utils/reflect/RefInt;

    return-object v0
.end method

.method public static synthetic access$100()Lcom/oplus/utils/reflect/RefInt;
    .registers 1

    sget-object v0, Lcom/oplus/compat/net/wifi/WifiConfigurationNative$ReflectInfo;->apChannel:Lcom/oplus/utils/reflect/RefInt;

    return-object v0
.end method

.method public static synthetic access$200()Lcom/oplus/utils/reflect/RefBoolean;
    .registers 1

    sget-object v0, Lcom/oplus/compat/net/wifi/WifiConfigurationNative$ReflectInfo;->shareThisAp:Lcom/oplus/utils/reflect/RefBoolean;

    return-object v0
.end method
