.class public Lcom/oplus/seedling/sdk/manager/SeedlingManagerCompatibleImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/seedling/sdk/manager/ISeedlingManager;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/seedling/sdk/manager/SeedlingManagerCompatibleImpl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/seedling/sdk/manager/SeedlingManagerCompatibleImpl$Companion;

.field private static final TAG:Ljava/lang/String; = "SeedlingManagerDefaultImpl"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/seedling/sdk/manager/SeedlingManagerCompatibleImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/seedling/sdk/manager/SeedlingManagerCompatibleImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/seedling/sdk/manager/SeedlingManagerCompatibleImpl;->Companion:Lcom/oplus/seedling/sdk/manager/SeedlingManagerCompatibleImpl$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final defaultLog(Ljava/lang/String;)V
    .registers 3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "warning, default impl! maybe version is not compatible, methodName:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SeedlingManagerDefaultImpl"

    invoke-static {p1, p0}, Lcom/oplus/seedling/sdk/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clearPidObserver()V
    .registers 2

    const-string v0, "clearPidObserver"

    invoke-direct {p0, v0}, Lcom/oplus/seedling/sdk/manager/SeedlingManagerCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public disableSubDomain(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "subDomain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "disableSubDomain"

    invoke-direct {p0, p1}, Lcom/oplus/seedling/sdk/manager/SeedlingManagerCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public getCurRecommendList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "getCurRecommendList"

    invoke-direct {p0, v0}, Lcom/oplus/seedling/sdk/manager/SeedlingManagerCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    sget-object p0, Lz2/u;->a:Lz2/u;

    return-object p0
.end method

.method public interceptStartActivity(Lcom/oplus/seedling/sdk/callback/StartActivityCallback;)V
    .registers 3

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "interceptStartActivity"

    invoke-direct {p0, p1}, Lcom/oplus/seedling/sdk/manager/SeedlingManagerCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public queryServiceInfo(Ljava/lang/String;)Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo;
    .registers 3

    const-string v0, "serviceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "queryServiceInfo"

    invoke-direct {p0, p1}, Lcom/oplus/seedling/sdk/manager/SeedlingManagerCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo;->Companion:Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo$Companion;

    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo$Companion;->empty()Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo;

    move-result-object p0

    return-object p0
.end method

.method public register(Lcom/oplus/seedling/sdk/recommendlist/ListObserver;)V
    .registers 3

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "register"

    invoke-direct {p0, p1}, Lcom/oplus/seedling/sdk/manager/SeedlingManagerCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public registerData(Landroid/content/Context;Lcom/oplus/seedling/sdk/manager/DataSetCallBack;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "callBack"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "registerData"

    invoke-direct {p0, p1}, Lcom/oplus/seedling/sdk/manager/SeedlingManagerCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public registerPidObserver(Lcom/oplus/seedling/sdk/pid/PidObserver;)V
    .registers 3

    const-string v0, "pidObserver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "registerPidObserver"

    invoke-direct {p0, p1}, Lcom/oplus/seedling/sdk/manager/SeedlingManagerCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public registerSeedlingConfig(Ljava/util/Set;Lcom/oplus/seedling/sdk/serviceconfig/ConfigListObserver;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/oplus/seedling/sdk/serviceconfig/ConfigListObserver;",
            ")V"
        }
    .end annotation

    const-string v0, "supportSize"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "observer"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "registerSeedlingConfig"

    invoke-direct {p0, p1}, Lcom/oplus/seedling/sdk/manager/SeedlingManagerCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public registerUpkVersionObserver(Lcom/oplus/seedling/sdk/callback/IUpkVersionObserver;)V
    .registers 3

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "registerUpkVersionObserver"

    invoke-direct {p0, p1}, Lcom/oplus/seedling/sdk/manager/SeedlingManagerCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public release()V
    .registers 2

    const-string v0, "release"

    invoke-direct {p0, v0}, Lcom/oplus/seedling/sdk/manager/SeedlingManagerCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public reportStatistics(Lcom/oplus/seedling/sdk/entity/StatisticsBean;)V
    .registers 3

    const-string v0, "statisticsBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "reportStatistics"

    invoke-direct {p0, p1}, Lcom/oplus/seedling/sdk/manager/SeedlingManagerCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public reportStatistics(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/seedling/sdk/entity/StatisticsBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "statisticsList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "reportStatisticsList"

    invoke-direct {p0, p1}, Lcom/oplus/seedling/sdk/manager/SeedlingManagerCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public sendCardCreateErrorToHost(Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;)V
    .registers 3

    const-string v0, "cardCreateErrorBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "sendCardCreateErrorToHost"

    invoke-direct {p0, p1}, Lcom/oplus/seedling/sdk/manager/SeedlingManagerCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public sendKilledPid(Lcom/oplus/seedling/sdk/pid/PidInfo;)V
    .registers 3

    const-string v0, "pidInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "sendKilledPid"

    invoke-direct {p0, p1}, Lcom/oplus/seedling/sdk/manager/SeedlingManagerCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public setAODStatus(Z)V
    .registers 2

    const-string p1, "setAODStatus"

    invoke-direct {p0, p1}, Lcom/oplus/seedling/sdk/manager/SeedlingManagerCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public setScreenLocked(Z)V
    .registers 2

    const-string p1, "setScreenLocked"

    invoke-direct {p0, p1}, Lcom/oplus/seedling/sdk/manager/SeedlingManagerCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public setWidgetColor(I)V
    .registers 2
    .param p1  # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    const-string p1, "setWidgetColor(color)"

    invoke-direct {p0, p1}, Lcom/oplus/seedling/sdk/manager/SeedlingManagerCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public setWidgetColor(IZ)V
    .registers 3
    .param p1  # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    const-string p1, "setWidgetColor(color, isColorReversed)"

    invoke-direct {p0, p1}, Lcom/oplus/seedling/sdk/manager/SeedlingManagerCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public startSeedling(Landroid/content/Context;Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;Lcom/oplus/seedling/sdk/seedling/SeedlingCallback;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "callback"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "startSeedling"

    invoke-direct {p0, p1}, Lcom/oplus/seedling/sdk/manager/SeedlingManagerCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public startSeedlingTask(Landroid/content/Context;Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;Lcom/oplus/seedling/sdk/seedling/SeedlingCallback;)Lcom/oplus/seedling/sdk/task/ISeedlingTask;
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "callback"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "startSeedlingTask"

    invoke-direct {p0, p1}, Lcom/oplus/seedling/sdk/manager/SeedlingManagerCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/seedling/sdk/task/SeedlingTaskCompatibleImpl;

    invoke-direct {p0}, Lcom/oplus/seedling/sdk/task/SeedlingTaskCompatibleImpl;-><init>()V

    return-object p0
.end method

.method public unregister(Lcom/oplus/seedling/sdk/recommendlist/ListObserver;)V
    .registers 3

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "unregister"

    invoke-direct {p0, p1}, Lcom/oplus/seedling/sdk/manager/SeedlingManagerCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public unregisterAll()V
    .registers 2

    const-string v0, "unregisterAll"

    invoke-direct {p0, v0}, Lcom/oplus/seedling/sdk/manager/SeedlingManagerCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public unregisterAllSeedlingConfig()V
    .registers 2

    const-string v0, "unregisterAllSeedlingConfig"

    invoke-direct {p0, v0}, Lcom/oplus/seedling/sdk/manager/SeedlingManagerCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public unregisterSeedlingConfig(Lcom/oplus/seedling/sdk/serviceconfig/ConfigListObserver;)V
    .registers 3

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "unregisterSeedlingConfig"

    invoke-direct {p0, p1}, Lcom/oplus/seedling/sdk/manager/SeedlingManagerCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public unregisterUpkVersionObserver(Lcom/oplus/seedling/sdk/callback/IUpkVersionObserver;)V
    .registers 3

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "unregisterUpkVersionObserver"

    invoke-direct {p0, p1}, Lcom/oplus/seedling/sdk/manager/SeedlingManagerCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method
