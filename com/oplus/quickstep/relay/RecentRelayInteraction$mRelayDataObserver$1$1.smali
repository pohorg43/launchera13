.class final Lcom/oplus/quickstep/relay/RecentRelayInteraction$mRelayDataObserver$1$1;
.super Ld3/i;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Ld3/e;
    c = "com.oplus.quickstep.relay.RecentRelayInteraction$mRelayDataObserver$1$1"
    f = "RecentRelayInteraction.kt"
    l = {
        0x44
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/relay/RecentRelayInteraction;->mRelayDataObserver$lambda-0(Lcom/oplus/quickstep/relay/RecentRelayInteraction;Lcom/oplus/quickstep/relay/data/RelayData;)V
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
.field public final synthetic $it:Lcom/oplus/quickstep/relay/data/RelayData;

.field public L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lcom/oplus/quickstep/relay/RecentRelayInteraction;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/relay/data/RelayData;Lcom/oplus/quickstep/relay/RecentRelayInteraction;Lb3/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/quickstep/relay/data/RelayData;",
            "Lcom/oplus/quickstep/relay/RecentRelayInteraction;",
            "Lb3/d<",
            "-",
            "Lcom/oplus/quickstep/relay/RecentRelayInteraction$mRelayDataObserver$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction$mRelayDataObserver$1$1;->$it:Lcom/oplus/quickstep/relay/data/RelayData;

    iput-object p2, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction$mRelayDataObserver$1$1;->this$0:Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ld3/i;-><init>(ILb3/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lb3/d;)Lb3/d;
    .registers 4
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

    new-instance p1, Lcom/oplus/quickstep/relay/RecentRelayInteraction$mRelayDataObserver$1$1;

    iget-object v0, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction$mRelayDataObserver$1$1;->$it:Lcom/oplus/quickstep/relay/data/RelayData;

    iget-object p0, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction$mRelayDataObserver$1$1;->this$0:Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    invoke-direct {p1, v0, p0, p2}, Lcom/oplus/quickstep/relay/RecentRelayInteraction$mRelayDataObserver$1$1;-><init>(Lcom/oplus/quickstep/relay/data/RelayData;Lcom/oplus/quickstep/relay/RecentRelayInteraction;Lb3/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lq3/f0;

    check-cast p2, Lb3/d;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/relay/RecentRelayInteraction$mRelayDataObserver$1$1;->invoke(Lq3/f0;Lb3/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/relay/RecentRelayInteraction$mRelayDataObserver$1$1;->create(Ljava/lang/Object;Lb3/d;)Lb3/d;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction$mRelayDataObserver$1$1;

    sget-object p1, Ly2/p;->a:Ly2/p;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/relay/RecentRelayInteraction$mRelayDataObserver$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    sget-object v0, Lc3/a;->a:Lc3/a;

    iget v1, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction$mRelayDataObserver$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_19

    if-ne v1, v2, :cond_11

    iget-object v0, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction$mRelayDataObserver$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/quickstep/relay/data/RelayData;

    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    goto :goto_35

    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction$mRelayDataObserver$1$1;->$it:Lcom/oplus/quickstep/relay/data/RelayData;

    iget-object v1, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction$mRelayDataObserver$1$1;->this$0:Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    invoke-static {v1}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->access$getMRecentsView$p(Lcom/oplus/quickstep/relay/RecentRelayInteraction;)Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v1

    iput-object p1, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction$mRelayDataObserver$1$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction$mRelayDataObserver$1$1;->label:I

    invoke-virtual {p1, v1, p0}, Lcom/oplus/quickstep/relay/data/RelayData;->generateIcon(Landroid/content/Context;Lb3/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_33

    return-object v0

    :cond_33
    move-object v0, p1

    move-object p1, v1

    :goto_35
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Lcom/oplus/quickstep/relay/data/RelayData;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/oplus/quickstep/relay/RecentRelayInteraction$mRelayDataObserver$1$1;->this$0:Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    sget-object p1, Lcom/oplus/quickstep/relay/data/RelayState$RelayDataStart;->INSTANCE:Lcom/oplus/quickstep/relay/data/RelayState$RelayDataStart;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->update(Lcom/oplus/quickstep/relay/data/RelayState;)V

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method
