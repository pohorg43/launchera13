.class final Lcom/oplus/channel/server/ServerChannel$initChannelWithContext$1$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/channel/server/ServerChannel;->initChannelWithContext(Lcom/oplus/channel/server/factory/SystemApiClient;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/oplus/channel/server/utils/WorkHandler;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $this_apply:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/os/HandlerThread;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/channel/server/ServerChannel$initChannelWithContext$1$1$1$1;->$this_apply:Landroid/os/HandlerThread;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/oplus/channel/server/utils/WorkHandler;
    .registers 3

    new-instance v0, Lcom/oplus/channel/server/utils/WorkHandler;

    iget-object p0, p0, Lcom/oplus/channel/server/ServerChannel$initChannelWithContext$1$1$1$1;->$this_apply:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    const-string v1, "looper"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Lcom/oplus/channel/server/utils/WorkHandler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/channel/server/ServerChannel$initChannelWithContext$1$1$1$1;->invoke()Lcom/oplus/channel/server/utils/WorkHandler;

    move-result-object p0

    return-object p0
.end method
