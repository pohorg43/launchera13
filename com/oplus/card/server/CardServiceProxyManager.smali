.class public final Lcom/oplus/card/server/CardServiceProxyManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final CLIENT_NAME:Ljava/lang/String; = "card_service_launcher"

.field private static final CLIENT_PACKAGE:Ljava/lang/String;

.field private static final CLIENT_PROVIDER_AUTHORITY:Ljava/lang/String;

.field private static final CLIENT_SERVICE_COMPONENT:Ljava/lang/String; = "com.oplus.cardservice.interfaces.facade.CardComponentService"

.field public static final INSTANCE:Lcom/oplus/card/server/CardServiceProxyManager;

.field private static cardServiceProxy:Lcom/oplus/channel/server/ClientProxy;

.field private static mInited:Z

.field public static serverBusiness:Lcom/oplus/channel/server/IServerBusiness;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/card/server/CardServiceProxyManager;

    invoke-direct {v0}, Lcom/oplus/card/server/CardServiceProxyManager;-><init>()V

    sput-object v0, Lcom/oplus/card/server/CardServiceProxyManager;->INSTANCE:Lcom/oplus/card/server/CardServiceProxyManager;

    sget-object v0, Lcom/android/common/config/Constants$Packages;->ASSIST_PACKAGE:Ljava/lang/String;

    sput-object v0, Lcom/oplus/card/server/CardServiceProxyManager;->CLIENT_PACKAGE:Ljava/lang/String;

    const v0, 0x7f120005

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/card/server/CardServiceProxyManager;->CLIENT_PROVIDER_AUTHORITY:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCardServiceProxy()Lcom/oplus/channel/server/ClientProxy;
    .registers 1

    sget-object p0, Lcom/oplus/card/server/CardServiceProxyManager;->cardServiceProxy:Lcom/oplus/channel/server/ClientProxy;

    return-object p0
.end method

.method public final getMInited()Z
    .registers 1

    sget-boolean p0, Lcom/oplus/card/server/CardServiceProxyManager;->mInited:Z

    return p0
.end method

.method public final getServerBusiness()Lcom/oplus/channel/server/IServerBusiness;
    .registers 1

    sget-object p0, Lcom/oplus/card/server/CardServiceProxyManager;->serverBusiness:Lcom/oplus/channel/server/IServerBusiness;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "serverBusiness"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final init(Landroid/content/Context;)V
    .registers 15

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/card/util/LogD;->INSTANCE:Lcom/oplus/card/util/LogD;

    const-string v1, "CardServiceProxyManager init"

    invoke-virtual {v0, v1}, Lcom/oplus/card/util/LogD;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportCard()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    :cond_13
    const/4 v0, 0x1

    sput-boolean v0, Lcom/oplus/card/server/CardServiceProxyManager;->mInited:Z

    sget-object v0, Lcom/oplus/channel/server/ServerChannel;->INSTANCE:Lcom/oplus/channel/server/ServerChannel;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lcom/oplus/channel/server/ServerChannel;->initChannel$default(Lcom/oplus/channel/server/ServerChannel;Landroid/content/Context;Lcom/oplus/channel/server/factory/SystemApiClient;ILjava/lang/Object;)V

    const-string p1, "com.oplus.card.server.launcher.provider"

    invoke-virtual {v0, p1}, Lcom/oplus/channel/server/ServerChannel;->createBusinessServer(Ljava/lang/String;)Lcom/oplus/channel/server/IServerBusiness;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/card/server/CardServiceProxyManager;->setServerBusiness(Lcom/oplus/channel/server/IServerBusiness;)V

    invoke-virtual {p0}, Lcom/oplus/card/server/CardServiceProxyManager;->getServerBusiness()Lcom/oplus/channel/server/IServerBusiness;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/channel/server/IServerBusiness;->startServer()V

    sget-object v4, Lcom/oplus/card/server/CardServiceProxyManager;->CLIENT_PACKAGE:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_63

    sget-object v5, Lcom/oplus/card/server/CardServiceProxyManager;->CLIENT_PROVIDER_AUTHORITY:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_63

    new-instance p1, Lcom/oplus/channel/server/ClientConfig;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x70

    const/4 v12, 0x0

    const-string v6, "com.oplus.cardservice.interfaces.facade.CardComponentService"

    move-object v3, p1

    invoke-direct/range {v3 .. v12}, Lcom/oplus/channel/server/ClientConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0}, Lcom/oplus/card/server/CardServiceProxyManager;->getServerBusiness()Lcom/oplus/channel/server/IServerBusiness;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v7, "card_service_launcher"

    move-object v8, p1

    invoke-static/range {v6 .. v11}, Lcom/oplus/channel/server/IServerBusiness;->createClientProxy$default(Lcom/oplus/channel/server/IServerBusiness;Ljava/lang/String;Lcom/oplus/channel/server/ClientConfig;Lcom/oplus/channel/server/ICommandHandler;ILjava/lang/Object;)Lcom/oplus/channel/server/ClientProxy;

    move-result-object p0

    sput-object p0, Lcom/oplus/card/server/CardServiceProxyManager;->cardServiceProxy:Lcom/oplus/channel/server/ClientProxy;

    goto :goto_65

    :cond_63
    sput-object v2, Lcom/oplus/card/server/CardServiceProxyManager;->cardServiceProxy:Lcom/oplus/channel/server/ClientProxy;

    :goto_65
    return-void
.end method

.method public final setCardServiceProxy(Lcom/oplus/channel/server/ClientProxy;)V
    .registers 2

    sput-object p1, Lcom/oplus/card/server/CardServiceProxyManager;->cardServiceProxy:Lcom/oplus/channel/server/ClientProxy;

    return-void
.end method

.method public final setMInited(Z)V
    .registers 2

    sput-boolean p1, Lcom/oplus/card/server/CardServiceProxyManager;->mInited:Z

    return-void
.end method

.method public final setServerBusiness(Lcom/oplus/channel/server/IServerBusiness;)V
    .registers 2

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/oplus/card/server/CardServiceProxyManager;->serverBusiness:Lcom/oplus/channel/server/IServerBusiness;

    return-void
.end method
