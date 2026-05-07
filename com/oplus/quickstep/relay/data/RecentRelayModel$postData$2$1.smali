.class final Lcom/oplus/quickstep/relay/data/RecentRelayModel$postData$2$1;
.super Ld3/i;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Ld3/e;
    c = "com.oplus.quickstep.relay.data.RecentRelayModel$postData$2$1"
    f = "RecentRelayModel.kt"
    l = {
        0x77
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/relay/data/RecentRelayModel;->postData(Lcom/oplus/quickstep/relay/data/RelayData;)V
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
.field public final synthetic $data:Lcom/oplus/quickstep/relay/data/RelayData;

.field public L$0:Ljava/lang/Object;

.field public label:I


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/relay/data/RelayData;Lb3/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/quickstep/relay/data/RelayData;",
            "Lb3/d<",
            "-",
            "Lcom/oplus/quickstep/relay/data/RecentRelayModel$postData$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/quickstep/relay/data/RecentRelayModel$postData$2$1;->$data:Lcom/oplus/quickstep/relay/data/RelayData;

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

    new-instance p1, Lcom/oplus/quickstep/relay/data/RecentRelayModel$postData$2$1;

    iget-object p0, p0, Lcom/oplus/quickstep/relay/data/RecentRelayModel$postData$2$1;->$data:Lcom/oplus/quickstep/relay/data/RelayData;

    invoke-direct {p1, p0, p2}, Lcom/oplus/quickstep/relay/data/RecentRelayModel$postData$2$1;-><init>(Lcom/oplus/quickstep/relay/data/RelayData;Lb3/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lq3/f0;

    check-cast p2, Lb3/d;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/relay/data/RecentRelayModel$postData$2$1;->invoke(Lq3/f0;Lb3/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/relay/data/RecentRelayModel$postData$2$1;->create(Ljava/lang/Object;Lb3/d;)Lb3/d;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/relay/data/RecentRelayModel$postData$2$1;

    sget-object p1, Ly2/p;->a:Ly2/p;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/relay/data/RecentRelayModel$postData$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    sget-object v0, Lc3/a;->a:Lc3/a;

    iget v1, p0, Lcom/oplus/quickstep/relay/data/RecentRelayModel$postData$2$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_19

    if-ne v1, v2, :cond_11

    iget-object v0, p0, Lcom/oplus/quickstep/relay/data/RecentRelayModel$postData$2$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/quickstep/relay/data/RelayData;

    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    goto :goto_34

    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/oplus/quickstep/relay/data/RecentRelayModel$postData$2$1;->$data:Lcom/oplus/quickstep/relay/data/RelayData;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "getAppContext()"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/quickstep/relay/data/RecentRelayModel$postData$2$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/oplus/quickstep/relay/data/RecentRelayModel$postData$2$1;->label:I

    invoke-virtual {p1, v1, p0}, Lcom/oplus/quickstep/relay/data/RelayData;->generateIcon(Landroid/content/Context;Lb3/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_32

    return-object v0

    :cond_32
    move-object v0, p1

    move-object p1, v1

    :goto_34
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Lcom/oplus/quickstep/relay/data/RelayData;->setBitmap(Landroid/graphics/Bitmap;)V

    sget-object p1, Lcom/oplus/quickstep/relay/data/RecentRelayModel;->INSTANCE:Lcom/oplus/quickstep/relay/data/RecentRelayModel;

    invoke-virtual {p1}, Lcom/oplus/quickstep/relay/data/RecentRelayModel;->getRelayData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/quickstep/relay/data/RecentRelayModel$postData$2$1;->$data:Lcom/oplus/quickstep/relay/data/RelayData;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method
