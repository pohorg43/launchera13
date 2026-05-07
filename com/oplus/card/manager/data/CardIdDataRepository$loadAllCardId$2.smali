.class final Lcom/oplus/card/manager/data/CardIdDataRepository$loadAllCardId$2;
.super Ld3/i;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Ld3/e;
    c = "com.oplus.card.manager.data.CardIdDataRepository$loadAllCardId$2"
    f = "CardIdDataRepository.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/card/manager/data/CardIdDataRepository;->loadAllCardId(Lb3/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld3/i;",
        "Lkotlin/jvm/functions/Function2<",
        "Lq3/f0;",
        "Lb3/d<",
        "-",
        "Ljava/util/List<",
        "+",
        "Lcom/oplus/card/manager/domain/model/CardIdInfo;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public label:I

.field public final synthetic this$0:Lcom/oplus/card/manager/data/CardIdDataRepository;


# direct methods
.method public constructor <init>(Lcom/oplus/card/manager/data/CardIdDataRepository;Lb3/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/card/manager/data/CardIdDataRepository;",
            "Lb3/d<",
            "-",
            "Lcom/oplus/card/manager/data/CardIdDataRepository$loadAllCardId$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/card/manager/data/CardIdDataRepository$loadAllCardId$2;->this$0:Lcom/oplus/card/manager/data/CardIdDataRepository;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ld3/i;-><init>(ILb3/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lb3/d;)Lb3/d;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lb3/d<",
            "*>;)",
            "Lb3/d<",
            "Ly2/p;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/oplus/card/manager/data/CardIdDataRepository$loadAllCardId$2;

    iget-object p0, p0, Lcom/oplus/card/manager/data/CardIdDataRepository$loadAllCardId$2;->this$0:Lcom/oplus/card/manager/data/CardIdDataRepository;

    invoke-direct {p1, p0, p2}, Lcom/oplus/card/manager/data/CardIdDataRepository$loadAllCardId$2;-><init>(Lcom/oplus/card/manager/data/CardIdDataRepository;Lb3/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lq3/f0;

    check-cast p2, Lb3/d;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/card/manager/data/CardIdDataRepository$loadAllCardId$2;->invoke(Lq3/f0;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lq3/f0;Lb3/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/f0;",
            "Lb3/d<",
            "-",
            "Ljava/util/List<",
            "Lcom/oplus/card/manager/domain/model/CardIdInfo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/oplus/card/manager/data/CardIdDataRepository$loadAllCardId$2;->create(Ljava/lang/Object;Lb3/d;)Lb3/d;

    move-result-object p0

    check-cast p0, Lcom/oplus/card/manager/data/CardIdDataRepository$loadAllCardId$2;

    sget-object p1, Ly2/p;->a:Ly2/p;

    invoke-virtual {p0, p1}, Lcom/oplus/card/manager/data/CardIdDataRepository$loadAllCardId$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget v0, p0, Lcom/oplus/card/manager/data/CardIdDataRepository$loadAllCardId$2;->label:I

    if-nez v0, :cond_12

    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/oplus/card/manager/data/CardIdDataRepository$loadAllCardId$2;->this$0:Lcom/oplus/card/manager/data/CardIdDataRepository;

    invoke-static {p0}, Lcom/oplus/card/manager/data/CardIdDataRepository;->access$getCardIdDao(Lcom/oplus/card/manager/data/CardIdDataRepository;)Lcom/oplus/card/manager/data/CardIdDao;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/card/manager/data/CardIdDao;->loadAllCardId()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_12
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
