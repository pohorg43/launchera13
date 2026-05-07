.class public final Lcom/android/launcher3/card/seed/SeedCardClient$initCallback$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/seedling/sdk/callback/InitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/seed/SeedCardClient;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;)V
    .registers 3

    const-string p0, "errorMsg"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/card/seed/SeedCardClient;->INSTANCE:Lcom/android/launcher3/card/seed/SeedCardClient;

    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/SeedCardClient;->getSeedStatusMonitor()Lcom/android/launcher3/card/seed/SeedStatusMonitor;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/launcher3/card/seed/SeedStatusMonitor;->setHasInit(Z)V

    const-string/jumbo p1, "panta-sugg-SeedCardClient"

    const-string p2, "initCallback: onFailed."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/launcher3/card/seed/SeedCardClient;->access$handleSDKInitFailed(Lcom/android/launcher3/card/seed/SeedCardClient;)V

    invoke-static {}, Lcom/android/launcher3/card/seed/SeedCardClient;->access$getEngineCallbacks$p()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onPluginCheckUpdateResult(IIIJ)V
    .registers 6

    return-void
.end method

.method public onSuccess()V
    .registers 3

    sget-object p0, Lcom/android/launcher3/card/seed/SeedCardClient;->INSTANCE:Lcom/android/launcher3/card/seed/SeedCardClient;

    sget-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/oplus/seedling/sdk/SeedlingSdk;->gainSeedlingManager(I)Lcom/oplus/seedling/sdk/manager/ISeedlingManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/card/seed/SeedCardClient;->access$setISeedlingManager$p(Lcom/oplus/seedling/sdk/manager/ISeedlingManager;)V

    invoke-static {}, Lcom/android/launcher3/card/seed/SeedCardClient;->access$getISeedlingManager$p()Lcom/oplus/seedling/sdk/manager/ISeedlingManager;

    move-result-object v0

    const-string v1, "initCallback: onSuccess. SeedlingManager = "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "panta-sugg-SeedCardClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher3/card/seed/SeedCardClient;->access$getISeedlingManager$p()Lcom/oplus/seedling/sdk/manager/ISeedlingManager;

    move-result-object v0

    if-nez v0, :cond_23

    goto :goto_2a

    :cond_23
    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/SeedCardClient;->getEntranceActivityStarter()Lcom/android/launcher3/card/seed/EntranceActivityStarter;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oplus/seedling/sdk/manager/ISeedlingManager;->interceptStartActivity(Lcom/oplus/seedling/sdk/callback/StartActivityCallback;)V

    :goto_2a
    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/SeedCardClient;->registerListObserver()V

    invoke-static {}, Lcom/android/launcher3/card/seed/SeedCardClient;->access$getISeedlingManager$p()Lcom/oplus/seedling/sdk/manager/ISeedlingManager;

    move-result-object p0

    if-nez p0, :cond_34

    goto :goto_4c

    :cond_34
    invoke-static {}, Lcom/android/launcher3/card/seed/SeedCardClient;->access$getEngineCallbacks$p()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/card/seed/SeedCardEngine$InitSuccessCallback;

    invoke-interface {v1, p0}, Lcom/android/launcher3/card/seed/SeedCardEngine$InitSuccessCallback;->onSuccess(Lcom/oplus/seedling/sdk/manager/ISeedlingManager;)V

    goto :goto_3c

    :cond_4c
    :goto_4c
    invoke-static {}, Lcom/android/launcher3/card/seed/SeedCardClient;->access$getEngineCallbacks$p()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method
