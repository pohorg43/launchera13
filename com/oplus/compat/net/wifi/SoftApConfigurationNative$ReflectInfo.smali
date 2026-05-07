.class Lcom/oplus/compat/net/wifi/SoftApConfigurationNative$ReflectInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/net/wifi/SoftApConfigurationNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReflectInfo"
.end annotation


# static fields
.field private static BAND_DUAL:Lcom/oplus/utils/reflect/RefInt;

.field private static SECURITY_TYPE_OWE:Lcom/oplus/utils/reflect/RefInt;

.field private static SECURITY_TYPE_SAE:Lcom/oplus/utils/reflect/RefInt;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/oplus/compat/net/wifi/SoftApConfigurationNative$ReflectInfo;

    const-string v1, "android.net.wifi.SoftApConfiguration"

    invoke-static {v0, v1}, Lcom/oplus/utils/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/oplus/utils/reflect/RefInt;
    .registers 1

    sget-object v0, Lcom/oplus/compat/net/wifi/SoftApConfigurationNative$ReflectInfo;->SECURITY_TYPE_OWE:Lcom/oplus/utils/reflect/RefInt;

    return-object v0
.end method

.method public static synthetic access$100()Lcom/oplus/utils/reflect/RefInt;
    .registers 1

    sget-object v0, Lcom/oplus/compat/net/wifi/SoftApConfigurationNative$ReflectInfo;->SECURITY_TYPE_SAE:Lcom/oplus/utils/reflect/RefInt;

    return-object v0
.end method

.method public static synthetic access$200()Lcom/oplus/utils/reflect/RefInt;
    .registers 1

    sget-object v0, Lcom/oplus/compat/net/wifi/SoftApConfigurationNative$ReflectInfo;->BAND_DUAL:Lcom/oplus/utils/reflect/RefInt;

    return-object v0
.end method
