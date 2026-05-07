.class final Lcom/oplus/seedling/sdk/plugin/PluginManager$invokeReleaseSdk$1;
.super Ld3/i;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Ld3/e;
    c = "com.oplus.seedling.sdk.plugin.PluginManager$invokeReleaseSdk$1"
    f = "PluginManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/seedling/sdk/plugin/PluginManager;->invokeReleaseSdk()V
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
        "Ly2/j<",
        "+",
        "Ly2/p;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public label:I

.field public final synthetic this$0:Lcom/oplus/seedling/sdk/plugin/PluginManager;


# direct methods
.method public constructor <init>(Lcom/oplus/seedling/sdk/plugin/PluginManager;Lb3/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/seedling/sdk/plugin/PluginManager;",
            "Lb3/d<",
            "-",
            "Lcom/oplus/seedling/sdk/plugin/PluginManager$invokeReleaseSdk$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager$invokeReleaseSdk$1;->this$0:Lcom/oplus/seedling/sdk/plugin/PluginManager;

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

    new-instance p1, Lcom/oplus/seedling/sdk/plugin/PluginManager$invokeReleaseSdk$1;

    iget-object p0, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager$invokeReleaseSdk$1;->this$0:Lcom/oplus/seedling/sdk/plugin/PluginManager;

    invoke-direct {p1, p0, p2}, Lcom/oplus/seedling/sdk/plugin/PluginManager$invokeReleaseSdk$1;-><init>(Lcom/oplus/seedling/sdk/plugin/PluginManager;Lb3/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lq3/f0;

    check-cast p2, Lb3/d;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/seedling/sdk/plugin/PluginManager$invokeReleaseSdk$1;->invoke(Lq3/f0;Lb3/d;)Ljava/lang/Object;

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
            "Ly2/j<",
            "Ly2/p;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/oplus/seedling/sdk/plugin/PluginManager$invokeReleaseSdk$1;->create(Ljava/lang/Object;Lb3/d;)Lb3/d;

    move-result-object p0

    check-cast p0, Lcom/oplus/seedling/sdk/plugin/PluginManager$invokeReleaseSdk$1;

    sget-object p1, Ly2/p;->a:Ly2/p;

    invoke-virtual {p0, p1}, Lcom/oplus/seedling/sdk/plugin/PluginManager$invokeReleaseSdk$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget v0, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager$invokeReleaseSdk$1;->label:I

    if-nez v0, :cond_3e

    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    const-string p1, "PluginManager"

    const-string v0, "Start invoke release sdk,step2"

    invoke-static {p1, v0}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager$invokeReleaseSdk$1;->this$0:Lcom/oplus/seedling/sdk/plugin/PluginManager;

    :try_start_10
    invoke-static {p0}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->access$loadInitManager(Lcom/oplus/seedling/sdk/plugin/PluginManager;)Lcom/oplus/seedling/sdk/manager/IInitManager;

    move-result-object p0

    if-nez p0, :cond_18

    const/4 p0, 0x0

    goto :goto_1d

    :cond_18
    invoke-interface {p0}, Lcom/oplus/seedling/sdk/manager/IInitManager;->releaseSdk()V

    sget-object p0, Ly2/p;->a:Ly2/p;

    :goto_1d
    if-nez p0, :cond_24

    const-string p0, "releaseSdk failed via manager is null."

    invoke-static {p1, p0}, Lcom/oplus/seedling/sdk/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    sget-object p0, Ly2/p;->a:Ly2/p;
    :try_end_26
    .catchall {:try_start_10 .. :try_end_26} :catchall_27

    goto :goto_2c

    :catchall_27
    move-exception p0

    invoke-static {p0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_2c
    invoke-static {p0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_33

    goto :goto_38

    :cond_33
    const-string v1, "Exception happen for invoke release sdk "

    invoke-static {p1, v1, v0}, Lcom/oplus/seedling/sdk/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_38
    new-instance p1, Ly2/j;

    invoke-direct {p1, p0}, Ly2/j;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_3e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
