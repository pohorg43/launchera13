.class public final Lcom/oplus/card/config/domain/CardConfigInfoManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/card/config/domain/ICardConfigInfoManager;
.implements Lcom/oplus/card/config/domain/IConfigServiceProxy$Callback;


# instance fields
.field private final callbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "Lcom/oplus/card/config/domain/model/CardConfigInfo;",
            ">;",
            "Ly2/p;",
            ">;>;"
        }
    .end annotation
.end field

.field private cardConfigListInit:Z

.field private cardConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/oplus/card/config/domain/model/CardConfigInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final cardTypeRepository$delegate:Ly2/e;

.field private final configServiceProxy$delegate:Ly2/e;

.field private operatingRecommendInit:Z

.field private final operatingRecommendList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingCardConfigCB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "Lcom/oplus/card/config/domain/model/CardConfigInfo;",
            ">;",
            "Ly2/p;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final pendingOperatingRecommendCB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;",
            ">;",
            "Ly2/p;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private seedCardConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/card/config/domain/model/CardConfigInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 7

    const-class v0, Lcom/oplus/card/config/domain/ICardTypeRepository;

    const-class v1, Lcom/oplus/card/config/domain/IConfigServiceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v2, Lcom/oplus/card/di/GlobalDI;->INSTANCE:Lcom/oplus/card/di/GlobalDI;

    invoke-virtual {v2}, Lcom/oplus/card/di/GlobalDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Ln3/c;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "the class are not injected"

    if-eqz v3, :cond_78

    invoke-virtual {v2}, Lcom/oplus/card/di/GlobalDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Ln3/c;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type kotlin.Lazy<T of com.oplus.card.di.GlobalDI.injectSingle>"

    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Ly2/e;

    iput-object v1, p0, Lcom/oplus/card/config/domain/CardConfigInfoManager;->configServiceProxy$delegate:Ly2/e;

    invoke-virtual {v2}, Lcom/oplus/card/di/GlobalDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Ln3/c;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_72

    invoke-virtual {v2}, Lcom/oplus/card/di/GlobalDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Ln3/c;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ly2/e;

    iput-object v0, p0, Lcom/oplus/card/config/domain/CardConfigInfoManager;->cardTypeRepository$delegate:Ly2/e;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/card/config/domain/CardConfigInfoManager;->callbackList:Ljava/util/List;

    sget-object v0, Lz2/v;->a:Lz2/v;

    iput-object v0, p0, Lcom/oplus/card/config/domain/CardConfigInfoManager;->cardConfigMap:Ljava/util/Map;

    iput-object v0, p0, Lcom/oplus/card/config/domain/CardConfigInfoManager;->seedCardConfigMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/card/config/domain/CardConfigInfoManager;->operatingRecommendList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/card/config/domain/CardConfigInfoManager;->pendingCardConfigCB:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/card/config/domain/CardConfigInfoManager;->pendingOperatingRecommendCB:Ljava/util/List;

    return-void

    :cond_72
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_78
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic a(Ljava/util/List;Lcom/oplus/card/config/domain/CardConfigInfoManager;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/card/config/domain/CardConfigInfoManager;->onCardConfigChange$lambda-4(Ljava/util/List;Lcom/oplus/card/config/domain/CardConfigInfoManager;)V

    return-void
.end method

.method private final checkCardEnable(Lcom/oplus/card/config/domain/model/CardConfigInfo;)Z
    .registers 3

    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->isSeedlingCardDisabled()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_13

    invoke-virtual {p1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getCategory()I

    move-result p0

    const/16 p1, 0x64

    if-eq p0, p1, :cond_12

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :cond_13
    :goto_13
    return v0
.end method

.method private final createSeedCardMapKey(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x23

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getCardTypeRepository()Lcom/oplus/card/config/domain/ICardTypeRepository;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/config/domain/CardConfigInfoManager;->cardTypeRepository$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/card/config/domain/ICardTypeRepository;

    return-object p0
.end method

.method private final getConfigServiceProxy()Lcom/oplus/card/config/domain/IConfigServiceProxy;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/config/domain/CardConfigInfoManager;->configServiceProxy$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/card/config/domain/IConfigServiceProxy;

    return-object p0
.end method

.method private final notifyCardConfigChange()V
    .registers 7

    iget-object v0, p0, Lcom/oplus/card/config/domain/CardConfigInfoManager;->cardConfigMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lz2/r;->N(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/card/config/domain/CardConfigInfoManager;->callbackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_20
    const/16 v1, 0xa

    invoke-static {v0, v1}, Lz2/l;->t(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Lz2/b0;->a(I)I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_2f

    move v1, v2

    :cond_2f
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_38
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    invoke-virtual {v3}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getServiceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSize()I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/oplus/card/config/domain/CardConfigInfoManager;->createSeedCardMapKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_38

    :cond_54
    iput-object v2, p0, Lcom/oplus/card/config/domain/CardConfigInfoManager;->seedCardConfigMap:Ljava/util/Map;

    sget-object v1, Lcom/oplus/card/util/LogD;->INSTANCE:Lcom/oplus/card/util/LogD;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "onCardConfigChange seed card list.size: "

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oplus/card/util/LogD;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/card/config/domain/CardConfigInfoManager;->pendingCardConfigCB:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_9f

    invoke-virtual {p0, v0}, Lcom/oplus/card/config/domain/CardConfigInfoManager;->filterCardConfigForShop(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/card/config/domain/CardConfigInfoManager;->pendingCardConfigCB:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_81
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function1;

    if-nez v2, :cond_96

    goto :goto_81

    :cond_96
    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_81

    :cond_9a
    iget-object p0, p0, Lcom/oplus/card/config/domain/CardConfigInfoManager;->pendingCardConfigCB:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_9f
    return-void
.end method

.method private static final onCardConfigChange$lambda-4(Ljava/util/List;Lcom/oplus/card/config/domain/CardConfigInfoManager;)V
    .registers 5

    const-string v0, "$list"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/card/util/LogD;->INSTANCE:Lcom/oplus/card/util/LogD;

    const-string v1, "onCardConfigChange list.size--:"

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", cardConfigMap size ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/oplus/card/config/domain/CardConfigInfoManager;->cardConfigMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/oplus/card/util/LogD;->fileLog(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_32
    :goto_32
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_50

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_32

    sget-object v0, Lcom/oplus/card/util/LogD;->INSTANCE:Lcom/oplus/card/util/LogD;

    const-string v1, "onCardConfigChange card info:"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/oplus/card/util/LogD;->log(Ljava/lang/String;)V

    goto :goto_32

    :cond_50
    return-void
.end method


# virtual methods
.method public final filterCardConfigForShop(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/card/config/domain/model/CardConfigInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/oplus/card/config/domain/model/CardConfigInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    invoke-virtual {v2}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getDynamic()Z

    sget-object v3, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    invoke-virtual {v3}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v3

    invoke-virtual {v2}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getDisplayArea()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/oplus/card/manager/domain/CardManager;->isLauncherCardDisplayArea(I)Z

    invoke-virtual {v2}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getReservedFlag()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_35

    const/4 v2, 0x1

    goto :goto_36

    :cond_35
    const/4 v2, 0x0

    :goto_36
    if-eqz v2, :cond_e

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_3c
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_45
    :goto_45
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    invoke-direct {p0, v2}, Lcom/oplus/card/config/domain/CardConfigInfoManager;->checkCardEnable(Lcom/oplus/card/config/domain/model/CardConfigInfo;)Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_45

    :cond_5c
    return-object p1
.end method

.method public final filterOperatingRecommendForShop(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/card/config/domain/CardConfigInfoManager;->getCardTypeRepository()Lcom/oplus/card/config/domain/ICardTypeRepository;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/card/config/domain/ICardTypeRepository;->getShowingTypes()Ljava/util/Set;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_16
    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;

    invoke-virtual {v2}, Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_16

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_37
    return-object v0
.end method

.method public getAllConfigListForShop(Lkotlin/jvm/functions/Function1;)V
    .registers 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lcom/oplus/card/config/domain/model/CardConfigInfo;",
            ">;",
            "Ly2/p;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oplus/card/config/domain/CardConfigInfoManager;->cardConfigListInit:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/oplus/card/config/domain/CardConfigInfoManager;->cardConfigMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lz2/r;->N(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/card/config/domain/CardConfigInfoManager;->filterCardConfigForShop(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_25

    :cond_1b
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/oplus/card/config/domain/CardConfigInfoManager;->pendingCardConfigCB:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_25
    return-void
.end method

.method public getCardConfig(I)Lcom/oplus/card/config/domain/model/CardConfigInfo;
    .registers 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-object p0, p0, Lcom/oplus/card/config/domain/CardConfigInfoManager;->cardConfigMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    return-object p0
.end method

.method public getCardConfigMapSize()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/config/domain/CardConfigInfoManager;->cardConfigMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public getOperatingRecommendForShop(Lkotlin/jvm/functions/Function1;)V
    .registers 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;",
            ">;",
            "Ly2/p;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oplus/card/config/domain/CardConfigInfoManager;->operatingRecommendInit:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/oplus/card/config/domain/CardConfigInfoManager;->operatingRecommendList:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/oplus/card/config/domain/CardConfigInfoManager;->filterOperatingRecommendForShop(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    :cond_13
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/oplus/card/config/domain/CardConfigInfoManager;->pendingOperatingRecommendCB:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1d
    return-void
.end method

.method public getSeedCardConfig(Ljava/lang/String;I)Lcom/oplus/card/config/domain/model/CardConfigInfo;
    .registers 4

    const-string v0, "serviceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/card/config/domain/CardConfigInfoManager;->seedCardConfigMap:Ljava/util/Map;

    invoke-direct {p0, p1, p2}, Lcom/oplus/card/config/domain/CardConfigInfoManager;->createSeedCardMapKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    return-object p0
.end method

.method public initPullConfig()V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/card/config/domain/CardConfigInfoManager;->getConfigServiceProxy()Lcom/oplus/card/config/domain/IConfigServiceProxy;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/card/config/domain/IConfigServiceProxy;->requestInitConfig()V

    return-void
.end method

.method public isCardConfigListInit()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/card/config/domain/CardConfigInfoManager;->cardConfigListInit:Z

    return p0
.end method

.method public onCardConfigChange(Ljava/util/List;)V
    .registers 6
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/card/config/domain/model/CardConfigInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    invoke-direct {p0, v3}, Lcom/oplus/card/config/domain/CardConfigInfoManager;->checkCardEnable(Lcom/oplus/card/config/domain/model/CardConfigInfo;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_25
    const/16 v1, 0xa

    invoke-static {v0, v1}, Lz2/l;->t(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Lz2/b0;->a(I)I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_34

    move v1, v2

    :cond_34
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    invoke-virtual {v1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3d

    :cond_55
    iput-object v2, p0, Lcom/oplus/card/config/domain/CardConfigInfoManager;->cardConfigMap:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/card/config/domain/CardConfigInfoManager;->cardConfigListInit:Z

    sget-object v0, Lcom/oplus/util/OplusExecutors;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/wm/shell/bubbles/animation/o;

    invoke-direct {v1, p1, p0}, Lcom/android/wm/shell/bubbles/animation/o;-><init>(Ljava/util/List;Lcom/oplus/card/config/domain/CardConfigInfoManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/oplus/card/config/domain/CardConfigInfoManager;->notifyCardConfigChange()V

    return-void
.end method

.method public onOperatingRecommendChange(Ljava/util/List;)V
    .registers 5
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/card/config/domain/CardConfigInfoManager;->operatingRecommendList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/oplus/card/config/domain/CardConfigInfoManager;->operatingRecommendList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/card/config/domain/CardConfigInfoManager;->operatingRecommendInit:Z

    sget-object v1, Lcom/oplus/card/util/LogD;->INSTANCE:Lcom/oplus/card/util/LogD;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "onOperatingRecommendChange:"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/oplus/card/util/LogD;->log(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/card/config/domain/CardConfigInfoManager;->pendingOperatingRecommendCB:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_58

    iget-object p1, p0, Lcom/oplus/card/config/domain/CardConfigInfoManager;->operatingRecommendList:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/oplus/card/config/domain/CardConfigInfoManager;->filterOperatingRecommendForShop(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/card/config/domain/CardConfigInfoManager;->pendingOperatingRecommendCB:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function1;

    if-nez v1, :cond_4f

    goto :goto_3a

    :cond_4f
    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3a

    :cond_53
    iget-object p0, p0, Lcom/oplus/card/config/domain/CardConfigInfoManager;->pendingOperatingRecommendCB:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_58
    return-void
.end method

.method public final registerCardCallback()V
    .registers 2

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/card/CardPermissionManager;->isPermissionAllowed()Z

    move-result v0

    if-nez v0, :cond_12

    sget-object p0, Lcom/oplus/card/util/LogD;->INSTANCE:Lcom/oplus/card/util/LogD;

    const-string v0, "CardConfigInfoManager no permission"

    invoke-virtual {p0, v0}, Lcom/oplus/card/util/LogD;->log(Ljava/lang/String;)V

    return-void

    :cond_12
    invoke-direct {p0}, Lcom/oplus/card/config/domain/CardConfigInfoManager;->getConfigServiceProxy()Lcom/oplus/card/config/domain/IConfigServiceProxy;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/oplus/card/config/domain/IConfigServiceProxy;->registerCardConfigCallback(Lcom/oplus/card/config/domain/IConfigServiceProxy$Callback;)V

    return-void
.end method

.method public registerCardConfigCallback(Lkotlin/jvm/functions/Function1;)V
    .registers 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lcom/oplus/card/config/domain/model/CardConfigInfo;",
            ">;",
            "Ly2/p;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/card/config/domain/CardConfigInfoManager;->callbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/oplus/card/config/domain/CardConfigInfoManager;->callbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/oplus/card/config/domain/CardConfigInfoManager;->cardConfigListInit:Z

    if-eqz v0, :cond_23

    iget-object p0, p0, Lcom/oplus/card/config/domain/CardConfigInfoManager;->cardConfigMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-static {p0}, Lz2/r;->N(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    return-void
.end method

.method public registerServiceProxyCardCallback()V
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/card/config/domain/CardConfigInfoManager;->registerCardCallback()V

    return-void
.end method

.method public unRegisterServiceProxyCardCallback()V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/card/config/domain/CardConfigInfoManager;->getConfigServiceProxy()Lcom/oplus/card/config/domain/IConfigServiceProxy;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/oplus/card/config/domain/IConfigServiceProxy;->unregisterCardConfigCallback(Lcom/oplus/card/config/domain/IConfigServiceProxy$Callback;)V

    return-void
.end method

.method public unregisterCardConfigCallback(Lkotlin/jvm/functions/Function1;)V
    .registers 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lcom/oplus/card/config/domain/model/CardConfigInfo;",
            ">;",
            "Ly2/p;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/card/config/domain/CardConfigInfoManager;->callbackList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
