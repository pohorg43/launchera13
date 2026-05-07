.class final Lcom/oplus/card/manager/domain/CardIdAllocation$allocateCardId$1;
.super Ld3/i;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Ld3/e;
    c = "com.oplus.card.manager.domain.CardIdAllocation$allocateCardId$1"
    f = "CardIdAllocation.kt"
    l = {
        0x41
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/card/manager/domain/CardIdAllocation;->allocateCardId(I)I
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
        "Ly2/p;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $cardId:I

.field public final synthetic $type:I

.field public label:I

.field public final synthetic this$0:Lcom/oplus/card/manager/domain/CardIdAllocation;


# direct methods
.method public constructor <init>(Lcom/oplus/card/manager/domain/CardIdAllocation;IILb3/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/card/manager/domain/CardIdAllocation;",
            "II",
            "Lb3/d<",
            "-",
            "Lcom/oplus/card/manager/domain/CardIdAllocation$allocateCardId$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/card/manager/domain/CardIdAllocation$allocateCardId$1;->this$0:Lcom/oplus/card/manager/domain/CardIdAllocation;

    iput p2, p0, Lcom/oplus/card/manager/domain/CardIdAllocation$allocateCardId$1;->$type:I

    iput p3, p0, Lcom/oplus/card/manager/domain/CardIdAllocation$allocateCardId$1;->$cardId:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ld3/i;-><init>(ILb3/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lb3/d;)Lb3/d;
    .registers 5
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

    new-instance p1, Lcom/oplus/card/manager/domain/CardIdAllocation$allocateCardId$1;

    iget-object v0, p0, Lcom/oplus/card/manager/domain/CardIdAllocation$allocateCardId$1;->this$0:Lcom/oplus/card/manager/domain/CardIdAllocation;

    iget v1, p0, Lcom/oplus/card/manager/domain/CardIdAllocation$allocateCardId$1;->$type:I

    iget p0, p0, Lcom/oplus/card/manager/domain/CardIdAllocation$allocateCardId$1;->$cardId:I

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/oplus/card/manager/domain/CardIdAllocation$allocateCardId$1;-><init>(Lcom/oplus/card/manager/domain/CardIdAllocation;IILb3/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lq3/f0;

    check-cast p2, Lb3/d;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/card/manager/domain/CardIdAllocation$allocateCardId$1;->invoke(Lq3/f0;Lb3/d;)Ljava/lang/Object;

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
            "Ly2/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/oplus/card/manager/domain/CardIdAllocation$allocateCardId$1;->create(Ljava/lang/Object;Lb3/d;)Lb3/d;

    move-result-object p0

    check-cast p0, Lcom/oplus/card/manager/domain/CardIdAllocation$allocateCardId$1;

    sget-object p1, Ly2/p;->a:Ly2/p;

    invoke-virtual {p0, p1}, Lcom/oplus/card/manager/domain/CardIdAllocation$allocateCardId$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    sget-object v0, Lc3/a;->a:Lc3/a;

    iget v1, p0, Lcom/oplus/card/manager/domain/CardIdAllocation$allocateCardId$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    if-ne v1, v2, :cond_d

    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    goto :goto_34

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/oplus/card/manager/domain/CardIdAllocation$allocateCardId$1;->this$0:Lcom/oplus/card/manager/domain/CardIdAllocation;

    invoke-static {p1}, Lcom/oplus/card/manager/domain/CardIdAllocation;->access$getCardIdRepository(Lcom/oplus/card/manager/domain/CardIdAllocation;)Lcom/oplus/card/manager/domain/ICardIdRepository;

    move-result-object p1

    new-instance v1, Lcom/oplus/card/manager/domain/model/CardIdInfo;

    iget v3, p0, Lcom/oplus/card/manager/domain/CardIdAllocation$allocateCardId$1;->$type:I

    iget v4, p0, Lcom/oplus/card/manager/domain/CardIdAllocation$allocateCardId$1;->$cardId:I

    invoke-direct {v1, v3, v4}, Lcom/oplus/card/manager/domain/model/CardIdInfo;-><init>(II)V

    invoke-static {v1}, Li1/j;->k(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput v2, p0, Lcom/oplus/card/manager/domain/CardIdAllocation$allocateCardId$1;->label:I

    invoke-interface {p1, v1, p0}, Lcom/oplus/card/manager/domain/ICardIdRepository;->saveCardIds(Ljava/util/List;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_34

    return-object v0

    :cond_34
    :goto_34
    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method
