.class public final Lcom/android/launcher3/card/seed/SeedCardClient;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ENTRANCE_LAUNCHER:I = 0x2

.field public static final INSTANCE:Lcom/android/launcher3/card/seed/SeedCardClient;

.field private static final RECOMMEND_DELAY:J = 0x1f4L

.field public static final SUPPORT_LOAD_TIMEOUT:Z = true

.field private static final TAG:Ljava/lang/String; = "SeedCardClient"

.field private static final US_TAG:Ljava/lang/String; = "panta-sugg-SeedCardClient"

.field private static context:Landroid/content/Context;

.field private static final engineCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/card/seed/SeedCardEngine$InitSuccessCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final entranceActivityStarter$delegate:Ly2/e;

.field private static final extraDataRuleSource$delegate:Ly2/e;

.field private static iSeedlingManager:Lcom/oplus/seedling/sdk/manager/ISeedlingManager;

.field private static final initCallback:Lcom/android/launcher3/card/seed/SeedCardClient$initCallback$1;

.field private static final listObserver:Lcom/oplus/seedling/sdk/recommendlist/ListObserver;

.field private static recommendList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static recommendRunnable:Ljava/lang/Runnable;

.field private static final seedStatusMonitor$delegate:Ly2/e;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/card/seed/SeedCardClient;

    invoke-direct {v0}, Lcom/android/launcher3/card/seed/SeedCardClient;-><init>()V

    sput-object v0, Lcom/android/launcher3/card/seed/SeedCardClient;->INSTANCE:Lcom/android/launcher3/card/seed/SeedCardClient;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/card/seed/SeedCardClient;->recommendList:Ljava/util/ArrayList;

    sget-object v0, Ly2/g;->c:Ly2/g;

    sget-object v1, Lcom/android/launcher3/card/seed/SeedCardClient$entranceActivityStarter$2;->INSTANCE:Lcom/android/launcher3/card/seed/SeedCardClient$entranceActivityStarter$2;

    invoke-static {v0, v1}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/card/seed/SeedCardClient;->entranceActivityStarter$delegate:Ly2/e;

    sget-object v1, Lcom/android/launcher3/card/seed/SeedCardClient$seedStatusMonitor$2;->INSTANCE:Lcom/android/launcher3/card/seed/SeedCardClient$seedStatusMonitor$2;

    invoke-static {v0, v1}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/card/seed/SeedCardClient;->seedStatusMonitor$delegate:Ly2/e;

    sget-object v1, Lcom/android/launcher3/card/seed/SeedCardClient$extraDataRuleSource$2;->INSTANCE:Lcom/android/launcher3/card/seed/SeedCardClient$extraDataRuleSource$2;

    invoke-static {v0, v1}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/card/seed/SeedCardClient;->extraDataRuleSource$delegate:Ly2/e;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/card/seed/SeedCardClient;->engineCallbacks:Ljava/util/List;

    new-instance v0, Lcom/android/launcher3/card/seed/SeedCardClient$initCallback$1;

    invoke-direct {v0}, Lcom/android/launcher3/card/seed/SeedCardClient$initCallback$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/card/seed/SeedCardClient;->initCallback:Lcom/android/launcher3/card/seed/SeedCardClient$initCallback$1;

    sget-object v0, Lcom/android/common/util/p;->d:Lcom/android/common/util/p;

    sput-object v0, Lcom/android/launcher3/card/seed/SeedCardClient;->listObserver:Lcom/oplus/seedling/sdk/recommendlist/ListObserver;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/util/List;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/card/seed/SeedCardClient;->listObserver$lambda-4(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$getEngineCallbacks$p()Ljava/util/List;
    .registers 1

    sget-object v0, Lcom/android/launcher3/card/seed/SeedCardClient;->engineCallbacks:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getISeedlingManager$p()Lcom/oplus/seedling/sdk/manager/ISeedlingManager;
    .registers 1

    sget-object v0, Lcom/android/launcher3/card/seed/SeedCardClient;->iSeedlingManager:Lcom/oplus/seedling/sdk/manager/ISeedlingManager;

    return-object v0
.end method

.method public static final synthetic access$handleSDKInitFailed(Lcom/android/launcher3/card/seed/SeedCardClient;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/card/seed/SeedCardClient;->handleSDKInitFailed()V

    return-void
.end method

.method public static final synthetic access$setISeedlingManager$p(Lcom/oplus/seedling/sdk/manager/ISeedlingManager;)V
    .registers 1

    sput-object p0, Lcom/android/launcher3/card/seed/SeedCardClient;->iSeedlingManager:Lcom/oplus/seedling/sdk/manager/ISeedlingManager;

    return-void
.end method

.method public static synthetic b()V
    .registers 0

    invoke-static {}, Lcom/android/launcher3/card/seed/SeedCardClient;->handleSDKInitFailed$lambda-2()V

    return-void
.end method

.method public static synthetic c()V
    .registers 0

    invoke-static {}, Lcom/android/launcher3/card/seed/SeedCardClient;->delayExecuteRecommend$lambda-6()V

    return-void
.end method

.method public static synthetic d(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/card/seed/SeedCardClient;->initSeedlingSdkAsync$lambda-1$lambda-0(Landroid/content/Context;)V

    return-void
.end method

.method private final delayExecuteRecommend()V
    .registers 4

    sget-object p0, Lcom/android/common/util/e0;->e:Lcom/android/common/util/e0;

    sput-object p0, Lcom/android/launcher3/card/seed/SeedCardClient;->recommendRunnable:Ljava/lang/Runnable;

    sget-object p0, Lcom/android/launcher3/card/uscard/USCardManager;->INSTANCE:Lcom/android/launcher3/card/uscard/USCardManager;

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USCardManager;->getUSCardContainer()Lcom/android/launcher3/card/uscard/USCardContainerView;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_f

    goto :goto_16

    :cond_f
    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->isContentEmpty()Z

    move-result p0

    if-ne p0, v1, :cond_16

    move v0, v1

    :cond_16
    :goto_16
    if-eqz v0, :cond_1b

    const-wide/16 v0, 0x0

    goto :goto_1d

    :cond_1b
    const-wide/16 v0, 0x1f4

    :goto_1d
    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p0

    sget-object v2, Lcom/android/launcher3/card/seed/SeedCardClient;->recommendRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final delayExecuteRecommend$lambda-6()V
    .registers 4

    sget-object v0, Lcom/android/launcher3/card/seed/SeedCardClient;->INSTANCE:Lcom/android/launcher3/card/seed/SeedCardClient;

    const/4 v1, 0x0

    sput-object v1, Lcom/android/launcher3/card/seed/SeedCardClient;->recommendRunnable:Ljava/lang/Runnable;

    new-instance v2, Lcom/android/launcher3/card/seed/SeedContentPolicy;

    invoke-direct {v2}, Lcom/android/launcher3/card/seed/SeedContentPolicy;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/android/launcher3/card/seed/SeedCardClient;->getRecommendList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3, v1}, Lcom/android/launcher3/card/seed/SeedContentPolicy;->resolveServiceInfo(Ljava/util/List;Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/card/seed/SeedContentResult;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/card/uscard/USCardManager;->INSTANCE:Lcom/android/launcher3/card/uscard/USCardManager;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/card/uscard/USCardManager;->onRecommendListChange(Lcom/android/launcher3/card/seed/SeedContentResult;)V

    return-void
.end method

.method private final handleSDKInitFailed()V
    .registers 2

    sget-object p0, Lcom/android/launcher3/card/seed/SeedCardClient;->recommendList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    sget-object v0, Lcom/android/common/util/f0;->d:Lcom/android/common/util/f0;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private static final handleSDKInitFailed$lambda-2()V
    .registers 2

    sget-object v0, Lcom/android/launcher3/card/seed/SeedCardClient;->INSTANCE:Lcom/android/launcher3/card/seed/SeedCardClient;

    invoke-direct {v0}, Lcom/android/launcher3/card/seed/SeedCardClient;->tryRemoveRecommendMsg()V

    sget-object v0, Lcom/android/launcher3/card/uscard/USCardManager;->INSTANCE:Lcom/android/launcher3/card/uscard/USCardManager;

    sget-object v1, Lcom/android/launcher3/card/seed/SeedEntranceHelper;->INSTANCE:Lcom/android/launcher3/card/seed/SeedEntranceHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/card/seed/SeedEntranceHelper;->assembleLocalTipCardList()Lcom/android/launcher3/card/seed/SeedContentResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/card/uscard/USCardManager;->onRecommendListChange(Lcom/android/launcher3/card/seed/SeedContentResult;)V

    return-void
.end method

.method private static final initSeedlingSdkAsync$lambda-1$lambda-0(Landroid/content/Context;)V
    .registers 4

    const-string v0, "$this_apply"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "SeedCardClient"

    const-string v1, "initSeedlingSdkAsync ing..."

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->usDebug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    sget-object v1, Lcom/oplus/seedling/sdk/entity/EngineType;->STANDARD:Lcom/oplus/seedling/sdk/entity/EngineType;

    sget-object v2, Lcom/android/launcher3/card/seed/SeedCardClient;->initCallback:Lcom/android/launcher3/card/seed/SeedCardClient$initCallback$1;

    invoke-virtual {v0, p0, v1, v2}, Lcom/oplus/seedling/sdk/SeedlingSdk;->init(Landroid/content/Context;Lcom/oplus/seedling/sdk/entity/EngineType;Lcom/oplus/seedling/sdk/callback/InitCallback;)V

    sget-object p0, Lcom/android/launcher3/card/seed/SeedCardClient;->INSTANCE:Lcom/android/launcher3/card/seed/SeedCardClient;

    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/SeedCardClient;->getExtraDataRuleSource()Lcom/android/launcher3/card/seed/ExtraDataRuleSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/card/seed/ExtraDataRuleSource;->fetchAnalogousCards()V

    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/SeedCardClient;->getExtraDataRuleSource()Lcom/android/launcher3/card/seed/ExtraDataRuleSource;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/ExtraDataRuleSource;->registerObserver$OplusLauncher_OPPOPallExportAallRelease()V

    return-void
.end method

.method private static final listObserver$lambda-4(Ljava/util/List;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/card/seed/SeedCardClient;->INSTANCE:Lcom/android/launcher3/card/seed/SeedCardClient;

    invoke-virtual {v0}, Lcom/android/launcher3/card/seed/SeedCardClient;->getRecommendList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0}, Lcom/android/launcher3/card/seed/SeedCardClient;->getRecommendList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lcom/android/launcher3/card/seed/SeedCardClient;->getRecommendList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "listObserver: recommendList.size = "

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "panta-sugg-SeedCardClient"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_60

    invoke-virtual {v0}, Lcom/android/launcher3/card/seed/SeedCardClient;->getRecommendList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_60

    invoke-virtual {v0}, Lcom/android/launcher3/card/seed/SeedCardClient;->getRecommendList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_47
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

    const-string/jumbo v1, "serviceInfo: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeedCardClient"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->usDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_47

    :cond_60
    sget-object p0, Lcom/android/launcher3/card/seed/SeedCardClient;->INSTANCE:Lcom/android/launcher3/card/seed/SeedCardClient;

    invoke-direct {p0}, Lcom/android/launcher3/card/seed/SeedCardClient;->onRecommendListChange()V

    return-void
.end method

.method private final onRecommendListChange()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/card/seed/SeedCardClient;->tryRemoveRecommendMsg()V

    invoke-direct {p0}, Lcom/android/launcher3/card/seed/SeedCardClient;->delayExecuteRecommend()V

    return-void
.end method

.method private final tryRemoveRecommendMsg()V
    .registers 2

    sget-object p0, Lcom/android/launcher3/card/seed/SeedCardClient;->recommendRunnable:Ljava/lang/Runnable;

    if-nez p0, :cond_5

    goto :goto_e

    :cond_5
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_e
    return-void
.end method


# virtual methods
.method public final addEngineCallback(Lcom/android/launcher3/card/seed/SeedCardEngine$InitSuccessCallback;)V
    .registers 2

    const-string p0, "callback"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/card/seed/SeedCardClient;->engineCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .registers 1

    sget-object p0, Lcom/android/launcher3/card/seed/SeedCardClient;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final getEntranceActivityStarter()Lcom/android/launcher3/card/seed/EntranceActivityStarter;
    .registers 1

    sget-object p0, Lcom/android/launcher3/card/seed/SeedCardClient;->entranceActivityStarter$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/card/seed/EntranceActivityStarter;

    return-object p0
.end method

.method public final getExtraDataRuleSource()Lcom/android/launcher3/card/seed/ExtraDataRuleSource;
    .registers 1

    sget-object p0, Lcom/android/launcher3/card/seed/SeedCardClient;->extraDataRuleSource$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/card/seed/ExtraDataRuleSource;

    return-object p0
.end method

.method public final getRecommendList()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/android/launcher3/card/seed/SeedCardClient;->recommendList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getSeedStatusMonitor()Lcom/android/launcher3/card/seed/SeedStatusMonitor;
    .registers 1

    sget-object p0, Lcom/android/launcher3/card/seed/SeedCardClient;->seedStatusMonitor$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/card/seed/SeedStatusMonitor;

    return-object p0
.end method

.method public final initSeedlingSdkAsync()V
    .registers 6

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isSeedlingCardDisabled()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isSeedlingContainerCardDisabled()Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    :cond_f
    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/SeedCardClient;->getSeedStatusMonitor()Lcom/android/launcher3/card/seed/SeedStatusMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/card/seed/SeedStatusMonitor;->getHasUsOrContainerCard()Z

    move-result v0

    const-string v1, "SeedCardClient"

    if-nez v0, :cond_20

    const-string v0, "initSeedlingSdkAsync, set has us card."

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/SeedCardClient;->getSeedStatusMonitor()Lcom/android/launcher3/card/seed/SeedStatusMonitor;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/launcher3/card/seed/SeedStatusMonitor;->setHasUsOrContainerCard(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/SeedCardClient;->getSeedStatusMonitor()Lcom/android/launcher3/card/seed/SeedStatusMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/SeedStatusMonitor;->getHasInit()Z

    move-result p0

    if-eqz p0, :cond_33

    return-void

    :cond_33
    sget-object p0, Lcom/android/launcher3/card/seed/SeedCardClient;->context:Landroid/content/Context;

    if-nez p0, :cond_38

    goto :goto_90

    :cond_38
    sget-object v0, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->getNoCreate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pm/UserCache;

    const/4 v3, 0x0

    if-nez v0, :cond_44

    goto :goto_4f

    :cond_44
    invoke-virtual {p0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/launcher3/pm/UserCache;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v0

    if-ne v0, v2, :cond_4f

    move v3, v2

    :cond_4f
    :goto_4f
    if-eqz v3, :cond_77

    sget-object v0, Lcom/android/launcher3/card/seed/SeedCardClient;->INSTANCE:Lcom/android/launcher3/card/seed/SeedCardClient;

    invoke-virtual {v0}, Lcom/android/launcher3/card/seed/SeedCardClient;->getSeedStatusMonitor()Lcom/android/launcher3/card/seed/SeedStatusMonitor;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/card/seed/SeedStatusMonitor;->setHasInit(Z)V

    const/4 v0, 0x2

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "initSeedlingSdkAsync, callers: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "panta-sugg-SeedCardClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Ls/c;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Ls/c;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_90

    :cond_77
    const-string v0, "initSeedlingSdkAsync, "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " has NOT unlock."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->usDebug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_90
    return-void
.end method

.method public final onUserUnlock()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/SeedCardClient;->getSeedStatusMonitor()Lcom/android/launcher3/card/seed/SeedStatusMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/card/seed/SeedStatusMonitor;->getHasUsOrContainerCard()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/SeedCardClient;->initSeedlingSdkAsync()V

    :cond_d
    return-void
.end method

.method public final registerListObserver()V
    .registers 3

    invoke-static {}, Lcom/android/launcher3/card/seed/SeedEntranceHelper;->isSupportSeedContainerCard()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/SeedCardClient;->getSeedStatusMonitor()Lcom/android/launcher3/card/seed/SeedStatusMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/card/seed/SeedStatusMonitor;->getHasRegisterListener()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "registerListObserver, hasRegisterListener = "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "panta-sugg-SeedCardClient"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/SeedCardClient;->getSeedStatusMonitor()Lcom/android/launcher3/card/seed/SeedStatusMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/card/seed/SeedStatusMonitor;->getHasRegisterListener()Z

    move-result v0

    if-nez v0, :cond_45

    sget-object v0, Lcom/android/launcher3/card/seed/SeedCardClient;->iSeedlingManager:Lcom/oplus/seedling/sdk/manager/ISeedlingManager;

    if-eqz v0, :cond_45

    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/SeedCardClient;->getSeedStatusMonitor()Lcom/android/launcher3/card/seed/SeedStatusMonitor;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/card/seed/SeedStatusMonitor;->setHasRegisterListener(Z)V

    sget-object p0, Lcom/android/launcher3/card/seed/SeedCardClient;->iSeedlingManager:Lcom/oplus/seedling/sdk/manager/ISeedlingManager;

    if-nez p0, :cond_3b

    goto :goto_40

    :cond_3b
    sget-object v0, Lcom/android/launcher3/card/seed/SeedCardClient;->listObserver:Lcom/oplus/seedling/sdk/recommendlist/ListObserver;

    invoke-interface {p0, v0}, Lcom/oplus/seedling/sdk/manager/ISeedlingManager;->register(Lcom/oplus/seedling/sdk/recommendlist/ListObserver;)V

    :goto_40
    sget-object p0, Lcom/android/launcher3/card/seed/StatisticsRecorder;->Companion:Lcom/android/launcher3/card/seed/StatisticsRecorder$Companion;

    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/StatisticsRecorder$Companion;->reportRequestPushEvent()V

    :cond_45
    return-void
.end method

.method public final release()V
    .registers 3

    const-string/jumbo v0, "panta-sugg-SeedCardClient"

    const-string/jumbo v1, "release."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/SeedCardClient;->getSeedStatusMonitor()Lcom/android/launcher3/card/seed/SeedStatusMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/card/seed/SeedStatusMonitor;->getHasInit()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/SeedCardClient;->getExtraDataRuleSource()Lcom/android/launcher3/card/seed/ExtraDataRuleSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/card/seed/ExtraDataRuleSource;->unregisterObserver$OplusLauncher_OPPOPallExportAallRelease()V

    :cond_1a
    sget-object v0, Lcom/android/launcher3/card/seed/SeedCardClient;->engineCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/SeedlingSdk;->release()V

    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/SeedCardClient;->getSeedStatusMonitor()Lcom/android/launcher3/card/seed/SeedStatusMonitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/card/seed/SeedStatusMonitor;->setHasUsOrContainerCard(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/SeedCardClient;->getSeedStatusMonitor()Lcom/android/launcher3/card/seed/SeedStatusMonitor;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/card/seed/SeedStatusMonitor;->setHasInit(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/SeedCardClient;->getSeedStatusMonitor()Lcom/android/launcher3/card/seed/SeedStatusMonitor;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/card/seed/SeedStatusMonitor;->setHasRegisterListener(Z)V

    return-void
.end method

.method public final seedingManager()Lcom/oplus/seedling/sdk/manager/ISeedlingManager;
    .registers 1

    sget-object p0, Lcom/android/launcher3/card/seed/SeedCardClient;->iSeedlingManager:Lcom/oplus/seedling/sdk/manager/ISeedlingManager;

    return-object p0
.end method

.method public final setContext(Landroid/content/Context;)V
    .registers 2

    sput-object p1, Lcom/android/launcher3/card/seed/SeedCardClient;->context:Landroid/content/Context;

    return-void
.end method

.method public final setRecommendList(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;",
            ">;)V"
        }
    .end annotation

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/android/launcher3/card/seed/SeedCardClient;->recommendList:Ljava/util/ArrayList;

    return-void
.end method

.method public final setup(Landroid/app/Application;)V
    .registers 2

    const-string p0, "app"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/android/launcher3/card/seed/SeedCardClient;->context:Landroid/content/Context;

    return-void
.end method

.method public final unRegisterListObserver()V
    .registers 3

    invoke-static {}, Lcom/android/launcher3/card/seed/SeedEntranceHelper;->isSupportSeedContainerCard()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v0, "SeedCardClient"

    const-string/jumbo v1, "unRegisterListObserver"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->usDebug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/card/seed/SeedCardClient;->tryRemoveRecommendMsg()V

    sget-object v0, Lcom/android/launcher3/card/seed/SeedCardClient;->iSeedlingManager:Lcom/oplus/seedling/sdk/manager/ISeedlingManager;

    if-nez v0, :cond_17

    goto :goto_1c

    :cond_17
    sget-object v1, Lcom/android/launcher3/card/seed/SeedCardClient;->listObserver:Lcom/oplus/seedling/sdk/recommendlist/ListObserver;

    invoke-interface {v0, v1}, Lcom/oplus/seedling/sdk/manager/ISeedlingManager;->unregister(Lcom/oplus/seedling/sdk/recommendlist/ListObserver;)V

    :goto_1c
    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/SeedCardClient;->getSeedStatusMonitor()Lcom/android/launcher3/card/seed/SeedStatusMonitor;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/card/seed/SeedStatusMonitor;->setHasRegisterListener(Z)V

    return-void
.end method

.method public final useRecommendList(Lcom/android/launcher3/CellLayout;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "useRecommendList, cellLayout = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hasRegisterListener = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/SeedCardClient;->getSeedStatusMonitor()Lcom/android/launcher3/card/seed/SeedStatusMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/card/seed/SeedStatusMonitor;->getHasRegisterListener()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeedCardClient"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/card/seed/SeedCardClient;->tryRemoveRecommendMsg()V

    new-instance p0, Lcom/android/launcher3/card/seed/SeedContentPolicy;

    invoke-direct {p0}, Lcom/android/launcher3/card/seed/SeedContentPolicy;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/launcher3/card/seed/SeedCardClient;->recommendList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/card/seed/SeedContentPolicy;->resolveServiceInfo(Ljava/util/List;Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/card/seed/SeedContentResult;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/card/uscard/USCardManager;->INSTANCE:Lcom/android/launcher3/card/uscard/USCardManager;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/card/uscard/USCardManager;->onRecommendListChange(Lcom/android/launcher3/card/seed/SeedContentResult;)V

    return-void
.end method
