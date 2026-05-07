.class public Lcom/oplus/compat/telephony/CarrierConfigManagerNative;
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
        Lcom/oplus/compat/telephony/CarrierConfigManagerNative$ReflectInfo;
    }
.end annotation


# static fields
.field public static KEY_CARRIER_ALLOW_TRANSFER_IMS_CALL_BOOL:Ljava/lang/String; = null
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation
.end field

.field public static KEY_CARRIER_SUPPORTS_MULTIANCHOR_CONFERENCE:Ljava/lang/String; = null
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation
.end field

.field public static KEY_CARRIER_WFC_SUPPORTS_IMS_PREFERRED_BOOL:Ljava/lang/String; = null
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation
.end field

.field public static KEY_CDMA_CW_CF_ENABLED_BOOL:Ljava/lang/String; = null
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation
.end field

.field public static KEY_HIDE_ENABLED_5G_BOOL:Ljava/lang/String; = null
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CarrierConfigManagerNative"


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-string v0, "CarrierConfigManagerNative"

    :try_start_2
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-static {}, Lcom/oplus/compat/telephony/CarrierConfigManagerNative$ReflectInfo;->access$000()Lcom/oplus/utils/reflect/RefObject;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oplus/utils/reflect/RefObject;->getWithException(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/oplus/compat/telephony/CarrierConfigManagerNative;->KEY_CDMA_CW_CF_ENABLED_BOOL:Ljava/lang/String;

    invoke-static {}, Lcom/oplus/compat/telephony/CarrierConfigManagerNative$ReflectInfo;->access$100()Lcom/oplus/utils/reflect/RefObject;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/oplus/utils/reflect/RefObject;->getWithException(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/oplus/compat/telephony/CarrierConfigManagerNative;->KEY_CARRIER_ALLOW_TRANSFER_IMS_CALL_BOOL:Ljava/lang/String;

    invoke-static {}, Lcom/oplus/compat/telephony/CarrierConfigManagerNative$ReflectInfo;->access$200()Lcom/oplus/utils/reflect/RefObject;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/oplus/utils/reflect/RefObject;->getWithException(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/oplus/compat/telephony/CarrierConfigManagerNative;->KEY_CARRIER_SUPPORTS_MULTIANCHOR_CONFERENCE:Ljava/lang/String;

    invoke-static {}, Lcom/oplus/compat/telephony/CarrierConfigManagerNative$ReflectInfo;->access$300()Lcom/oplus/utils/reflect/RefObject;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/oplus/utils/reflect/RefObject;->getWithException(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/oplus/compat/telephony/CarrierConfigManagerNative;->KEY_CARRIER_WFC_SUPPORTS_IMS_PREFERRED_BOOL:Ljava/lang/String;

    invoke-static {}, Lcom/oplus/compat/telephony/CarrierConfigManagerNative$ReflectInfo;->access$400()Lcom/oplus/utils/reflect/RefObject;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/oplus/utils/reflect/RefObject;->getWithException(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/oplus/compat/telephony/CarrierConfigManagerNative;->KEY_HIDE_ENABLED_5G_BOOL:Ljava/lang/String;

    goto :goto_54

    :cond_46
    const-string v1, "not supported before R"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4b} :catch_4c

    goto :goto_54

    :catch_4c
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_54
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultConfig()Landroid/os/PersistableBundle;
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/oplus/compat/telephony/CarrierConfigManagerNative$ReflectInfo;->access$500()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersistableBundle;

    return-object v0

    :cond_15
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {}, Lcom/oplus/compat/telephony/CarrierConfigManagerNative;->getDefaultConfigCompat()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersistableBundle;

    return-object v0

    :cond_22
    new-instance v0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before Q"

    invoke-direct {v0, v1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getDefaultConfigCompat()Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
