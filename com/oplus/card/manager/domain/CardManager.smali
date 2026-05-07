.class public final Lcom/oplus/card/manager/domain/CardManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/card/manager/domain/ICardManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/card/manager/domain/CardManager$Companion;,
        Lcom/oplus/card/manager/domain/CardManager$ConfigGetterCallback;,
        Lcom/oplus/card/manager/domain/CardManager$CardListChangeCallback;
    }
.end annotation


# static fields
.field private static final ASSISTANT_CLIENT_NAME:Ljava/lang/String; = "card_service"

.field public static final Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

.field private static final DELAY_ADVICE_CHECK:J = 0x3e8L

.field private static final NOTIFY_CARD_CONFIG_CHANGE_DELAY:J = 0xbb8L

.field private static final instance:Lcom/oplus/card/manager/domain/CardManager;


# instance fields
.field private final callbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/oplus/card/manager/domain/model/ChangeCardEvent;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final cardConfigInfoManager$delegate:Ly2/e;

.field private cardConfigList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/card/config/domain/model/CardConfigInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final cardIdAllocation:Lcom/oplus/card/manager/domain/CardIdAllocation;

.field private final cardListChangeCB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/card/manager/domain/CardManager$CardListChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final cardManagerProxy$delegate:Ly2/e;

.field private final cardModelList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/oplus/card/manager/domain/model/CardModel;",
            ">;"
        }
    .end annotation
.end field

.field private createWithEmptyConfig:Z

