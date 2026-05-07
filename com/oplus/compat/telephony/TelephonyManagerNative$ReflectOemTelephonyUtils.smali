.class Lcom/oplus/compat/telephony/TelephonyManagerNative$ReflectOemTelephonyUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/telephony/TelephonyManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReflectOemTelephonyUtils"
.end annotation


# static fields
.field private static NETWORK_CLASS_2_G:Lcom/oplus/utils/reflect/RefInt;

.field private static NETWORK_CLASS_3_G:Lcom/oplus/utils/reflect/RefInt;

.field private static NETWORK_CLASS_4_G:Lcom/oplus/utils/reflect/RefInt;

.field private static NETWORK_CLASS_5_G:Lcom/oplus/utils/reflect/RefInt;

.field private static Type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/oplus/compat/telephony/TelephonyManagerNative$ReflectOemTelephonyUtils;

    const-string v1, "com.oplus.internal.telephony.utils.OemTelephonyUtils"

    invoke-static {v0, v1}, Lcom/oplus/utils/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/oplus/compat/telephony/TelephonyManagerNative$ReflectOemTelephonyUtils;->Type:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/oplus/utils/reflect/RefInt;
    .registers 1

    sget-object v0, Lcom/oplus/compat/telephony/TelephonyManagerNative$ReflectOemTelephonyUtils;->NETWORK_CLASS_2_G:Lcom/oplus/utils/reflect/RefInt;

    return-object v0
.end method

.method public static synthetic access$100()Lcom/oplus/utils/reflect/RefInt;
    .registers 1

    sget-object v0, Lcom/oplus/compat/telephony/TelephonyManagerNative$ReflectOemTelephonyUtils;->NETWORK_CLASS_3_G:Lcom/oplus/utils/reflect/RefInt;

    return-object v0
.end method

.method public static synthetic access$200()Lcom/oplus/utils/reflect/RefInt;
    .registers 1

    sget-object v0, Lcom/oplus/compat/telephony/TelephonyManagerNative$ReflectOemTelephonyUtils;->NETWORK_CLASS_4_G:Lcom/oplus/utils/reflect/RefInt;

    return-object v0
.end method

.method public static synthetic access$300()Lcom/oplus/utils/reflect/RefInt;
    .registers 1

    sget-object v0, Lcom/oplus/compat/telephony/TelephonyManagerNative$ReflectOemTelephonyUtils;->NETWORK_CLASS_5_G:Lcom/oplus/utils/reflect/RefInt;

    return-object v0
.end method
