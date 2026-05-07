.class public Lcom/oplus/compat/mediatek/telephony/MtkSmsMessageNative;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/compat/mediatek/telephony/MtkSmsMessageNative$ReflectInfo;
    }
.end annotation


# instance fields
.field private mMtkSmsMessage:Ljava/lang/Object;

.field private mMtkSmsMessageWrapper:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_c

    iput-object p1, p0, Lcom/oplus/compat/mediatek/telephony/MtkSmsMessageNative;->mMtkSmsMessage:Ljava/lang/Object;

    goto :goto_e

    :cond_c
    iput-object p1, p0, Lcom/oplus/compat/mediatek/telephony/MtkSmsMessageNative;->mMtkSmsMessageWrapper:Ljava/lang/Object;

    :goto_e
    return-void
.end method

.method public static calculateLength(Ljava/lang/CharSequence;ZLandroid/content/Context;)[I
    .registers 7
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1b
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const-string v0, "mtk.gemini.support"

    invoke-virtual {p2, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_e

    return-object v0

    :cond_e
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz p2, :cond_2c

    invoke-static {}, Lcom/oplus/compat/mediatek/telephony/MtkSmsMessageNative$ReflectInfo;->access$000()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object p2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v3, v1

    invoke-virtual {p2, v0, v3}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0

    :cond_2c
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result p2

    if-eqz p2, :cond_37

    invoke-static {p0, p1}, Lcom/oplus/inner/mediatek/telephony/MtkSmsMessageWrapper;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object p0

    return-object p0

    :cond_37
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result p2

    if-eqz p2, :cond_44

    invoke-static {p0, p1}, Lcom/oplus/compat/mediatek/telephony/MtkSmsMessageNative;->calculateLengthCompat(Ljava/lang/CharSequence;Z)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0

    :cond_44
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isO_MR1()Z

    move-result p2

    if-eqz p2, :cond_66

    invoke-static {}, Lcom/oplus/compat/mediatek/telephony/MtkSmsMessageNative$ReflectInfo;->access$000()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object p2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v3, v1

    invoke-virtual {p2, v0, v3}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_65

    instance-of p1, p0, [I

    if-eqz p1, :cond_65

    check-cast p0, [I

    return-object p0

    :cond_65
    return-object v0

    :cond_66
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method

.method private static calculateLengthCompat(Ljava/lang/CharSequence;Z)Ljava/lang/Object;
    .registers 2
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getDestinationAddressCompat(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getDisplayMessageBodyCompat(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getDisplayOriginatingAddressCompat(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getIndexOnIccCompat(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getMessageClassCompat(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getServiceCenterAddressCompat(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getStatusOnIccCompat(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getTimestampMillisCompat(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method private static isStatusReportMessageCompat(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getDestinationAddress()Ljava/lang/String;
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/oplus/compat/mediatek/telephony/MtkSmsMessageNative$ReflectInfo;->access$200()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/compat/mediatek/telephony/MtkSmsMessageNative;->mMtkSmsMessage:Ljava/lang/Object;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_16
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object p0, p0, Lcom/oplus/compat/mediatek/telephony/MtkSmsMessageNative;->mMtkSmsMessageWrapper:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/inner/mediatek/telephony/MtkSmsMessageWrapper;

    invoke-virtual {p0}, Lcom/oplus/inner/mediatek/telephony/MtkSmsMessageWrapper;->getDestinationAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_25
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object p0, p0, Lcom/oplus/compat/mediatek/telephony/MtkSmsMessageNative;->mMtkSmsMessageWrapper:Ljava/lang/Object;

    invoke-static {p0}, Lcom/oplus/compat/mediatek/telephony/MtkSmsMessageNative;->getDestinationAddressCompat(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_34
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method

.method public getDisplayMessageBody()Ljava/lang/String;
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

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object p0, p0, Lcom/oplus/compat/mediatek/telephony/MtkSmsMessageNative;->mMtkSmsMessageWrapper:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/inner/mediatek/telephony/MtkSmsMessageWrapper;

    invoke-virtual {p0}, Lcom/oplus/inner/mediatek/telephony/MtkSmsMessageWrapper;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_15
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object p0, p0, Lcom/oplus/compat/mediatek/telephony/MtkSmsMessageNative;->mMtkSmsMessageWrapper:Ljava/lang/Object;

    invoke-static {p0}, Lcom/oplus/compat/mediatek/telephony/MtkSmsMessageNative;->getDisplayMessageBodyCompat(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_24
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0

    :cond_2a
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string v0, "not supported after or equals S"

    invoke-direct {p0, v0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDisplayOriginatingAddress()Ljava/lang/String;
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

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object p0, p0, Lcom/oplus/compat/mediatek/telephony/MtkSmsMessageNative;->mMtkSmsMessageWrapper:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/inner/mediatek/telephony/MtkSmsMessageWrapper;

    invoke-virtual {p0}, Lcom/oplus/inner/mediatek/telephony/MtkSmsMessageWrapper;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_15
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object p0, p0, Lcom/oplus/compat/mediatek/telephony/MtkSmsMessageNative;->mMtkSmsMessageWrapper:Ljava/lang/Object;

    invoke-static {p0}, Lcom/oplus/compat/mediatek/telephony/MtkSmsMessageNative;->getDisplayOriginatingAddressCompat(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_24
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0

    :cond_2a
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string v0, "not supported after or equals S"

    invoke-direct {p0, v0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getIndexOnIcc()I
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

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object p0, p0, Lcom/oplus/compat/mediatek/telephony/MtkSmsMessageNative;->mMtkSmsMessageWrapper:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/inner/mediatek/telephony/MtkSmsMessageWrapper;

    invoke-virtual {p0}, Lcom/oplus/inner/mediatek/telephony/MtkSmsMessageWrapper;->getIndexOnIcc()I

    move-result p0

    return p0

    :cond_15
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object p0, p0, Lcom/oplus/compat/mediatek/telephony/MtkSmsMessageNative;->mMtkSmsMessageWrapper:Ljava/lang/Object;

    invoke-static {p0}, Lcom/oplus/compat/mediatek/telephony/MtkSmsMessageNative;->getIndexOnIccCompat(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_28
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0

    :cond_2e
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string v0, "not supported after or equals S"

    invoke-direct {p0, v0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getMessageClass()Landroid/telephony/SmsMessage$MessageClass;
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

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object p0, p0, Lcom/oplus/compat/mediatek/telephony/MtkSmsMessageNative;->mMtkSmsMessageWrapper:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/inner/mediatek/telephony/MtkSmsMessageWrapper;

    invoke-virtual {p0}, Lcom/oplus/inner/mediatek/telephony/MtkSmsMessageWrapper;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object p0

    return-object p0

    :cond_15
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object p0, p0, Lcom/oplus/compat/mediatek/telephony/MtkSmsMessageNative;->mMtkSmsMessageWrapper:Ljava/lang/Object;

    invoke-static {p0}, Lcom/oplus/compat/mediatek/telephony/MtkSmsMessageNative;->getMessageClassCompat(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SmsMessage$MessageClass;

    return-object p0

    :cond_24
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0

    :cond_2a
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string v0, "not supported after or equals S"

    invoke-direct {p0, v0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getServiceCenterAddress()Ljava/lang/String;
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

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object p0, p0, Lcom/oplus/compat/mediatek/telephony/MtkSmsMessageNative;->mMtkSmsMessageWrapper:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/inner/mediatek/telephony/MtkSmsMessageWrapper;

    invoke-virtual {p0}, Lcom/oplus/inner/mediatek/telephony/MtkSmsMessageWrapper;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_15
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object p0, p0, Lcom/oplus/compat/mediatek/telephony/MtkSmsMessageNative;->mMtkSmsMessageWrapper:Ljava/lang/Object;

    invoke-static {p0}, Lcom/oplus/compat/mediatek/telephony/MtkSmsMessageNative;->getServiceCenterAddressCompat(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_24
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0

    :cond_2a
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string v0, "not supported after or equals S"

    invoke-direct {p0, v0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getStatusOnIcc()I
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

    move-result p0

    if-nez p0, :cond_25

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result p0

    if-eqz p0, :cond_1f

    invoke-static {}, Lcom/oplus/compat/mediatek/telephony/MtkSmsMessageNative$ReflectInfo;->access$100()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1f
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0

    :cond_25
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string v0, "not supported upper R"

    invoke-direct {p0, v0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getTimestampMillis()J
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

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object p0, p0, Lcom/oplus/compat/mediatek/telephony/MtkSmsMessageNative;->mMtkSmsMessageWrapper:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/inner/mediatek/telephony/MtkSmsMessageWrapper;

    invoke-virtual {p0}, Lcom/oplus/inner/mediatek/telephony/MtkSmsMessageWrapper;->getTimestampMillis()J

    move-result-wide v0

    return-wide v0

    :cond_15
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object p0, p0, Lcom/oplus/compat/mediatek/telephony/MtkSmsMessageNative;->mMtkSmsMessageWrapper:Ljava/lang/Object;

    invoke-static {p0}, Lcom/oplus/compat/mediatek/telephony/MtkSmsMessageNative;->getTimestampMillisCompat(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_28
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0

    :cond_2e
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string v0, "not supported after or equals S"

    invoke-direct {p0, v0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isStatusReportMessage()Z
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

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object p0, p0, Lcom/oplus/compat/mediatek/telephony/MtkSmsMessageNative;->mMtkSmsMessageWrapper:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/inner/mediatek/telephony/MtkSmsMessageWrapper;

    invoke-virtual {p0}, Lcom/oplus/inner/mediatek/telephony/MtkSmsMessageWrapper;->isStatusReportMessage()Z

    move-result p0

    return p0

    :cond_15
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object p0, p0, Lcom/oplus/compat/mediatek/telephony/MtkSmsMessageNative;->mMtkSmsMessageWrapper:Ljava/lang/Object;

    invoke-static {p0}, Lcom/oplus/compat/mediatek/telephony/MtkSmsMessageNative;->isStatusReportMessageCompat(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_28
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0

    :cond_2e
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string v0, "not supported after or equals S"

    invoke-direct {p0, v0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
