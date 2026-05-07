.class public interface abstract Lcom/oplus/seedling/sdk/manager/ISeedlingManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/seedling/sdk/card/ISeedlingService;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# virtual methods
.method public abstract clearPidObserver()V
.end method

.method public abstract getCurRecommendList()Ljava/util/List;
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract interceptStartActivity(Lcom/oplus/seedling/sdk/callback/StartActivityCallback;)V
.end method

.method public abstract register(Lcom/oplus/seedling/sdk/recommendlist/ListObserver;)V
.end method

.method public abstract registerData(Landroid/content/Context;Lcom/oplus/seedling/sdk/manager/DataSetCallBack;)V
.end method

.method public abstract registerPidObserver(Lcom/oplus/seedling/sdk/pid/PidObserver;)V
.end method

.method public abstract registerSeedlingConfig(Ljava/util/Set;Lcom/oplus/seedling/sdk/serviceconfig/ConfigListObserver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/oplus/seedling/sdk/serviceconfig/ConfigListObserver;",
            ")V"
        }
    .end annotation
.end method

.method public abstract registerUpkVersionObserver(Lcom/oplus/seedling/sdk/callback/IUpkVersionObserver;)V
.end method

.method public abstract release()V
.end method

.method public abstract reportStatistics(Lcom/oplus/seedling/sdk/entity/StatisticsBean;)V
.end method

.method public abstract reportStatistics(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/seedling/sdk/entity/StatisticsBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendCardCreateErrorToHost(Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;)V
.end method

.method public abstract sendKilledPid(Lcom/oplus/seedling/sdk/pid/PidInfo;)V
.end method

.method public abstract setAODStatus(Z)V
.end method

.method public abstract setScreenLocked(Z)V
.end method

.method public abstract setWidgetColor(I)V
    .param p1  # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
.end method

.method public abstract setWidgetColor(IZ)V
    .param p1  # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
.end method

.method public abstract startSeedling(Landroid/content/Context;Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;Lcom/oplus/seedling/sdk/seedling/SeedlingCallback;)V
.end method

.method public abstract startSeedlingTask(Landroid/content/Context;Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;Lcom/oplus/seedling/sdk/seedling/SeedlingCallback;)Lcom/oplus/seedling/sdk/task/ISeedlingTask;
.end method

.method public abstract unregister(Lcom/oplus/seedling/sdk/recommendlist/ListObserver;)V
.end method

.method public abstract unregisterAll()V
.end method

.method public abstract unregisterAllSeedlingConfig()V
.end method

.method public abstract unregisterSeedlingConfig(Lcom/oplus/seedling/sdk/serviceconfig/ConfigListObserver;)V
.end method

.method public abstract unregisterUpkVersionObserver(Lcom/oplus/seedling/sdk/callback/IUpkVersionObserver;)V
.end method
