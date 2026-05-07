.class public Lcom/oplus/compat/net/WebAddressNative;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mWebAddress:Landroid/net/WebAddress;

.field private mWebAddressWrapper:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Landroid/net/WebAddress;

    invoke-direct {v0, p1}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/compat/net/WebAddressNative;->mWebAddress:Landroid/net/WebAddress;

    goto :goto_2b

    :cond_11
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, Lcom/oplus/inner/net/WebAddressWrapper;

    invoke-direct {v0, p1}, Lcom/oplus/inner/net/WebAddressWrapper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/compat/net/WebAddressNative;->mWebAddressWrapper:Ljava/lang/Object;

    goto :goto_2b

    :cond_1f
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-static {p1}, Lcom/oplus/compat/net/WebAddressNative;->WebAddressNativeCompat(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/compat/net/WebAddressNative;->mWebAddressWrapper:Ljava/lang/Object;

    :goto_2b
    return-void

    :cond_2c
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method

.method private static WebAddressNativeCompat(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method private static WebAddressNativeCompat(Ljava/lang/String;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getHostCompat(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getPathCompat(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method private static setPathCompat(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 2
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    return-void
.end method

.method private static toStringCompat(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getHost()Ljava/lang/String;
    .registers 2
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

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/oplus/compat/net/WebAddressNative;->mWebAddress:Landroid/net/WebAddress;

    invoke-virtual {p0}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object p0, p0, Lcom/oplus/compat/net/WebAddressNative;->mWebAddressWrapper:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/inner/net/WebAddressWrapper;

    invoke-virtual {p0}, Lcom/oplus/inner/net/WebAddressWrapper;->getHost()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1c
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object p0, p0, Lcom/oplus/compat/net/WebAddressNative;->mWebAddressWrapper:Ljava/lang/Object;

    invoke-static {p0}, Lcom/oplus/compat/net/WebAddressNative;->getHostCompat(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_2b
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2
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

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/oplus/compat/net/WebAddressNative;->mWebAddress:Landroid/net/WebAddress;

    invoke-virtual {p0}, Landroid/net/WebAddress;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object p0, p0, Lcom/oplus/compat/net/WebAddressNative;->mWebAddressWrapper:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/inner/net/WebAddressWrapper;

    invoke-virtual {p0}, Lcom/oplus/inner/net/WebAddressWrapper;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1c
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object p0, p0, Lcom/oplus/compat/net/WebAddressNative;->mWebAddressWrapper:Ljava/lang/Object;

    invoke-static {p0}, Lcom/oplus/compat/net/WebAddressNative;->getPathCompat(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_2b
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method

.method public getScheme()Ljava/lang/String;
    .registers 2
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

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/oplus/compat/net/WebAddressNative;->mWebAddress:Landroid/net/WebAddress;

    invoke-virtual {p0}, Landroid/net/WebAddress;->getScheme()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object p0, p0, Lcom/oplus/compat/net/WebAddressNative;->mWebAddressWrapper:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/inner/net/WebAddressWrapper;

    invoke-virtual {p0}, Lcom/oplus/inner/net/WebAddressWrapper;->getScheme()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1c
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object p0, p0, Lcom/oplus/compat/net/WebAddressNative;->mWebAddressWrapper:Ljava/lang/Object;

    invoke-static {p0}, Lcom/oplus/compat/net/WebAddressNative;->WebAddressNativeCompat(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_2b
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method

.method public setPath(Ljava/lang/String;)V
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

    if-eqz v0, :cond_c

    iget-object p0, p0, Lcom/oplus/compat/net/WebAddressNative;->mWebAddress:Landroid/net/WebAddress;

    invoke-virtual {p0, p1}, Landroid/net/WebAddress;->setPath(Ljava/lang/String;)V

    goto :goto_25

    :cond_c
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object p0, p0, Lcom/oplus/compat/net/WebAddressNative;->mWebAddressWrapper:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/inner/net/WebAddressWrapper;

    invoke-virtual {p0, p1}, Lcom/oplus/inner/net/WebAddressWrapper;->setPath(Ljava/lang/String;)V

    goto :goto_25

    :cond_1a
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object p0, p0, Lcom/oplus/compat/net/WebAddressNative;->mWebAddressWrapper:Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/oplus/compat/net/WebAddressNative;->setPathCompat(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_25
    return-void

    :cond_26
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/oplus/compat/net/WebAddressNative;->mWebAddress:Landroid/net/WebAddress;

    invoke-virtual {p0}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object p0, p0, Lcom/oplus/compat/net/WebAddressNative;->mWebAddressWrapper:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/inner/net/WebAddressWrapper;

    invoke-virtual {p0}, Lcom/oplus/inner/net/WebAddressWrapper;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1c
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object p0, p0, Lcom/oplus/compat/net/WebAddressNative;->mWebAddressWrapper:Ljava/lang/Object;

    invoke-static {p0}, Lcom/oplus/compat/net/WebAddressNative;->toStringCompat(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_2b
    const-string p0, ""

    return-object p0
.end method
