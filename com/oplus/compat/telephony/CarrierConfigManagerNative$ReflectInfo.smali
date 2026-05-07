.class Lcom/oplus/compat/telephony/CarrierConfigManagerNative$ReflectInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/telephony/CarrierConfigManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReflectInfo"
.end annotation


# static fields
.field private static KEY_CARRIER_ALLOW_TRANSFER_IMS_CALL_BOOL:Lcom/oplus/utils/reflect/RefObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefObject<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static KEY_CARRIER_SUPPORTS_MULTIANCHOR_CONFERENCE:Lcom/oplus/utils/reflect/RefObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefObject<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static KEY_CARRIER_WFC_SUPPORTS_IMS_PREFERRED_BOOL:Lcom/oplus/utils/reflect/RefObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefObject<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static KEY_CDMA_CW_CF_ENABLED_BOOL:Lcom/oplus/utils/reflect/RefObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefObject<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static KEY_HIDE_ENABLED_5G_BOOL:Lcom/oplus/utils/reflect/RefObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefObject<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static getDefaultConfig:Lcom/oplus/utils/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefMethod<",
            "Landroid/os/PersistableBundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/oplus/compat/telephony/CarrierConfigManagerNative$ReflectInfo;

    const-class v1, Landroid/telephony/CarrierConfigManager;

    invoke-static {v0, v1}, Lcom/oplus/utils/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/oplus/utils/reflect/RefObject;
    .registers 1

    sget-object v0, Lcom/oplus/compat/telephony/CarrierConfigManagerNative$ReflectInfo;->KEY_CDMA_CW_CF_ENABLED_BOOL:Lcom/oplus/utils/reflect/RefObject;

    return-object v0
.end method

.method public static synthetic access$100()Lcom/oplus/utils/reflect/RefObject;
    .registers 1

    sget-object v0, Lcom/oplus/compat/telephony/CarrierConfigManagerNative$ReflectInfo;->KEY_CARRIER_ALLOW_TRANSFER_IMS_CALL_BOOL:Lcom/oplus/utils/reflect/RefObject;

    return-object v0
.end method

.method public static synthetic access$200()Lcom/oplus/utils/reflect/RefObject;
    .registers 1

    sget-object v0, Lcom/oplus/compat/telephony/CarrierConfigManagerNative$ReflectInfo;->KEY_CARRIER_SUPPORTS_MULTIANCHOR_CONFERENCE:Lcom/oplus/utils/reflect/RefObject;

    return-object v0
.end method

.method public static synthetic access$300()Lcom/oplus/utils/reflect/RefObject;
    .registers 1

    sget-object v0, Lcom/oplus/compat/telephony/CarrierConfigManagerNative$ReflectInfo;->KEY_CARRIER_WFC_SUPPORTS_IMS_PREFERRED_BOOL:Lcom/oplus/utils/reflect/RefObject;

    return-object v0
.end method

.method public static synthetic access$400()Lcom/oplus/utils/reflect/RefObject;
    .registers 1

    sget-object v0, Lcom/oplus/compat/telephony/CarrierConfigManagerNative$ReflectInfo;->KEY_HIDE_ENABLED_5G_BOOL:Lcom/oplus/utils/reflect/RefObject;

    return-object v0
.end method

.method public static synthetic access$500()Lcom/oplus/utils/reflect/RefMethod;
    .registers 1

    sget-object v0, Lcom/oplus/compat/telephony/CarrierConfigManagerNative$ReflectInfo;->getDefaultConfig:Lcom/oplus/utils/reflect/RefMethod;

    return-object v0
.end method
