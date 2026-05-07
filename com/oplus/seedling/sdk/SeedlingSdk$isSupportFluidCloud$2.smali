.class final Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$2;
.super Ld3/i;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Ld3/e;
    c = "com.oplus.seedling.sdk.SeedlingSdk$isSupportFluidCloud$2"
    f = "SeedlingSdk.kt"
    l = {
        0x185,
        0x18f
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/seedling/sdk/SeedlingSdk;->isSupportFluidCloud(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
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

.field public final synthetic $context:Landroid/content/Context;

.field public label:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lb3/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Ly2/p;",
            ">;",
            "Lb3/d<",
            "-",
            "Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$2;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$2;->$callback:Lkotlin/jvm/functions/Function1;

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

    new-instance p1, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$2;

    iget-object v0, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$2;->$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$2;->$callback:Lkotlin/jvm/functions/Function1;

    invoke-direct {p1, v0, p0, p2}, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$2;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lb3/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lq3/f0;

    check-cast p2, Lb3/d;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$2;->invoke(Lq3/f0;Lb3/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$2;->create(Ljava/lang/Object;Lb3/d;)Lb3/d;

    move-result-object p0

    check-cast p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$2;

    sget-object p1, Ly2/p;->a:Ly2/p;

    invoke-virtual {p0, p1}, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    sget-object v0, Lc3/a;->a:Lc3/a;

    iget v1, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$2;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_1c

    if-eq v1, v3, :cond_18

    if-ne v1, v2, :cond_10

    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    goto :goto_74

    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18
    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    goto :goto_50

    :cond_1c
    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    const-string v4, "callback normal context, isSupportFluidCloud"

    sget-object p1, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    iget-object v1, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$2;->$context:Landroid/content/Context;

    const-string v5, "isSupportFluidCloud"

    invoke-static {p1, v1, v5}, Lcom/oplus/seedling/sdk/SeedlingSdk;->access$handleSaveContext(Lcom/oplus/seedling/sdk/SeedlingSdk;Landroid/content/Context;Ljava/lang/String;)V

    sget-object p1, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;->INSTANCE:Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;

    iget-object v1, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$2;->$callback:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v1}, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;->init(Lkotlin/jvm/functions/Function1;)V

    iget-object v1, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$2;->$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/oplus/seedling/sdk/utils/SeedlingIntentUtil;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_53

    sget-object p1, Lq3/q0;->a:Lq3/b0;

    sget-object p1, Lv3/q;->a:Lq3/r1;

    new-instance v1, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$2$1;

    iget-object v2, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$2;->$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$2;->$callback:Lkotlin/jvm/functions/Function1;

    const/4 v6, 0x0

    invoke-direct {v1, v4, v2, v5, v6}, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$2$1;-><init>(Ljava/lang/String;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lb3/d;)V

    iput v3, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$2;->label:I

    invoke-static {p1, v1, p0}, Lq3/g;->g(Lb3/f;Lkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_50

    return-object v0

    :cond_50
    :goto_50
    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0

    :cond_53
    invoke-virtual {p1}, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;->release()V

    iget-object p1, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$2;->$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/oplus/seedling/sdk/utils/SeedlingIntentUtil;->queryIsSupportFluidCloud$pantanal_client_release(Landroid/content/Context;)Z

    move-result v6

    sget-object p1, Lq3/q0;->a:Lq3/b0;

    sget-object p1, Lv3/q;->a:Lq3/r1;

    new-instance v1, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$2$2;

    iget-object v5, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$2;->$context:Landroid/content/Context;

    iget-object v7, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$2;->$callback:Lkotlin/jvm/functions/Function1;

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$2$2;-><init>(Ljava/lang/String;Landroid/content/Context;ZLkotlin/jvm/functions/Function1;Lb3/d;)V

    iput v2, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$2;->label:I

    invoke-static {p1, v1, p0}, Lq3/g;->g(Lb3/f;Lkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_74

    return-object v0

    :cond_74
    :goto_74
    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method
