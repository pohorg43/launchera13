.class public final Lcom/oplus/card/manager/data/CardIdDataRepository;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/card/manager/domain/ICardIdRepository;


# instance fields
.field private final cardIdDao$delegate:Ly2/e;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/oplus/card/manager/data/CardIdDataRepository$cardIdDao$2;->INSTANCE:Lcom/oplus/card/manager/data/CardIdDataRepository$cardIdDao$2;

    invoke-static {v0}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/card/manager/data/CardIdDataRepository;->cardIdDao$delegate:Ly2/e;

    return-void
.end method

.method public static final synthetic access$getCardIdDao(Lcom/oplus/card/manager/data/CardIdDataRepository;)Lcom/oplus/card/manager/data/CardIdDao;
    .registers 1

    invoke-direct {p0}, Lcom/oplus/card/manager/data/CardIdDataRepository;->getCardIdDao()Lcom/oplus/card/manager/data/CardIdDao;

    move-result-object p0

    return-object p0
.end method

.method private final getCardIdDao()Lcom/oplus/card/manager/data/CardIdDao;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/manager/data/CardIdDataRepository;->cardIdDao$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/card/manager/data/CardIdDao;

    return-object p0
.end method


# virtual methods
.method public deleteCardIds(Ljava/util/List;Lb3/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/card/manager/domain/model/CardIdInfo;",
            ">;",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Lcom/oplus/card/util/DispatchersUtil;->INSTANCE:Lcom/oplus/card/util/DispatchersUtil;

    invoke-virtual {v0}, Lcom/oplus/card/util/DispatchersUtil;->model()Lq3/b0;

    move-result-object v0

    new-instance v1, Lcom/oplus/card/manager/data/CardIdDataRepository$deleteCardIds$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/oplus/card/manager/data/CardIdDataRepository$deleteCardIds$2;-><init>(Lcom/oplus/card/manager/data/CardIdDataRepository;Ljava/util/List;Lb3/d;)V

    invoke-static {v0, v1, p2}, Lq3/g;->g(Lb3/f;Lkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lc3/a;->a:Lc3/a;

    if-ne p0, p1, :cond_15

    return-object p0

    :cond_15
    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method

.method public loadAllCardId(Lb3/d;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb3/d<",
            "-",
            "Ljava/util/List<",
            "Lcom/oplus/card/manager/domain/model/CardIdInfo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Lcom/oplus/card/util/DispatchersUtil;->INSTANCE:Lcom/oplus/card/util/DispatchersUtil;

    invoke-virtual {v0}, Lcom/oplus/card/util/DispatchersUtil;->model()Lq3/b0;

    move-result-object v0

    new-instance v1, Lcom/oplus/card/manager/data/CardIdDataRepository$loadAllCardId$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oplus/card/manager/data/CardIdDataRepository$loadAllCardId$2;-><init>(Lcom/oplus/card/manager/data/CardIdDataRepository;Lb3/d;)V

    invoke-static {v0, v1, p1}, Lq3/g;->g(Lb3/f;Lkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public saveCardIds(Ljava/util/List;Lb3/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/card/manager/domain/model/CardIdInfo;",
            ">;",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Lcom/oplus/card/util/DispatchersUtil;->INSTANCE:Lcom/oplus/card/util/DispatchersUtil;

    invoke-virtual {v0}, Lcom/oplus/card/util/DispatchersUtil;->model()Lq3/b0;

    move-result-object v0

    new-instance v1, Lcom/oplus/card/manager/data/CardIdDataRepository$saveCardIds$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/oplus/card/manager/data/CardIdDataRepository$saveCardIds$2;-><init>(Lcom/oplus/card/manager/data/CardIdDataRepository;Ljava/util/List;Lb3/d;)V

    invoke-static {v0, v1, p2}, Lq3/g;->g(Lb3/f;Lkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lc3/a;->a:Lc3/a;

    if-ne p0, p1, :cond_15

    return-object p0

    :cond_15
    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method
