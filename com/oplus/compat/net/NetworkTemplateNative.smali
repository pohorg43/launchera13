.class public Lcom/oplus/compat/net/NetworkTemplateNative;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public mNetworkTemplate:Landroid/net/NetworkTemplate;

.field public mNetworkTemplateWrapper:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/net/NetworkTemplate;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/compat/net/NetworkTemplateNative;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/compat/net/NetworkTemplateNative;->mNetworkTemplateWrapper:Ljava/lang/Object;

    return-void
.end method

.method public static buildTemplateMobileAll(Ljava/lang/String;)Lcom/oplus/compat/net/NetworkTemplateNative;
    .registers 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {p0}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object p0

    new-instance v0, Lcom/oplus/compat/net/NetworkTemplateNative;

    invoke-direct {v0, p0}, Lcom/oplus/compat/net/NetworkTemplateNative;-><init>(Landroid/net/NetworkTemplate;)V

    return-object v0

    :cond_10
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Lcom/oplus/compat/net/NetworkTemplateNative;

    invoke-static {p0}, Lcom/oplus/compat/net/NetworkTemplateNative;->getNetworkTemplateQCompat(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oplus/compat/net/NetworkTemplateNative;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_20
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isP()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-static {p0}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object p0

    new-instance v0, Lcom/oplus/compat/net/NetworkTemplateNative;

    invoke-direct {v0, p0}, Lcom/oplus/compat/net/NetworkTemplateNative;-><init>(Landroid/net/NetworkTemplate;)V

    return-object v0

    :cond_30
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method

.method private static getNetworkTemplateQCompat(Ljava/lang/String;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method
