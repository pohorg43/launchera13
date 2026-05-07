.class public final Lcom/oplus/channel/server/statistics/PullDataManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/channel/server/statistics/PullDataManager$RequestState;
    }
.end annotation


# static fields
.field private static final BUSINESS_DELAY_TIME:J = 0xfa0L

.field private static final CARD_PREFIX:Ljava/lang/String; = "card:"

.field private static final CLIENT_SDK_VERSION_CODE:Ljava/lang/String; = "ClientSdkVersionCode"

.field private static final CLIENT_VERSION_CODE:Ljava/lang/String; = "ClientVersionCode"

.field public static final INSTANCE:Lcom/oplus/channel/server/statistics/PullDataManager;

.field private static final JSON:I = 0x2

.field private static final RULES_CLIENT_AND_STATE:I = 0x1

.field private static final RULES_WIDGETCODE:I = 0x3

.field private static final RULES_WIDGETCODE_AND_STATE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PullDataManager"

.field private static final context$delegate:Ly2/e;

.field private static final pullDataStateMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/channel/server/statistics/RequestActionData;",
            ">;"
        }
    .end annotation
.end field

.field private static statisticsCallBack:Lcom/oplus/channel/server/api/IChannelStatisticsCallBack;

.field private static final workHandler$delegate:Ly2/e;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/oplus/channel/server/statistics/PullDataManager;

    invoke-direct {v0}, Lcom/oplus/channel/server/statistics/PullDataManager;-><init>()V

    sput-object v0, Lcom/oplus/channel/server/statistics/PullDataManager;->INSTANCE:Lcom/oplus/channel/server/statistics/PullDataManager;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/oplus/channel/server/statistics/PullDataManager;->pullDataStateMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v0, Lcom/oplus/channel/server/utils/ServerDI;->INSTANCE:Lcom/oplus/channel/server/utils/ServerDI;

    invoke-virtual {v0}, Lcom/oplus/channel/server/utils/ServerDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    const-class v2, Lcom/oplus/channel/server/utils/WorkHandler;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Ln3/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "the class are not injected"

    if-eqz v1, :cond_65

    invoke-virtual {v0}, Lcom/oplus/channel/server/utils/ServerDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    const-class v3, Lcom/oplus/channel/server/utils/WorkHandler;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Ln3/c;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type kotlin.Lazy<T of com.oplus.channel.server.utils.ServerDI.injectSingle>"

    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Ly2/e;

    sput-object v1, Lcom/oplus/channel/server/statistics/PullDataManager;->workHandler$delegate:Ly2/e;

    invoke-virtual {v0}, Lcom/oplus/channel/server/utils/ServerDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    const-class v4, Landroid/content/Context;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Ln3/c;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5f

    invoke-virtual {v0}, Lcom/oplus/channel/server/utils/ServerDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Ln3/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ly2/e;

    sput-object v0, Lcom/oplus/channel/server/statistics/PullDataManager;->context$delegate:Ly2/e;

    return-void

    :cond_5f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_65
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/channel/server/statistics/RequestActionData;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/channel/server/statistics/PullDataManager;->createChannelState$lambda-1$lambda-0(Lcom/oplus/channel/server/statistics/RequestActionData;Ljava/lang/String;)V

    return-void
.end method

