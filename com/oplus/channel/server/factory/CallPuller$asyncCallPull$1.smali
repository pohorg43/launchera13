.class final Lcom/oplus/channel/server/factory/CallPuller$asyncCallPull$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/channel/server/factory/CallPuller;->asyncCallPull()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ly2/p;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/channel/server/factory/CallPuller;


# direct methods
.method public constructor <init>(Lcom/oplus/channel/server/factory/CallPuller;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/channel/server/factory/CallPuller$asyncCallPull$1;->this$0:Lcom/oplus/channel/server/factory/CallPuller;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/channel/server/factory/CallPuller$asyncCallPull$1;->invoke()V

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method

.method public final invoke()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/channel/server/factory/CallPuller$asyncCallPull$1;->this$0:Lcom/oplus/channel/server/factory/CallPuller;

    invoke-static {v0}, Lcom/oplus/channel/server/factory/CallPuller;->access$callPull(Lcom/oplus/channel/server/factory/CallPuller;)Z

    move-result v0

    sget-object v1, Lcom/oplus/channel/server/statistics/PullDataManager;->INSTANCE:Lcom/oplus/channel/server/statistics/PullDataManager;

    iget-object v2, p0, Lcom/oplus/channel/server/factory/CallPuller$asyncCallPull$1;->this$0:Lcom/oplus/channel/server/factory/CallPuller;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/oplus/channel/server/factory/CallPuller$asyncCallPull$1;->this$0:Lcom/oplus/channel/server/factory/CallPuller;

    invoke-static {p0}, Lcom/oplus/channel/server/factory/CallPuller;->access$getClientConfig$p(Lcom/oplus/channel/server/factory/CallPuller;)Lcom/oplus/channel/server/ClientConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/channel/server/ClientConfig;->getClientPackage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, v0, p0}, Lcom/oplus/channel/server/statistics/PullDataManager;->createChannelState(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method
