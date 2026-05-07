.class final Lcom/oplus/seedling/sdk/SeedlingSdk$init$1;
.super Ld3/i;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Ld3/e;
    c = "com.oplus.seedling.sdk.SeedlingSdk$init$1"
    f = "SeedlingSdk.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/seedling/sdk/SeedlingSdk;->init(Landroid/content/Context;Lcom/oplus/seedling/sdk/entity/EngineType;Lcom/oplus/seedling/sdk/callback/InitCallback;)V
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
.field public final synthetic $appContext:Landroid/content/Context;

.field public final synthetic $engineType:Lcom/oplus/seedling/sdk/entity/EngineType;

.field public final synthetic $initCallbackWrapper:Lcom/oplus/seedling/sdk/callback/InitCallback;

.field public label:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oplus/seedling/sdk/entity/EngineType;Lcom/oplus/seedling/sdk/callback/InitCallback;Lb3/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/oplus/seedling/sdk/entity/EngineType;",
            "Lcom/oplus/seedling/sdk/callback/InitCallback;",
            "Lb3/d<",
            "-",
            "Lcom/oplus/seedling/sdk/SeedlingSdk$init$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$init$1;->$appContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$init$1;->$engineType:Lcom/oplus/seedling/sdk/entity/EngineType;

    iput-object p3, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$init$1;->$initCallbackWrapper:Lcom/oplus/seedling/sdk/callback/InitCallback;

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

    new-instance p1, Lcom/oplus/seedling/sdk/SeedlingSdk$init$1;

    iget-object v0, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$init$1;->$appContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$init$1;->$engineType:Lcom/oplus/seedling/sdk/entity/EngineType;

    iget-object p0, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$init$1;->$initCallbackWrapper:Lcom/oplus/seedling/sdk/callback/InitCallback;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/oplus/seedling/sdk/SeedlingSdk$init$1;-><init>(Landroid/content/Context;Lcom/oplus/seedling/sdk/entity/EngineType;Lcom/oplus/seedling/sdk/callback/InitCallback;Lb3/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lq3/f0;

    check-cast p2, Lb3/d;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/seedling/sdk/SeedlingSdk$init$1;->invoke(Lq3/f0;Lb3/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/oplus/seedling/sdk/SeedlingSdk$init$1;->create(Ljava/lang/Object;Lb3/d;)Lb3/d;

    move-result-object p0

    check-cast p0, Lcom/oplus/seedling/sdk/SeedlingSdk$init$1;

    sget-object p1, Ly2/p;->a:Ly2/p;

    invoke-virtual {p0, p1}, Lcom/oplus/seedling/sdk/SeedlingSdk$init$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget v0, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$init$1;->label:I

    if-nez v0, :cond_60

    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    sget-object p1, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-virtual {p1}, Lcom/oplus/seedling/sdk/SeedlingSdk;->isInitialed$pantanal_client_release()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "SeedlingSdkInterface"

    if-eq v0, v1, :cond_4f

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1a

    goto :goto_5d

    :cond_1a
    invoke-static {p1}, Lcom/oplus/seedling/sdk/SeedlingSdk;->access$checkIfNeedReInit(Lcom/oplus/seedling/sdk/SeedlingSdk;)Z

    move-result v0

    if-eqz v0, :cond_44

    const-string v0, "init(), INITED,but need reinit,do release first."

    invoke-static {v2, v0}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->Companion:Lcom/oplus/seedling/sdk/plugin/PluginManager$Companion;

    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/plugin/PluginManager$Companion;->getSInstance()Lcom/oplus/seedling/sdk/plugin/PluginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->release()V

    invoke-virtual {p1}, Lcom/oplus/seedling/sdk/SeedlingSdk;->isInitialed$pantanal_client_release()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string v0, "init(), release done,change state to NOT_INITED"

    invoke-static {v2, v0}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$init$1;->$appContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$init$1;->$engineType:Lcom/oplus/seedling/sdk/entity/EngineType;

    iget-object p0, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$init$1;->$initCallbackWrapper:Lcom/oplus/seedling/sdk/callback/InitCallback;

    invoke-static {p1, v0, v1, p0}, Lcom/oplus/seedling/sdk/SeedlingSdk;->access$doInit(Lcom/oplus/seedling/sdk/SeedlingSdk;Landroid/content/Context;Lcom/oplus/seedling/sdk/entity/EngineType;Lcom/oplus/seedling/sdk/callback/InitCallback;)V

    goto :goto_5d

    :cond_44
    const-string p1, "SeedlingSdk interface already initialed,just notify success!"

    invoke-static {v2, p1}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$init$1;->$initCallbackWrapper:Lcom/oplus/seedling/sdk/callback/InitCallback;

    invoke-interface {p0}, Lcom/oplus/seedling/sdk/callback/InitCallback;->onSuccess()V

    goto :goto_5d

    :cond_4f
    const-string v0, "init(),NOT_INITED,doInit"

    invoke-static {v2, v0}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$init$1;->$appContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$init$1;->$engineType:Lcom/oplus/seedling/sdk/entity/EngineType;

    iget-object p0, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$init$1;->$initCallbackWrapper:Lcom/oplus/seedling/sdk/callback/InitCallback;

    invoke-static {p1, v0, v1, p0}, Lcom/oplus/seedling/sdk/SeedlingSdk;->access$doInit(Lcom/oplus/seedling/sdk/SeedlingSdk;Landroid/content/Context;Lcom/oplus/seedling/sdk/entity/EngineType;Lcom/oplus/seedling/sdk/callback/InitCallback;)V

    :goto_5d
    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0

    :cond_60
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
