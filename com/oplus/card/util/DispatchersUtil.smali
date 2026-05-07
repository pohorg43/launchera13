.class public final Lcom/oplus/card/util/DispatchersUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final CARD_MODEL_THREAD_NAME:Ljava/lang/String; = "card_model_thread"

.field private static final CARD_SERVER_THREAD_NAME:Ljava/lang/String; = "card_server_thread"

.field public static final INSTANCE:Lcom/oplus/card/util/DispatchersUtil;

.field private static final cardServerDispatcher$delegate:Ly2/e;

.field private static final modelDispatcher$delegate:Ly2/e;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/card/util/DispatchersUtil;

    invoke-direct {v0}, Lcom/oplus/card/util/DispatchersUtil;-><init>()V

    sput-object v0, Lcom/oplus/card/util/DispatchersUtil;->INSTANCE:Lcom/oplus/card/util/DispatchersUtil;

    sget-object v0, Lcom/oplus/card/util/DispatchersUtil$modelDispatcher$2;->INSTANCE:Lcom/oplus/card/util/DispatchersUtil$modelDispatcher$2;

    invoke-static {v0}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v0

    sput-object v0, Lcom/oplus/card/util/DispatchersUtil;->modelDispatcher$delegate:Ly2/e;

    sget-object v0, Lcom/oplus/card/util/DispatchersUtil$cardServerDispatcher$2;->INSTANCE:Lcom/oplus/card/util/DispatchersUtil$cardServerDispatcher$2;

    invoke-static {v0}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v0

    sput-object v0, Lcom/oplus/card/util/DispatchersUtil;->cardServerDispatcher$delegate:Ly2/e;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getCardServerDispatcher()Lq3/a1;
    .registers 1

    sget-object p0, Lcom/oplus/card/util/DispatchersUtil;->cardServerDispatcher$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lq3/a1;

    return-object p0
.end method

.method private final getModelDispatcher()Lq3/a1;
    .registers 1

    sget-object p0, Lcom/oplus/card/util/DispatchersUtil;->modelDispatcher$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lq3/a1;

    return-object p0
.end method


# virtual methods
.method public final cardServer()Lq3/b0;
    .registers 1

    invoke-direct {p0}, Lcom/oplus/card/util/DispatchersUtil;->getCardServerDispatcher()Lq3/a1;

    move-result-object p0

    return-object p0
.end method

.method public final default()Lq3/b0;
    .registers 1

    sget-object p0, Lq3/q0;->a:Lq3/b0;

    return-object p0
.end method

.method public final io()Lq3/b0;
    .registers 1

    sget-object p0, Lq3/q0;->c:Lq3/b0;

    return-object p0
.end method

.method public final main()Lq3/b0;
    .registers 1

    sget-object p0, Lq3/q0;->a:Lq3/b0;

    sget-object p0, Lv3/q;->a:Lq3/r1;

    return-object p0
.end method

.method public final model()Lq3/b0;
    .registers 1

    invoke-direct {p0}, Lcom/oplus/card/util/DispatchersUtil;->getModelDispatcher()Lq3/a1;

    move-result-object p0

    return-object p0
.end method

.method public final unconfined()Lq3/b0;
    .registers 1

    sget-object p0, Lq3/q0;->b:Lq3/b0;

    return-object p0
.end method