.method private static final createChannelState$lambda-1$lambda-0(Lcom/oplus/channel/server/statistics/RequestActionData;Ljava/lang/String;)V
    .registers 5

    const-string v0, "$it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$clientPackage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/channel/server/utils/LogUtil;->INSTANCE:Lcom/oplus/channel/server/utils/LogUtil;

    invoke-virtual {p0}, Lcom/oplus/channel/server/statistics/RequestActionData;->getWidgetCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "createChannelState not receive uidata "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PullDataManager"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/channel/server/statistics/PullDataManager;->statisticsCallBack:Lcom/oplus/channel/server/api/IChannelStatisticsCallBack;

    if-nez v0, :cond_20

    goto :goto_31

    :cond_20
    invoke-virtual {p0}, Lcom/oplus/channel/server/statistics/RequestActionData;->getWidgetCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/channel/server/statistics/WidgetCodeTranslaterKt;->getWidgetCodeCardType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oplus/channel/server/statistics/PullDataManager;->INSTANCE:Lcom/oplus/channel/server/statistics/PullDataManager;

    invoke-direct {v2, p1}, Lcom/oplus/channel/server/statistics/PullDataManager;->getExtras(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/oplus/channel/server/api/IChannelStatisticsCallBack;->onReceiveUIDataError(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_31
    sget-object p1, Lcom/oplus/channel/server/statistics/PullDataManager;->INSTANCE:Lcom/oplus/channel/server/statistics/PullDataManager;

    invoke-virtual {p0}, Lcom/oplus/channel/server/statistics/RequestActionData;->getRequestData()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/oplus/channel/server/statistics/PullDataManager;->removePullDataStateMap(Ljava/lang/String;)V

    return-void
.end method

.method private final findMapValue(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/oplus/channel/server/statistics/RequestActionData;
    .registers 8

    sget-object p0, Lcom/oplus/channel/server/statistics/PullDataManager;->pullDataStateMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/channel/server/statistics/RequestActionData;

    const/4 v1, 0x1

    if-eq p1, v1, :cond_49

    const/4 v1, 0x2

    if-eq p1, v1, :cond_31

    const/4 v1, 0x3

    if-eq p1, v1, :cond_26

    goto :goto_a

    :cond_26
    invoke-virtual {v0}, Lcom/oplus/channel/server/statistics/RequestActionData;->getWidgetCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    return-object v0

    :cond_31
    invoke-virtual {v0}, Lcom/oplus/channel/server/statistics/RequestActionData;->getWidgetCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/oplus/channel/server/statistics/RequestActionData;->getRequestState()I

    move-result v1

    if-nez p4, :cond_42

    goto :goto_a

    :cond_42
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_a

    return-object v0

    :cond_49
    invoke-virtual {v0}, Lcom/oplus/channel/server/statistics/RequestActionData;->getClientPuller()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/oplus/channel/server/statistics/RequestActionData;->getRequestState()I

    move-result v1

    if-nez p4, :cond_5a

    goto :goto_a

    :cond_5a
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_a

    return-object v0

    :cond_61
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic findMapValue$default(Lcom/oplus/channel/server/statistics/PullDataManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/oplus/channel/server/statistics/RequestActionData;
    .registers 8

    and-int/lit8 p6, p5, 0x2

    const-string v0, ""

    if-eqz p6, :cond_7

    move-object p2, v0

    :cond_7
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_c

    move-object p3, v0

    :cond_c
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/channel/server/statistics/PullDataManager;->findMapValue(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/oplus/channel/server/statistics/RequestActionData;

    move-result-object p0

    return-object p0
.end method

.method private final getContext()Landroid/content/Context;
    .registers 1

    sget-object p0, Lcom/oplus/channel/server/statistics/PullDataManager;->context$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    return-object p0
.end method

.method private final getExtras(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/oplus/channel/server/utils/ClientPackageUtils;->INSTANCE:Lcom/oplus/channel/server/utils/ClientPackageUtils;

    invoke-direct {p0}, Lcom/oplus/channel/server/statistics/PullDataManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/oplus/channel/server/utils/ClientPackageUtils;->getClientVersionCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ClientVersionCode"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/channel/server/statistics/PullDataManager;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v1, p0, p1}, Lcom/oplus/channel/server/utils/ClientPackageUtils;->getClientSdkVersionCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ClientSdkVersionCode"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getWorkHandler()Lcom/oplus/channel/server/utils/WorkHandler;
    .registers 1

    sget-object p0, Lcom/oplus/channel/server/statistics/PullDataManager;->workHandler$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/channel/server/utils/WorkHandler;

    return-object p0
.end method

.method private final removePullDataByWidgetCode(Ljava/lang/String;)V
    .registers 9

    const/4 v1, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/oplus/channel/server/statistics/PullDataManager;->findMapValue$default(Lcom/oplus/channel/server/statistics/PullDataManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/oplus/channel/server/statistics/RequestActionData;

    move-result-object p0

    if-nez p0, :cond_e

    goto :goto_24

    :cond_e
    sget-object v0, Lcom/oplus/channel/server/statistics/PullDataManager;->INSTANCE:Lcom/oplus/channel/server/statistics/PullDataManager;

    invoke-virtual {p0}, Lcom/oplus/channel/server/statistics/RequestActionData;->getRequestData()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oplus/channel/server/statistics/PullDataManager;->removePullDataStateMap(Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/channel/server/utils/LogUtil;->INSTANCE:Lcom/oplus/channel/server/utils/LogUtil;

    const-string v0, "removePullDataByWidgetCode: remove pullDataStateMap = "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "PullDataManager"

    invoke-virtual {p0, v0, p1}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_24
    return-void
.end method

.method private final removePullDataStateMap(Ljava/lang/String;)V
    .registers 4

    sget-object p0, Lcom/oplus/channel/server/statistics/PullDataManager;->pullDataStateMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/channel/server/statistics/RequestActionData;

    if-nez v0, :cond_11

    goto :goto_21

    :cond_11
    invoke-virtual {v0}, Lcom/oplus/channel/server/statistics/RequestActionData;->getRunnable()Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_18

    goto :goto_21

    :cond_18
    sget-object v1, Lcom/oplus/channel/server/statistics/PullDataManager;->INSTANCE:Lcom/oplus/channel/server/statistics/PullDataManager;

    invoke-direct {v1}, Lcom/oplus/channel/server/statistics/PullDataManager;->getWorkHandler()Lcom/oplus/channel/server/utils/WorkHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_21
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/oplus/channel/server/utils/LogUtil;->INSTANCE:Lcom/oplus/channel/server/utils/LogUtil;

    const-string v0, "removePullDataStateMap: remove pullDataStateMap = "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "PullDataManager"

    invoke-virtual {p0, v0, p1}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    return-void
.end method


# virtual methods
.method public final bindWidgetCodeAndClientPuller([BLjava/lang/String;)V
    .registers 7

    const-string p0, "requestData"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "clientPuller"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/String;

    sget-object v0, Lp3/a;->a:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sget-object p1, Lcom/oplus/channel/server/statistics/PullDataManager;->pullDataStateMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/channel/server/statistics/RequestActionData;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1e

    goto :goto_25

    :cond_1e
    invoke-virtual {v0}, Lcom/oplus/channel/server/statistics/RequestActionData;->getRequestState()I

    move-result v0

    if-nez v0, :cond_25

    move v2, v1

    :cond_25
    :goto_25
    if-eqz v2, :cond_69

    sget-object v0, Lcom/oplus/channel/server/utils/LogUtil;->INSTANCE:Lcom/oplus/channel/server/utils/LogUtil;

    const-string v2, "bindWidgetCodeAndClientPuller: widgetCode = "

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/channel/server/statistics/RequestActionData;

    if-nez v3, :cond_39

    const/4 v3, 0x0

    goto :goto_3d

    :cond_39
    invoke-virtual {v3}, Lcom/oplus/channel/server/statistics/RequestActionData;->getWidgetCode()Ljava/lang/String;

    move-result-object v3

    :goto_3d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " clientPuller = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PullDataManager"

    invoke-virtual {v0, v3, v2}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/channel/server/statistics/RequestActionData;

    if-nez v0, :cond_5a

    goto :goto_5d

    :cond_5a
    invoke-virtual {v0, p2}, Lcom/oplus/channel/server/statistics/RequestActionData;->setClientPuller(Ljava/lang/String;)V

    :goto_5d
    invoke-virtual {p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/channel/server/statistics/RequestActionData;

    if-nez p0, :cond_66

    goto :goto_69

    :cond_66
    invoke-virtual {p0, v1}, Lcom/oplus/channel/server/statistics/RequestActionData;->setRequestState(I)V

    :cond_69
    :goto_69
    return-void
.end method

.method public final createChannelState(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 12

    const-string v0, "clientPuller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientPackage"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v1, p0

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Lcom/oplus/channel/server/statistics/PullDataManager;->findMapValue$default(Lcom/oplus/channel/server/statistics/PullDataManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/oplus/channel/server/statistics/RequestActionData;

    move-result-object p0

    if-nez p0, :cond_1c

    goto :goto_73

    :cond_1c
    const-string p1, "PullDataManager"

    if-eqz p2, :cond_47

    new-instance p2, Lcom/android/wm/shell/bubbles/animation/o;

    invoke-direct {p2, p0, p3}, Lcom/android/wm/shell/bubbles/animation/o;-><init>(Lcom/oplus/channel/server/statistics/RequestActionData;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/oplus/channel/server/statistics/RequestActionData;->setRunnable(Ljava/lang/Runnable;)V

    sget-object p3, Lcom/oplus/channel/server/statistics/PullDataManager;->INSTANCE:Lcom/oplus/channel/server/statistics/PullDataManager;

    invoke-direct {p3}, Lcom/oplus/channel/server/statistics/PullDataManager;->getWorkHandler()Lcom/oplus/channel/server/utils/WorkHandler;

    move-result-object p3

    const-wide/16 v0, 0xfa0

    invoke-virtual {p3, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p2, 0x2

    invoke-virtual {p0, p2}, Lcom/oplus/channel/server/statistics/RequestActionData;->setRequestState(I)V

    sget-object p2, Lcom/oplus/channel/server/utils/LogUtil;->INSTANCE:Lcom/oplus/channel/server/utils/LogUtil;

    invoke-virtual {p0}, Lcom/oplus/channel/server/statistics/RequestActionData;->getWidgetCode()Ljava/lang/String;

    move-result-object p0

    const-string p3, "createChannelState start runnable "

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_73

    :cond_47
    sget-object p2, Lcom/oplus/channel/server/statistics/PullDataManager;->INSTANCE:Lcom/oplus/channel/server/statistics/PullDataManager;

    invoke-virtual {p0}, Lcom/oplus/channel/server/statistics/RequestActionData;->getRequestData()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/oplus/channel/server/statistics/PullDataManager;->removePullDataStateMap(Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/channel/server/statistics/PullDataManager;->statisticsCallBack:Lcom/oplus/channel/server/api/IChannelStatisticsCallBack;

    if-nez v0, :cond_55

    goto :goto_64

    :cond_55
    invoke-virtual {p0}, Lcom/oplus/channel/server/statistics/RequestActionData;->getWidgetCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/channel/server/statistics/WidgetCodeTranslaterKt;->getWidgetCodeCardType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, p3}, Lcom/oplus/channel/server/statistics/PullDataManager;->getExtras(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Lcom/oplus/channel/server/api/IChannelStatisticsCallBack;->onCreateChannelError(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_64
    sget-object p2, Lcom/oplus/channel/server/utils/LogUtil;->INSTANCE:Lcom/oplus/channel/server/utils/LogUtil;

    invoke-virtual {p0}, Lcom/oplus/channel/server/statistics/RequestActionData;->getWidgetCode()Ljava/lang/String;

    move-result-object p0

    const-string p3, "createChannelState createChannelError "

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_73
    return-void
.end method

.method public final receiveUIDataState(Ljava/lang/String;)V
    .registers 14

    const-string v0, "callbackId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "card:"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2}, Lp3/k;->o(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_16

    const/4 v3, 0x4

    invoke-static {p1, v0, v4, v1, v3}, Lp3/h;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v4

    :cond_16
    move-object v7, v4

    const/4 v6, 0x2

    const/4 v8, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x4

    const/4 v11, 0x0

    move-object v5, p0

    invoke-static/range {v5 .. v11}, Lcom/oplus/channel/server/statistics/PullDataManager;->findMapValue$default(Lcom/oplus/channel/server/statistics/PullDataManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/oplus/channel/server/statistics/RequestActionData;

    move-result-object p0

    if-nez p0, :cond_27

    goto :goto_3d

    :cond_27
    sget-object v0, Lcom/oplus/channel/server/utils/LogUtil;->INSTANCE:Lcom/oplus/channel/server/utils/LogUtil;

    const-string v1, "receiveUIDataState: callbackId = "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "PullDataManager"

    invoke-virtual {v0, v1, p1}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/oplus/channel/server/statistics/PullDataManager;->INSTANCE:Lcom/oplus/channel/server/statistics/PullDataManager;

    invoke-virtual {p0}, Lcom/oplus/channel/server/statistics/RequestActionData;->getRequestData()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/oplus/channel/server/statistics/PullDataManager;->removePullDataStateMap(Ljava/lang/String;)V

    :goto_3d
    return-void
.end method

.method public final registerOrRemovePullData(Ljava/lang/String;Ljava/util/Map;[BI)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[BI)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "callbackId"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "requestData"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "card:"

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v0, v3, v4, v5}, Lp3/k;->o(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v6

    const-string v7, ""

    if-eqz v6, :cond_21

    const/4 v6, 0x4

    invoke-static {v0, v3, v7, v4, v6}, Lp3/h;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v7

    :cond_21
    if-nez v1, :cond_25

    const/4 v0, 0x0

    goto :goto_2d

    :cond_25
    const-string v0, "life_circle"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_2d
    move-object v10, v0

    move/from16 v0, p4

    if-ne v5, v0, :cond_98

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lp3/a;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    if-eqz v10, :cond_6f

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x65825f6

    if-eq v1, v2, :cond_61

    const v2, 0x35c12fb3

    if-eq v1, v2, :cond_58

    const v2, 0x5cd39ffa

    if-eq v1, v2, :cond_4f

    goto :goto_6f

    :cond_4f
    const-string v1, "destroy"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6a

    goto :goto_6f

    :cond_58
    const-string v1, "unsubscribed"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6a

    goto :goto_6f

    :cond_61
    const-string v1, "pause"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6a

    goto :goto_6f

    :cond_6a
    move-object/from16 v1, p0

    invoke-direct {v1, v7}, Lcom/oplus/channel/server/statistics/PullDataManager;->removePullDataByWidgetCode(Ljava/lang/String;)V

    :cond_6f
    :goto_6f
    const-string v1, "subscribed"

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_98

    sget-object v1, Lcom/oplus/channel/server/statistics/PullDataManager;->pullDataStateMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Lcom/oplus/channel/server/statistics/RequestActionData;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x30

    const/16 v16, 0x0

    move-object v8, v2

    move-object v9, v7

    move-object v11, v0

    invoke-direct/range {v8 .. v16}, Lcom/oplus/channel/server/statistics/RequestActionData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Runnable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/oplus/channel/server/utils/LogUtil;->INSTANCE:Lcom/oplus/channel/server/utils/LogUtil;

    const-string v1, "registerOrRemovePullData: add to pullDataStateMap = "

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PullDataManager"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_98
    return-void
.end method

.method public final registerStatisticsCallBack(Lcom/oplus/channel/server/api/IChannelStatisticsCallBack;)V
    .registers 2

    const-string p0, "callBack"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/channel/server/statistics/PullDataManager;->statisticsCallBack:Lcom/oplus/channel/server/api/IChannelStatisticsCallBack;

    if-nez p0, :cond_b

    sput-object p1, Lcom/oplus/channel/server/statistics/PullDataManager;->statisticsCallBack:Lcom/oplus/channel/server/api/IChannelStatisticsCallBack;

    :cond_b
    return-void
.end method

.method public final unregisterStatisticsCallBack()V
    .registers 1

    sget-object p0, Lcom/oplus/channel/server/statistics/PullDataManager;->statisticsCallBack:Lcom/oplus/channel/server/api/IChannelStatisticsCallBack;

    if-eqz p0, :cond_7

    const/4 p0, 0x0

    sput-object p0, Lcom/oplus/channel/server/statistics/PullDataManager;->statisticsCallBack:Lcom/oplus/channel/server/api/IChannelStatisticsCallBack;

    :cond_7
    return-void
.end method
