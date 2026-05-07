.class final Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$3;
.super Ld3/i;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Ld3/e;
    c = "com.oplus.seedling.sdk.SeedlingSdk$isSupportFluidCloud$3"
    f = "SeedlingSdk.kt"
    l = {
        0x1a6,
        0x1b0
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/seedling/sdk/SeedlingSdk;->isSupportFluidCloud(Lcom/oplus/channel/server/IUserContext;Lkotlin/jvm/functions/Function1;)V
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
.field public final synthetic $callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Ly2/p;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $userContext:Lcom/oplus/channel/server/IUserContext;

.field public label:I


# direct methods
.method public constructor <init>(Lcom/oplus/channel/server/IUserContext;Lkotlin/jvm/functions/Function1;Lb3/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/channel/server/IUserContext;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Ly2/p;",
            ">;",
            "Lb3/d<",
            "-",
            "Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$3;->$userContext:Lcom/oplus/channel/server/IUserContext;

    iput-object p2, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$3;->$callback:Lkotlin/jvm/functions/Function1;

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

    new-instance p1, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$3;

    iget-object v0, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$3;->$userContext:Lcom/oplus/channel/server/IUserContext;

    iget-object p0, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$3;->$callback:Lkotlin/jvm/functions/Function1;

    invoke-direct {p1, v0, p0, p2}, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$3;-><init>(Lcom/oplus/channel/server/IUserContext;Lkotlin/jvm/functions/Function1;Lb3/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lq3/f0;

    check-cast p2, Lb3/d;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$3;->invoke(Lq3/f0;Lb3/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$3;->create(Ljava/lang/Object;Lb3/d;)Lb3/d;

    move-result-object p0

    check-cast p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$3;

    sget-object p1, Ly2/p;->a:Ly2/p;

    invoke-virtual {p0, p1}, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    sget-object v0, Lc3/a;->a:Lc3/a;

    iget v1, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$3;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_1d

    if-eq v1, v3, :cond_19

    if-ne v1, v2, :cond_11

    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    goto/16 :goto_92

    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    goto :goto_6e

    :cond_1d
    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    sget-object p1, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    iget-object v1, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$3;->$userContext:Lcom/oplus/channel/server/IUserContext;

    invoke-interface {v1}, Lcom/oplus/channel/server/IUserContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "isSupportFluidCloud with callback."

    invoke-static {p1, v1, v4}, Lcom/oplus/seedling/sdk/SeedlingSdk;->access$handleSaveContext(Lcom/oplus/seedling/sdk/SeedlingSdk;Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$3;->$userContext:Lcom/oplus/channel/server/IUserContext;

    invoke-virtual {p1, v1}, Lcom/oplus/seedling/sdk/SeedlingSdk;->setCurUserContext$pantanal_client_release(Lcom/oplus/channel/server/IUserContext;)V

    iget-object v1, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$3;->$userContext:Lcom/oplus/channel/server/IUserContext;

    invoke-interface {v1}, Lcom/oplus/channel/server/IUserContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "userContext.context.packageName"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/oplus/seedling/sdk/SeedlingSdk;->setEntrancePkgName$pantanal_client_release(Ljava/lang/String;)V

    const-string p1, "callback userContext context, isSupportFluidCloud"

    sget-object v1, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;->INSTANCE:Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;

    iget-object v4, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$3;->$callback:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v1, v4}, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;->init(Lkotlin/jvm/functions/Function1;)V

    iget-object v4, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$3;->$userContext:Lcom/oplus/channel/server/IUserContext;

    invoke-interface {v4}, Lcom/oplus/channel/server/IUserContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/oplus/seedling/sdk/utils/SeedlingIntentUtil;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_71

    sget-object v1, Lq3/q0;->a:Lq3/b0;

    sget-object v1, Lv3/q;->a:Lq3/r1;

    new-instance v2, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$3$1;

    iget-object v4, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$3;->$callback:Lkotlin/jvm/functions/Function1;

    invoke-direct {v2, p1, v4, v5}, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$3$1;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lb3/d;)V

    iput v3, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$3;->label:I

    invoke-static {v1, v2, p0}, Lq3/g;->g(Lb3/f;Lkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_6e

    return-object v0

    :cond_6e
    :goto_6e
    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0

    :cond_71
    invoke-virtual {v1}, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;->release()V

    iget-object v1, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$3;->$userContext:Lcom/oplus/channel/server/IUserContext;

    invoke-interface {v1}, Lcom/oplus/channel/server/IUserContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/seedling/sdk/utils/SeedlingIntentUtil;->queryIsSupportFluidCloud$pantanal_client_release(Landroid/content/Context;)Z

    move-result v1

    sget-object v3, Lq3/q0;->a:Lq3/b0;

    sget-object v3, Lv3/q;->a:Lq3/r1;

    new-instance v4, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$3$2;

    iget-object v6, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$3;->$callback:Lkotlin/jvm/functions/Function1;

    invoke-direct {v4, p1, v1, v6, v5}, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$3$2;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function1;Lb3/d;)V

    iput v2, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$3;->label:I

    invoke-static {v3, v4, p0}, Lq3/g;->g(Lb3/f;Lkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_92

    return-object v0

    :cond_92
    :goto_92
    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method
