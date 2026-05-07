.class public final Lcom/oplus/card/config/domain/CardConfigInitManager;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final mCardConfigInfoManager$delegate:Ly2/e;


# direct methods
.method public constructor <init>()V
    .registers 5

    const-class v0, Lcom/oplus/card/config/domain/ICardConfigInfoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/oplus/card/di/GlobalDI;->INSTANCE:Lcom/oplus/card/di/GlobalDI;

    invoke-virtual {v1}, Lcom/oplus/card/di/GlobalDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Ln3/c;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-virtual {v1}, Lcom/oplus/card/di/GlobalDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Ln3/c;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Lazy<T of com.oplus.card.di.GlobalDI.injectSingle>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ly2/e;

    iput-object v0, p0, Lcom/oplus/card/config/domain/CardConfigInitManager;->mCardConfigInfoManager$delegate:Ly2/e;

    return-void

    :cond_2b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "the class are not injected"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final getMCardConfigInfoManager()Lcom/oplus/card/config/domain/ICardConfigInfoManager;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/config/domain/CardConfigInitManager;->mCardConfigInfoManager$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/card/config/domain/ICardConfigInfoManager;

    return-object p0
.end method


# virtual methods
.method public final loadInitConfig()V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/card/config/domain/CardConfigInitManager;->getMCardConfigInfoManager()Lcom/oplus/card/config/domain/ICardConfigInfoManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/card/config/domain/ICardConfigInfoManager;->initPullConfig()V

    sget-object p0, Lcom/oplus/card/util/LogD;->INSTANCE:Lcom/oplus/card/util/LogD;

    const-string v0, "loadInitConfig"

    invoke-virtual {p0, v0}, Lcom/oplus/card/util/LogD;->log(Ljava/lang/String;)V

    return-void
.end method
