.class public Lcom/oplus/compat/net/wifi/WifiConfigurationNative;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/compat/net/wifi/WifiConfigurationNative$KeyMgmtNative;,
        Lcom/oplus/compat/net/wifi/WifiConfigurationNative$RefKeyMgmtInfo;,
        Lcom/oplus/compat/net/wifi/WifiConfigurationNative$ReflectInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiConfigurationNative"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$400()Ljava/lang/Object;
    .registers 1

    invoke-static {}, Lcom/oplus/compat/net/wifi/WifiConfigurationNative;->getWapiPSKCompat()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic access$500()Ljava/lang/Object;
    .registers 1

    invoke-static {}, Lcom/oplus/compat/net/wifi/WifiConfigurationNative;->getWapiCERTCompat()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getApBand(Landroid/net/wifi/WifiConfiguration;)I
    .registers 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/oplus/compat/net/wifi/WifiConfigurationNative$ReflectInfo;->access$000()Lcom/oplus/utils/reflect/RefInt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/utils/reflect/RefInt;->get(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_f
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {p0}, Lcom/oplus/compat/net/wifi/WifiConfigurationNative;->getApBandCompat(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_20
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isM()Z

    move-result v0

    if-eqz v0, :cond_29

    iget p0, p0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    return p0

    :cond_29
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string v0, "not supported before M"

    invoke-direct {p0, v0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getApBandCompat(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getApChannel(Landroid/net/wifi/WifiConfiguration;)I
    .registers 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/oplus/compat/net/wifi/WifiConfigurationNative$ReflectInfo;->access$100()Lcom/oplus/utils/reflect/RefInt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/utils/reflect/RefInt;->get(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_f
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {p0}, Lcom/oplus/compat/net/wifi/WifiConfigurationNative;->getApChannelCompat(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_20
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isM()Z

    move-result v0

    if-eqz v0, :cond_29

    iget p0, p0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    return p0

    :cond_29
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string v0, "not supported before M"

    invoke-direct {p0, v0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getApChannelCompat(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getShareThisAp(Landroid/net/wifi/WifiConfiguration;)Z
    .registers 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/oplus/compat/net/wifi/WifiConfigurationNative$ReflectInfo;->access$200()Lcom/oplus/utils/reflect/RefBoolean;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/utils/reflect/RefBoolean;->get(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_15
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string v0, "not support before R"

    invoke-direct {p0, v0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1d
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string v0, "not supported in S"

    invoke-direct {p0, v0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getWapiCERTCompat()Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getWapiCertSel(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {p0}, Lcom/oplus/compat/net/wifi/WifiConfigurationNative;->getWapiCertSelCompat(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_13
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0

    :cond_19
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string v0, "not supported in R"

    invoke-direct {p0, v0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getWapiCertSelCompat(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getWapiCertSelMode(Landroid/net/wifi/WifiConfiguration;)I
    .registers 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {p0}, Lcom/oplus/compat/net/wifi/WifiConfigurationNative;->getWapiCertSelModeCompat(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_17
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0

    :cond_1d
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string v0, "not supported in R"

    invoke-direct {p0, v0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getWapiCertSelModeCompat(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getWapiPSKCompat()Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getWapiPsk(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {p0}, Lcom/oplus/compat/net/wifi/WifiConfigurationNative;->getWapiPskCompat(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_13
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0

    :cond_19
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string v0, "not supported in R"

    invoke-direct {p0, v0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getWapiPskCompat(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getWapiPskType(Landroid/net/wifi/WifiConfiguration;)I
    .registers 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {p0}, Lcom/oplus/compat/net/wifi/WifiConfigurationNative;->getWapiPskTypeCompat(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_17
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0

    :cond_1d
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string v0, "not supported in R"

    invoke-direct {p0, v0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getWapiPskTypeCompat(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static setApBand(Landroid/net/wifi/WifiConfiguration;I)V
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/oplus/compat/net/wifi/WifiConfigurationNative$ReflectInfo;->access$000()Lcom/oplus/utils/reflect/RefInt;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oplus/utils/reflect/RefInt;->set(Ljava/lang/Object;I)V

    goto :goto_20

    :cond_e
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {p0, p1}, Lcom/oplus/compat/net/wifi/WifiConfigurationNative;->setApBandCompat(Landroid/net/wifi/WifiConfiguration;I)V

    goto :goto_20

    :cond_18
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isM()Z

    move-result v0

    if-eqz v0, :cond_21

    iput p1, p0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    :goto_20
    return-void

    :cond_21
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "not supported before M"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static setApBandCompat(Landroid/net/wifi/WifiConfiguration;I)V
    .registers 2
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    return-void
.end method

.method public static setApChannel(Landroid/net/wifi/WifiConfiguration;I)V
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/oplus/compat/net/wifi/WifiConfigurationNative$ReflectInfo;->access$100()Lcom/oplus/utils/reflect/RefInt;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oplus/utils/reflect/RefInt;->set(Ljava/lang/Object;I)V

    goto :goto_20

    :cond_e
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {p0, p1}, Lcom/oplus/compat/net/wifi/WifiConfigurationNative;->setApChannelCompat(Landroid/net/wifi/WifiConfiguration;I)V

    goto :goto_20

    :cond_18
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isM()Z

    move-result v0

    if-eqz v0, :cond_21

    iput p1, p0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    :goto_20
    return-void

    :cond_21
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "not supported before M"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static setApChannelCompat(Landroid/net/wifi/WifiConfiguration;I)V
    .registers 2
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    return-void
.end method

.method public static setShareThisAp(Landroid/net/wifi/WifiConfiguration;Z)V
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/oplus/compat/net/wifi/WifiConfigurationNative$ReflectInfo;->access$200()Lcom/oplus/utils/reflect/RefBoolean;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oplus/utils/reflect/RefBoolean;->set(Ljava/lang/Object;Z)V

    return-void

    :cond_14
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "not support before R"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1c
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "not supported in S"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setWapiCertSel(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {p0, p1}, Lcom/oplus/compat/net/wifi/WifiConfigurationNative;->setWapiCertSelCompat(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    return-void

    :cond_10
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0

    :cond_16
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "not supported in R"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static setWapiCertSelCompat(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .registers 2
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    return-void
.end method

.method public static setWapiCertSelMode(Landroid/net/wifi/WifiConfiguration;I)V
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {p0, p1}, Lcom/oplus/compat/net/wifi/WifiConfigurationNative;->setWapiCertSelModeCompat(Landroid/net/wifi/WifiConfiguration;I)V

    return-void

    :cond_10
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0

    :cond_16
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "not supported in R"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static setWapiCertSelModeCompat(Landroid/net/wifi/WifiConfiguration;I)V
    .registers 2
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    return-void
.end method

.method public static setWapiPsk(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {p0, p1}, Lcom/oplus/compat/net/wifi/WifiConfigurationNative;->setWapiPskCompat(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    return-void

    :cond_10
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0

    :cond_16
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "not supported in R"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static setWapiPskCompat(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .registers 2
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    return-void
.end method

.method public static setWapiPskType(Landroid/net/wifi/WifiConfiguration;I)V
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {p0, p1}, Lcom/oplus/compat/net/wifi/WifiConfigurationNative;->setWapiPskTypeCompat(Landroid/net/wifi/WifiConfiguration;I)V

    return-void

    :cond_10
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0

    :cond_16
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "not supported in R"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static setWapiPskTypeCompat(Landroid/net/wifi/WifiConfiguration;I)V
    .registers 2
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    return-void
.end method
