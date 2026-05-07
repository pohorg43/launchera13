.class final Lcom/oplus/seedling/sdk/unlock/UserUnlockManager$userUnlockReceiver$1$onReceive$1;
.super Ld3/i;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Ld3/e;
    c = "com.oplus.seedling.sdk.unlock.UserUnlockManager$userUnlockReceiver$1$onReceive$1"
    f = "UserUnlockManager.kt"
    l = {
        0x31
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/seedling/sdk/unlock/UserUnlockManager$userUnlockReceiver$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
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
.field public final synthetic $context:Landroid/content/Context;

.field public label:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lb3/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lb3/d<",
            "-",
            "Lcom/oplus/seedling/sdk/unlock/UserUnlockManager$userUnlockReceiver$1$onReceive$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager$userUnlockReceiver$1$onReceive$1;->$context:Landroid/content/Context;

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

    new-instance p1, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager$userUnlockReceiver$1$onReceive$1;

    iget-object p0, p0, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager$userUnlockReceiver$1$onReceive$1;->$context:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager$userUnlockReceiver$1$onReceive$1;-><init>(Landroid/content/Context;Lb3/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lq3/f0;

    check-cast p2, Lb3/d;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager$userUnlockReceiver$1$onReceive$1;->invoke(Lq3/f0;Lb3/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager$userUnlockReceiver$1$onReceive$1;->create(Ljava/lang/Object;Lb3/d;)Lb3/d;

    move-result-object p0

    check-cast p0, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager$userUnlockReceiver$1$onReceive$1;

    sget-object p1, Ly2/p;->a:Ly2/p;

    invoke-virtual {p0, p1}, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager$userUnlockReceiver$1$onReceive$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    sget-object v0, Lc3/a;->a:Lc3/a;

    iget v1, p0, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager$userUnlockReceiver$1$onReceive$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    if-ne v1, v2, :cond_d

    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    goto :goto_31

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager$userUnlockReceiver$1$onReceive$1;->$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/oplus/seedling/sdk/SeedlingSdk;->isSupportFluidCloud(Landroid/content/Context;)Z

    move-result p1

    sget-object v1, Lq3/q0;->a:Lq3/b0;

    sget-object v1, Lv3/q;->a:Lq3/r1;

    new-instance v3, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager$userUnlockReceiver$1$onReceive$1$1;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager$userUnlockReceiver$1$onReceive$1$1;-><init>(ZLb3/d;)V

    iput v2, p0, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager$userUnlockReceiver$1$onReceive$1;->label:I

    invoke-static {v1, v3, p0}, Lq3/g;->g(Lb3/f;Lkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_31

    return-object v0

    :cond_31
    :goto_31
    sget-object p0, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;->INSTANCE:Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;

    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;->release()V

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method