.field private final innerConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/oplus/card/config/domain/model/CardConfigInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private notifyCardConfigChangeRunnable:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/oplus/card/manager/domain/CardManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/card/manager/domain/CardManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    new-instance v0, Lcom/oplus/card/manager/domain/CardManager;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/oplus/card/manager/domain/CardManager;-><init>(Lcom/oplus/card/manager/domain/CardIdAllocation;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/card/manager/domain/CardManager;->instance:Lcom/oplus/card/manager/domain/CardManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/oplus/card/manager/domain/CardManager;-><init>(Lcom/oplus/card/manager/domain/CardIdAllocation;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/oplus/card/manager/domain/CardIdAllocation;)V
    .registers 7

    const-class v0, Lcom/oplus/card/manager/domain/ICardManagerProxy;

    const-class v1, Lcom/oplus/card/config/domain/ICardConfigInfoManager;

    const-string v2, "cardIdAllocation"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/card/manager/domain/CardManager;->cardIdAllocation:Lcom/oplus/card/manager/domain/CardIdAllocation;

    sget-object p1, Lcom/oplus/card/di/GlobalDI;->INSTANCE:Lcom/oplus/card/di/GlobalDI;

    invoke-virtual {p1}, Lcom/oplus/card/di/GlobalDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Ln3/c;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "the class are not injected"

    if-eqz v2, :cond_a6

    invoke-virtual {p1}, Lcom/oplus/card/di/GlobalDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Ln3/c;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Lazy<T of com.oplus.card.di.GlobalDI.injectSingle>"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Ly2/e;

    iput-object v1, p0, Lcom/oplus/card/manager/domain/CardManager;->cardConfigInfoManager$delegate:Ly2/e;

    invoke-virtual {p1}, Lcom/oplus/card/di/GlobalDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Ln3/c;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_a0

    invoke-virtual {p1}, Lcom/oplus/card/di/GlobalDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Ln3/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ly2/e;

    iput-object p1, p0, Lcom/oplus/card/manager/domain/CardManager;->cardManagerProxy$delegate:Ly2/e;

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/oplus/card/manager/domain/CardManager;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/oplus/card/manager/domain/CardManager;->cardModelList:Ljava/util/Set;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/oplus/card/manager/domain/CardManager;->innerConfigMap:Ljava/util/Map;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oplus/card/manager/domain/CardManager;->callbackList:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oplus/card/manager/domain/CardManager;->cardConfigList:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oplus/card/manager/domain/CardManager;->cardListChangeCB:Ljava/util/List;

    new-instance p1, Lcom/android/launcher3/widget/a;

    invoke-direct {p1, p0}, Lcom/android/launcher3/widget/a;-><init>(Lcom/oplus/card/manager/domain/CardManager;)V

    iput-object p1, p0, Lcom/oplus/card/manager/domain/CardManager;->notifyCardConfigChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfoManager()Lcom/oplus/card/config/domain/ICardConfigInfoManager;

    move-result-object p1

    new-instance v0, Lcom/oplus/card/manager/domain/CardManager$1;

    invoke-direct {v0, p0}, Lcom/oplus/card/manager/domain/CardManager$1;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lcom/oplus/card/config/domain/ICardConfigInfoManager;->registerCardConfigCallback(Lkotlin/jvm/functions/Function1;)V

    new-instance p1, Lcom/oplus/card/manager/domain/CardManager$configGetterCallback$1;

    invoke-direct {p1, p0}, Lcom/oplus/card/manager/domain/CardManager$configGetterCallback$1;-><init>(Lcom/oplus/card/manager/domain/CardManager;)V

    invoke-direct {p0}, Lcom/oplus/card/manager/domain/CardManager;->getCardManagerProxy()Lcom/oplus/card/manager/domain/ICardManagerProxy;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/card/manager/domain/ICardManagerProxy;->setupConfigGetterCallback(Lcom/oplus/card/manager/domain/CardManager$ConfigGetterCallback;)V

    return-void

    :cond_a0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(Lcom/oplus/card/manager/domain/CardIdAllocation;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_a

    new-instance p1, Lcom/oplus/card/manager/domain/CardIdAllocation;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p3, p2}, Lcom/oplus/card/manager/domain/CardIdAllocation;-><init>(Lq3/f0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_a
    invoke-direct {p0, p1}, Lcom/oplus/card/manager/domain/CardManager;-><init>(Lcom/oplus/card/manager/domain/CardIdAllocation;)V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/card/manager/domain/CardManager;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/card/manager/domain/CardManager;->notifyCardConfigChangeRunnable$lambda-0(Lcom/oplus/card/manager/domain/CardManager;)V

    return-void
.end method

.method public static final synthetic access$findModel(Lcom/oplus/card/manager/domain/CardManager;Ljava/util/Set;III)Lcom/oplus/card/manager/domain/model/CardModel;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/card/manager/domain/CardManager;->findModel(Ljava/util/Set;III)Lcom/oplus/card/manager/domain/model/CardModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCardModelList$p(Lcom/oplus/card/manager/domain/CardManager;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/manager/domain/CardManager;->cardModelList:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$getInstance$cp()Lcom/oplus/card/manager/domain/CardManager;
    .registers 1

    sget-object v0, Lcom/oplus/card/manager/domain/CardManager;->instance:Lcom/oplus/card/manager/domain/CardManager;

    return-object v0
.end method

.method public static synthetic b(IIILcom/oplus/card/manager/domain/model/CardModel;)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/oplus/card/manager/domain/CardManager;->removeModel$lambda-14(IIILcom/oplus/card/manager/domain/model/CardModel;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c()V
    .registers 0

    invoke-static {}, Lcom/oplus/card/manager/domain/CardManager;->notifyCardConfigListChange$lambda-10()V

    return-void
.end method

.method private final findModel(Ljava/util/Set;III)Lcom/oplus/card/manager/domain/model/CardModel;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/oplus/card/manager/domain/model/CardModel;",
            ">;III)",
            "Lcom/oplus/card/manager/domain/model/CardModel;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/model/CardModel;->getType()I

    move-result v1

    if-ne v1, p2, :cond_25

    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/model/CardModel;->getCardId()I

    move-result v1

    if-ne v1, p3, :cond_25

    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/model/CardModel;->getHostId()I

    move-result v0

    if-ne v0, p4, :cond_25

    const/4 v0, 0x1

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    if-eqz v0, :cond_4

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    check-cast p1, Lcom/oplus/card/manager/domain/model/CardModel;

    return-object p1
.end method

.method private final getCardManagerProxy()Lcom/oplus/card/manager/domain/ICardManagerProxy;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/manager/domain/CardManager;->cardManagerProxy$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/card/manager/domain/ICardManagerProxy;

    return-object p0
.end method

.method public static final getInstance()Lcom/oplus/card/manager/domain/CardManager;
    .registers 1

    sget-object v0, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v0

    return-object v0
.end method

.method private final notifyCardConfigChangeIfNeed(Lcom/oplus/card/config/domain/model/CardConfigInfo;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/card/config/domain/model/CardConfigInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/oplus/card/manager/domain/model/CardModel;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {p2}, Lcom/oplus/card/manager/domain/model/CardModel;->getCardConfig()Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p2, p1}, Lcom/oplus/card/manager/domain/model/CardModel;->notifyCardConfigChange$OplusLauncher_OPPOPallExportAallRelease(Lcom/oplus/card/config/domain/model/CardConfigInfo;)V

    goto :goto_8

    :cond_22
    return-void
.end method

.method private static final notifyCardConfigChangeRunnable$lambda-0(Lcom/oplus/card/manager/domain/CardManager;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/card/manager/domain/CardManager;->notifyCardConfigListChange()V

    return-void
.end method

.method private final notifyCardConfigListChange()V
    .registers 6

    sget-object v0, Lcom/oplus/card/util/LogD;->INSTANCE:Lcom/oplus/card/util/LogD;

    const-string v1, "notifyCardConfigListChange"

    invoke-virtual {v0, v1}, Lcom/oplus/card/util/LogD;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    if-nez v0, :cond_e

    return-void

    :cond_e
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v1

    if-nez v1, :cond_19

    return-void

    :cond_19
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/OplusWorkspace;->checkInvalidAndNoPermissionCard()V

    sget-object v1, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/android/common/util/j0;->h:Lcom/android/common/util/j0;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherModel;->refreshAndBindWidgetsAndShortcuts(Lcom/android/launcher3/util/PackageUserKey;)V

    iget-object v0, p0, Lcom/oplus/card/manager/domain/CardManager;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Lcom/oplus/card/manager/domain/CardManager;->cardListChangeCB:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_40
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/card/manager/domain/CardManager$CardListChangeCallback;

    invoke-interface {v1}, Lcom/oplus/card/manager/domain/CardManager$CardListChangeCallback;->onListChange()V

    goto :goto_40

    :cond_50
    iget-object p0, p0, Lcom/oplus/card/manager/domain/CardManager;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method private static final notifyCardConfigListChange$lambda-10()V
    .registers 0

    invoke-static {}, Lcom/android/launcher/AppAdviceCheck;->tryAddAppAdviceCard()V

    return-void
.end method

.method private final removeModel(Ljava/util/Set;III)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/oplus/card/manager/domain/model/CardModel;",
            ">;III)Z"
        }
    .end annotation

    new-instance p0, Lcom/oplus/card/manager/domain/a;

    invoke-direct {p0, p2, p3, p4}, Lcom/oplus/card/manager/domain/a;-><init>(III)V

    invoke-interface {p1, p0}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method private static final removeModel$lambda-14(IIILcom/oplus/card/manager/domain/model/CardModel;)Z
    .registers 5

    const-string v0, "it"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/oplus/card/manager/domain/model/CardModel;->getType()I

    move-result v0

    if-ne v0, p0, :cond_19

    invoke-virtual {p3}, Lcom/oplus/card/manager/domain/model/CardModel;->getCardId()I

    move-result p0

    if-ne p0, p1, :cond_19

    invoke-virtual {p3}, Lcom/oplus/card/manager/domain/model/CardModel;->getHostId()I

    move-result p0

    if-ne p0, p2, :cond_19

    const/4 p0, 0x1

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    return p0
.end method


# virtual methods
.method public final addCardConfigInfoOfInnerCard(Lcom/oplus/card/config/domain/model/CardConfigInfo;)V
    .registers 3

    const-string v0, "configInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/card/manager/domain/CardManager;->innerConfigMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final addCardListChangeCallback(Lcom/oplus/card/manager/domain/CardManager$CardListChangeCallback;)V
    .registers 3

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/card/manager/domain/CardManager;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Lcom/oplus/card/manager/domain/CardManager;->cardListChangeCB:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/oplus/card/manager/domain/CardManager;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public allocateCardId(I)I
    .registers 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-object p0, p0, Lcom/oplus/card/manager/domain/CardManager;->cardIdAllocation:Lcom/oplus/card/manager/domain/CardIdAllocation;

    invoke-virtual {p0, p1}, Lcom/oplus/card/manager/domain/CardIdAllocation;->allocateCardId(I)I

    move-result p0

    return p0
.end method

.method public callReplaceUIDataChannel(IIILcom/oplus/card/manager/domain/model/CardModel;)V
    .registers 6

    const-string v0, "cardModel"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/card/manager/domain/CardManager;->getCardManagerProxy()Lcom/oplus/card/manager/domain/ICardManagerProxy;

    move-result-object p0

    new-instance v0, Lcom/oplus/card/manager/domain/CardManager$callReplaceUIDataChannel$1;

    invoke-direct {v0, p4}, Lcom/oplus/card/manager/domain/CardManager$callReplaceUIDataChannel$1;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v0, p1, p2, p3}, Lcom/oplus/card/manager/domain/ICardManagerProxy;->replaceUIDataChannel(Lkotlin/jvm/functions/Function1;III)V

    return-void
.end method

.method public createCard(IIILcom/android/launcher3/card/seed/SeedParams;)Lcom/oplus/card/manager/domain/model/CardModel;
    .registers 11
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/card/manager/domain/CardManager;->createCard(IIILcom/android/launcher3/card/seed/SeedParams;Z)Lcom/oplus/card/manager/domain/model/CardModel;

    move-result-object p0

    return-object p0
.end method

.method public final createCard(IIILcom/android/launcher3/card/seed/SeedParams;Z)Lcom/oplus/card/manager/domain/model/CardModel;
    .registers 15

    const-string v0, "createCard: type = "

    const-string v1, ", cardId = "

    const-string v2, ", hostId = "

    invoke-static {v0, p1, v1, p2, v2}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", seedParams = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherCard"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oplus/card/manager/domain/CardManager;->cardModelList:Ljava/util/Set;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/oplus/card/manager/domain/CardManager;->findModel(Ljava/util/Set;III)Lcom/oplus/card/manager/domain/model/CardModel;

    move-result-object v0

    if-nez v0, :cond_71

    const/4 v0, 0x1

    if-ne p3, v0, :cond_2e

    iget-object v2, p0, Lcom/oplus/card/manager/domain/CardManager;->cardIdAllocation:Lcom/oplus/card/manager/domain/CardIdAllocation;

    invoke-virtual {v2, p1, p2}, Lcom/oplus/card/manager/domain/CardIdAllocation;->useCardId(II)V

    :cond_2e
    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfoManager()Lcom/oplus/card/config/domain/ICardConfigInfoManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/oplus/card/config/domain/ICardConfigInfoManager;->getCardConfig(I)Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object v7

    if-nez v7, :cond_44

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfoManager()Lcom/oplus/card/config/domain/ICardConfigInfoManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/oplus/card/config/domain/ICardConfigInfoManager;->getCardConfigMapSize()I

    move-result v2

    if-lez v2, :cond_44

    iput-boolean v0, p0, Lcom/oplus/card/manager/domain/CardManager;->createWithEmptyConfig:Z

    :cond_44
    new-instance v0, Lcom/oplus/card/manager/domain/model/CardModel;

    move-object v3, v0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/oplus/card/manager/domain/model/CardModel;-><init>(IIILcom/oplus/card/config/domain/model/CardConfigInfo;Lcom/android/launcher3/card/seed/SeedParams;)V

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/launcher3/card/CardPermissionManager;->isPermissionAllowed()Z

    move-result p4

    if-eqz p4, :cond_6c

    iget-object p4, p0, Lcom/oplus/card/manager/domain/CardManager;->cardModelList:Ljava/util/Set;

    invoke-interface {p4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-nez p5, :cond_71

    invoke-direct {p0}, Lcom/oplus/card/manager/domain/CardManager;->getCardManagerProxy()Lcom/oplus/card/manager/domain/ICardManagerProxy;

    move-result-object p0

    new-instance p4, Lcom/oplus/card/manager/domain/CardManager$createCard$2;

    invoke-direct {p4, v0}, Lcom/oplus/card/manager/domain/CardManager$createCard$2;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, p4, p1, p2, p3}, Lcom/oplus/card/manager/domain/ICardManagerProxy;->createUIDataChannel(Lkotlin/jvm/functions/Function1;III)V

    goto :goto_71

    :cond_6c
    const-string p0, "createCard, CardPermission disallowed."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_71
    :goto_71
    return-object v0
.end method

.method public deleteCardId(III)V
    .registers 5
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const/4 v0, 0x1

    if-ne p3, v0, :cond_8

    iget-object p0, p0, Lcom/oplus/card/manager/domain/CardManager;->cardIdAllocation:Lcom/oplus/card/manager/domain/CardIdAllocation;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/card/manager/domain/CardIdAllocation;->deleteCardId(II)V

    :cond_8
    return-void
.end method

.method public destroyCard(III)V
    .registers 8
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    sget-object v0, Lcom/oplus/card/util/LogD;->INSTANCE:Lcom/oplus/card/util/LogD;

    const-string v1, "destroyCard: type = "

    const-string v2, ", cardId = "

    const-string v3, ", hostId = "

    invoke-static {v1, p1, v2, p2, v3}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/card/util/LogD;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/card/manager/domain/CardManager;->cardModelList:Ljava/util/Set;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/oplus/card/manager/domain/CardManager;->findModel(Ljava/util/Set;III)Lcom/oplus/card/manager/domain/model/CardModel;

    move-result-object v0

    if-nez v0, :cond_1f

    goto :goto_2b

    :cond_1f
    invoke-direct {p0}, Lcom/oplus/card/manager/domain/CardManager;->getCardManagerProxy()Lcom/oplus/card/manager/domain/ICardManagerProxy;

    move-result-object v1

    new-instance v2, Lcom/oplus/card/manager/domain/CardManager$destroyCard$1$1;

    invoke-direct {v2, v0}, Lcom/oplus/card/manager/domain/CardManager$destroyCard$1$1;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/oplus/card/manager/domain/ICardManagerProxy;->destroyUIDataChannel(Lkotlin/jvm/functions/Function1;III)V

    :goto_2b
    iget-object v0, p0, Lcom/oplus/card/manager/domain/CardManager;->cardModelList:Ljava/util/Set;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/oplus/card/manager/domain/CardManager;->removeModel(Ljava/util/Set;III)Z

    return-void
.end method

.method public final getAllCardConfigList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/card/config/domain/model/CardConfigInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfoManager()Lcom/oplus/card/config/domain/ICardConfigInfoManager;

    move-result-object v0

    new-instance v1, Lcom/oplus/card/manager/domain/CardManager$getAllCardConfigList$1;

    invoke-direct {v1, p0}, Lcom/oplus/card/manager/domain/CardManager$getAllCardConfigList$1;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/oplus/card/config/domain/ICardConfigInfoManager;->getAllConfigListForShop(Lkotlin/jvm/functions/Function1;)V

    iget-object p0, p0, Lcom/oplus/card/manager/domain/CardManager;->cardConfigList:Ljava/util/List;

    return-object p0
.end method

.method public final getAllConfigListForShop(Ljava/util/List;)V
    .registers 3
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

    iget-object v0, p0, Lcom/oplus/card/manager/domain/CardManager;->cardConfigList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/oplus/card/manager/domain/CardManager;->cardConfigList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final getCardConfigInfo(I)Lcom/oplus/card/config/domain/model/CardConfigInfo;
    .registers 4

    iget-object v0, p0, Lcom/oplus/card/manager/domain/CardManager;->innerConfigMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    if-nez v0, :cond_16

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfoManager()Lcom/oplus/card/config/domain/ICardConfigInfoManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/card/config/domain/ICardConfigInfoManager;->getCardConfig(I)Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object v0

    :cond_16
    return-object v0
.end method

.method public final getCardConfigInfoManager()Lcom/oplus/card/config/domain/ICardConfigInfoManager;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/manager/domain/CardManager;->cardConfigInfoManager$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/card/config/domain/ICardConfigInfoManager;

    return-object p0
.end method

.method public final getCardConfigMapSize()I
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfoManager()Lcom/oplus/card/config/domain/ICardConfigInfoManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/card/config/domain/ICardConfigInfoManager;->getCardConfigMapSize()I

    move-result p0

    return p0
.end method

.method public final getCardMinWidthAndHeightInfo(ILandroid/content/Context;)Landroid/graphics/Point;
    .registers 5

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/card/manager/domain/CardManager;->innerConfigMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfoManager()Lcom/oplus/card/config/domain/ICardConfigInfoManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/card/config/domain/ICardConfigInfoManager;->getCardConfig(I)Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object v0

    :cond_1b
    if-eqz v0, :cond_22

    invoke-virtual {v0, p2}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getMinWidthAndHeight(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p0

    return-object p0

    :cond_22
    new-instance p0, Landroid/graphics/Point;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object p0
.end method

.method public final getCreateWithEmptyConfig()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/card/manager/domain/CardManager;->createWithEmptyConfig:Z

    return p0
.end method

.method public final getSeedCardConfigInfo(Ljava/lang/String;I)Lcom/oplus/card/config/domain/model/CardConfigInfo;
    .registers 4

    const-string v0, "serviceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfoManager()Lcom/oplus/card/config/domain/ICardConfigInfoManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/oplus/card/config/domain/ICardConfigInfoManager;->getSeedCardConfig(Ljava/lang/String;I)Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object p0

    return-object p0
.end method

.method public getShowingTypes()Ljava/util/Set;
    .registers 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object p0, p0, Lcom/oplus/card/manager/domain/CardManager;->cardModelList:Ljava/util/Set;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {v1}, Lcom/oplus/card/manager/domain/model/CardModel;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_23
    return-object v0
.end method

.method public final initPullConfig()V
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfoManager()Lcom/oplus/card/config/domain/ICardConfigInfoManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/card/config/domain/ICardConfigInfoManager;->initPullConfig()V

    return-void
.end method

.method public final isCardAvailable(I)Z
    .registers 4

    iget-object v0, p0, Lcom/oplus/card/manager/domain/CardManager;->innerConfigMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    if-nez v0, :cond_1a

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfoManager()Lcom/oplus/card/config/domain/ICardConfigInfoManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oplus/card/config/domain/ICardConfigInfoManager;->getCardConfig(I)Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object v0

    if-nez v0, :cond_1a

    const/4 p0, 0x0

    return p0

    :cond_1a
    invoke-virtual {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getDisplayArea()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/card/manager/domain/CardManager;->isLauncherCardDisplayArea(I)Z

    move-result p0

    return p0
.end method

.method public final isCardModeCreate(III)Z
    .registers 5

    iget-object v0, p0, Lcom/oplus/card/manager/domain/CardManager;->cardModelList:Ljava/util/Set;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/oplus/card/manager/domain/CardManager;->findModel(Ljava/util/Set;III)Lcom/oplus/card/manager/domain/model/CardModel;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    const/4 p0, 0x1

    return p0
.end method

.method public final isCardSettingOptionEnable(I)Z
    .registers 2

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfoManager()Lcom/oplus/card/config/domain/ICardConfigInfoManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/card/config/domain/ICardConfigInfoManager;->getCardConfig(I)Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_c

    return p1

    :cond_c
    invoke-virtual {p0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSettingUrl()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_17

    const/4 p1, 0x1

    :cond_17
    return p1
.end method

.method public final isLauncherCardDisplayArea(I)Z
    .registers 2

    if-eqz p1, :cond_9

    const/4 p0, 0x2

    and-int/2addr p1, p0

    if-ne p1, p0, :cond_7

    goto :goto_9

    :cond_7
    const/4 p0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 p0, 0x1

    :goto_a
    return p0
.end method

.method public final isQuickAppCard(I)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfo(I)Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-nez p0, :cond_9

    goto :goto_10

    :cond_9
    invoke-virtual {p0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getCategory()I

    move-result p0

    if-ne p0, v0, :cond_10

    move p1, v0

    :cond_10
    :goto_10
    return p1
.end method

.method public final isSeedlingCard(I)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfo(I)Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_8

    goto :goto_11

    :cond_8
    invoke-virtual {p0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getCategory()I

    move-result p0

    const/16 v0, 0x64

    if-ne p0, v0, :cond_11

    const/4 p1, 0x1

    :cond_11
    :goto_11
    return p1
.end method

.method public final isSeedlingCard(Lcom/oplus/card/config/domain/model/CardConfigInfo;)Z
    .registers 2

    const-string p0, "configInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getCategory()I

    move-result p0

    const/16 p1, 0x64

    if-ne p0, p1, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public monitorFinishInitEvent(Lkotlin/jvm/functions/Function0;)V
    .registers 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ly2/p;",
            ">;)V"
        }
    .end annotation

    const-string v0, "finish"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/card/manager/domain/CardManager;->cardIdAllocation:Lcom/oplus/card/manager/domain/CardIdAllocation;

    invoke-virtual {p0, p1}, Lcom/oplus/card/manager/domain/CardIdAllocation;->monitorFinishInitEvent(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final onCardConfigChange(Ljava/util/List;)V
    .registers 8
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

    sget-object v0, Lcom/oplus/card/util/LogD;->INSTANCE:Lcom/oplus/card/util/LogD;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CardManager onCardConfigChange list.size:"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/card/util/LogD;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/card/manager/domain/CardManager;->notifyCardConfigChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/card/manager/domain/CardManager;->notifyCardConfigChangeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_32
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_84

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    iget-object v1, p0, Lcom/oplus/card/manager/domain/CardManager;->cardModelList:Ljava/util/Set;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_44
    :goto_44
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {v2}, Lcom/oplus/card/manager/domain/model/CardModel;->getType()I

    move-result v3

    invoke-virtual {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getType()I

    move-result v4

    if-ne v3, v4, :cond_44

    invoke-virtual {v2}, Lcom/oplus/card/manager/domain/model/CardModel;->getCardConfig()Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_67

    invoke-virtual {v2, v0}, Lcom/oplus/card/manager/domain/model/CardModel;->notifyCardConfigChange$OplusLauncher_OPPOPallExportAallRelease(Lcom/oplus/card/config/domain/model/CardConfigInfo;)V

    :cond_67
    invoke-virtual {v2}, Lcom/oplus/card/manager/domain/model/CardModel;->getSeedParams()Lcom/android/launcher3/card/seed/SeedParams;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_6f

    goto :goto_7a

    :cond_6f
    invoke-virtual {v3}, Lcom/android/launcher3/card/seed/SeedParams;->getCategory()I

    move-result v3

    invoke-virtual {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getCategory()I

    move-result v5

    if-ne v3, v5, :cond_7a

    const/4 v4, 0x1

    :cond_7a
    :goto_7a
    if-nez v4, :cond_44

    invoke-virtual {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getCategory()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/oplus/card/manager/domain/model/CardModel;->saveCardCategory2DB(I)V

    goto :goto_44

    :cond_84
    return-void
.end method

.method public final reCreatCard(IIILcom/android/launcher3/card/LauncherCardInfo;)Lcom/oplus/card/manager/domain/model/CardModel;
    .registers 9

    const-string v0, "cardInfo"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/card/util/LogD;->INSTANCE:Lcom/oplus/card/util/LogD;

    const-string v1, "reCreatCard: type = "

    const-string v2, ", cardId = "

    const-string v3, ", hostId = "

    invoke-static {v1, p1, v2, p2, v3}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/card/util/LogD;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/card/manager/domain/CardManager;->cardModelList:Ljava/util/Set;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/oplus/card/manager/domain/CardManager;->findModel(Ljava/util/Set;III)Lcom/oplus/card/manager/domain/model/CardModel;

    move-result-object v0

    if-nez v0, :cond_24

    goto :goto_29

    :cond_24
    iget-object v0, p0, Lcom/oplus/card/manager/domain/CardManager;->cardModelList:Ljava/util/Set;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/oplus/card/manager/domain/CardManager;->removeModel(Ljava/util/Set;III)Z

    :goto_29
    new-instance v0, Lcom/android/launcher3/card/seed/SeedParams;

    invoke-direct {v0, p4}, Lcom/android/launcher3/card/seed/SeedParams;-><init>(Lcom/android/launcher3/card/LauncherCardInfo;)V

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/oplus/card/manager/domain/CardManager;->createCard(IIILcom/android/launcher3/card/seed/SeedParams;)Lcom/oplus/card/manager/domain/model/CardModel;

    move-result-object p0

    return-object p0
.end method

.method public final receiveChangeCardEvent(Lcom/oplus/card/manager/domain/model/ChangeCardEvent;)V
    .registers 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/card/util/LogD;->INSTANCE:Lcom/oplus/card/util/LogD;

    const-string v1, "receiveChangeCardEvent: "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/card/util/LogD;->log(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/card/manager/domain/CardManager;->callbackList:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_2e
    return-void
.end method

.method public final registerCardCallback()V
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfoManager()Lcom/oplus/card/config/domain/ICardConfigInfoManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/card/config/domain/ICardConfigInfoManager;->registerServiceProxyCardCallback()V

    return-void
.end method

.method public registerChangeCardEventCallback(Lkotlin/jvm/functions/Function1;)V
    .registers 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/oplus/card/manager/domain/model/ChangeCardEvent;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/card/manager/domain/CardManager;->callbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object p0, p0, Lcom/oplus/card/manager/domain/CardManager;->callbackList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    return-void
.end method

.method public final removeCardConfigInfoOfInnerCard(I)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/card/manager/domain/CardManager;->innerConfigMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final removeCardListChangeCallback(Lcom/oplus/card/manager/domain/CardManager$CardListChangeCallback;)V
    .registers 3

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/card/manager/domain/CardManager;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Lcom/oplus/card/manager/domain/CardManager;->cardListChangeCB:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/oplus/card/manager/domain/CardManager;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public final requestPullConfig()V
    .registers 6

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfoManager()Lcom/oplus/card/config/domain/ICardConfigInfoManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/card/config/domain/ICardConfigInfoManager;->getCardConfigMapSize()I

    move-result v0

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/card/CardPermissionManager;->isPermissionAllowed()Z

    move-result v1

    sget-object v2, Lcom/oplus/card/util/LogD;->INSTANCE:Lcom/oplus/card/util/LogD;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestPullConfig cardConfigMapSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", isPermissionAllowed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/oplus/card/util/LogD;->log(Ljava/lang/String;)V

    if-nez v0, :cond_50

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/card/CardPermissionManager;->isPermissionAllowed()Z

    move-result v0

    if-eqz v0, :cond_50

    sget-object v0, Lcom/oplus/card/proxy/CardServiceProxy;->Companion:Lcom/oplus/card/proxy/CardServiceProxy$Companion;

    invoke-virtual {v0}, Lcom/oplus/card/proxy/CardServiceProxy$Companion;->getMIsRegisterCardConfigCallback()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/CardManager;->unRegisterCardCallback()V

    :cond_45
    const-string v0, "requestPullConfig registerCardCallback"

    invoke-virtual {v2, v0}, Lcom/oplus/card/util/LogD;->fileLog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/CardManager;->registerCardCallback()V

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/CardManager;->initPullConfig()V

    :cond_50
    return-void
.end method

.method public saveCardInfos(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/card/manager/domain/model/CardIdInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cardIdInfos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/card/manager/domain/CardManager;->cardIdAllocation:Lcom/oplus/card/manager/domain/CardIdAllocation;

    invoke-virtual {p0, p1}, Lcom/oplus/card/manager/domain/CardIdAllocation;->saveCardIds(Ljava/util/List;)V

    return-void
.end method

.method public final setCreateWithEmptyConfig(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/card/manager/domain/CardManager;->createWithEmptyConfig:Z

    return-void
.end method

.method public final stopObserveUIDataChannel(Lcom/oplus/card/manager/domain/model/CardModel;)V
    .registers 8

    const-string v0, "cardModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/card/manager/domain/model/CardModel;->getType()I

    move-result v0

    invoke-virtual {p1}, Lcom/oplus/card/manager/domain/model/CardModel;->getCardId()I

    move-result v1

    invoke-virtual {p1}, Lcom/oplus/card/manager/domain/model/CardModel;->getHostId()I

    move-result p1

    sget-object v2, Lcom/oplus/card/util/LogD;->INSTANCE:Lcom/oplus/card/util/LogD;

    const-string v3, "stopObserve: type = "

    const-string v4, ", cardId = "

    const-string v5, ", hostId = "

    invoke-static {v3, v0, v4, v1, v5}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oplus/card/util/LogD;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oplus/card/manager/domain/CardManager;->cardModelList:Ljava/util/Set;

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/oplus/card/manager/domain/CardManager;->findModel(Ljava/util/Set;III)Lcom/oplus/card/manager/domain/model/CardModel;

    move-result-object v2

    if-nez v2, :cond_30

    goto :goto_3c

    :cond_30
    invoke-direct {p0}, Lcom/oplus/card/manager/domain/CardManager;->getCardManagerProxy()Lcom/oplus/card/manager/domain/ICardManagerProxy;

    move-result-object v3

    new-instance v4, Lcom/oplus/card/manager/domain/CardManager$stopObserveUIDataChannel$1$1;

    invoke-direct {v4, v2}, Lcom/oplus/card/manager/domain/CardManager$stopObserveUIDataChannel$1$1;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v4, v0, v1, p1}, Lcom/oplus/card/manager/domain/ICardManagerProxy;->stopObserveUIDataChannel(Lkotlin/jvm/functions/Function1;III)V

    :goto_3c
    iget-object v2, p0, Lcom/oplus/card/manager/domain/CardManager;->cardModelList:Ljava/util/Set;

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/oplus/card/manager/domain/CardManager;->removeModel(Ljava/util/Set;III)Z

    return-void
.end method

.method public final unRegisterCardCallback()V
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfoManager()Lcom/oplus/card/config/domain/ICardConfigInfoManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/card/config/domain/ICardConfigInfoManager;->unRegisterServiceProxyCardCallback()V

    return-void
.end method

.method public unregisterChangeCardEventCallback(Lkotlin/jvm/functions/Function1;)V
    .registers 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/oplus/card/manager/domain/model/ChangeCardEvent;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/card/manager/domain/CardManager;->callbackList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
