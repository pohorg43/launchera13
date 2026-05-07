.class public final Lcom/android/launcher3/card/seed/StatisticsRecorder$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/card/seed/StatisticsRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/card/seed/StatisticsRecorder$Companion;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/seedling/sdk/manager/ISeedlingManager;Lcom/oplus/seedling/sdk/entity/StatisticsBean;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/card/seed/StatisticsRecorder$Companion;->reportRefreshEventInSaleMode$lambda-7$lambda-5$lambda-4(Lcom/oplus/seedling/sdk/manager/ISeedlingManager;Lcom/oplus/seedling/sdk/entity/StatisticsBean;)V

    return-void
.end method

.method public static synthetic b(Lcom/oplus/seedling/sdk/manager/ISeedlingManager;Lcom/oplus/seedling/sdk/entity/StatisticsBean;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/card/seed/StatisticsRecorder$Companion;->reportRequestPushEvent$lambda-3$lambda-1$lambda-0(Lcom/oplus/seedling/sdk/manager/ISeedlingManager;Lcom/oplus/seedling/sdk/entity/StatisticsBean;)V

    return-void
.end method

.method private static final reportRefreshEventInSaleMode$lambda-7$lambda-5$lambda-4(Lcom/oplus/seedling/sdk/manager/ISeedlingManager;Lcom/oplus/seedling/sdk/entity/StatisticsBean;)V
    .registers 4

    const-string v0, "$this_run"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_19

    const-string/jumbo v0, "panta-sugg-StatisticsRecorder"

    const-string/jumbo v1, "reportRefreshEventInSaleMode, execute directly."

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    invoke-interface {p0, p1}, Lcom/oplus/seedling/sdk/manager/ISeedlingManager;->reportStatistics(Lcom/oplus/seedling/sdk/entity/StatisticsBean;)V

    return-void
.end method

.method private static final reportRequestPushEvent$lambda-3$lambda-1$lambda-0(Lcom/oplus/seedling/sdk/manager/ISeedlingManager;Lcom/oplus/seedling/sdk/entity/StatisticsBean;)V
    .registers 4

    const-string v0, "$this_run"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_19

    const-string/jumbo v0, "panta-sugg-StatisticsRecorder"

    const-string/jumbo v1, "reportRequestPushEvent, execute directly."

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    invoke-interface {p0, p1}, Lcom/oplus/seedling/sdk/manager/ISeedlingManager;->reportStatistics(Lcom/oplus/seedling/sdk/entity/StatisticsBean;)V

    return-void
.end method


# virtual methods
.method public final reportRefreshEventInSaleMode(I)V
    .registers 15
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-boolean p0, Lcom/android/common/config/FeatureOption;->isSellMode:Z

    if-nez p0, :cond_5

    return-void

    :cond_5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string/jumbo v0, "reportRefreshEventInSaleMode, eventCode: "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "panta-sugg-StatisticsRecorder"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/seedling/sdk/entity/StatisticsBean;

    const-wide/16 v4, -0x1

    const/16 v7, 0x64

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/16 v11, 0x80

    const/4 v12, 0x0

    const-string v2, ""

    const-string v3, ""

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v1 .. v12}, Lcom/oplus/seedling/sdk/entity/StatisticsBean;-><init>(Ljava/lang/String;Ljava/lang/String;JIILjava/lang/Long;ILandroid/util/ArrayMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object p1, Lcom/android/launcher3/card/seed/SeedCardClient;->INSTANCE:Lcom/android/launcher3/card/seed/SeedCardClient;

    invoke-virtual {p1}, Lcom/android/launcher3/card/seed/SeedCardClient;->seedingManager()Lcom/oplus/seedling/sdk/manager/ISeedlingManager;

    move-result-object v0

    if-nez v0, :cond_35

    const/4 v0, 0x0

    goto :goto_41

    :cond_35
    sget-object v1, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lcom/android/launcher3/card/seed/b;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p0, v3}, Lcom/android/launcher3/card/seed/b;-><init>(Lcom/oplus/seedling/sdk/manager/ISeedlingManager;Lcom/oplus/seedling/sdk/entity/StatisticsBean;I)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    :goto_41
    if-nez v0, :cond_4b

    new-instance v0, Lcom/android/launcher3/card/seed/StatisticsRecorder$Companion$reportRefreshEventInSaleMode$1$2$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/card/seed/StatisticsRecorder$Companion$reportRefreshEventInSaleMode$1$2$1;-><init>(Lcom/oplus/seedling/sdk/entity/StatisticsBean;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/card/seed/SeedCardClient;->addEngineCallback(Lcom/android/launcher3/card/seed/SeedCardEngine$InitSuccessCallback;)V

    :cond_4b
    return-void
.end method

.method public final reportRequestPushEvent()V
    .registers 14
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo p0, "panta-sugg-StatisticsRecorder"

    const-string/jumbo v0, "statistic exposeBean, try reportRequestPushEvent"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/seedling/sdk/entity/StatisticsBean;

    const-string v2, ""

    const-string v3, ""

    const-wide/16 v4, -0x1

    const/4 v6, 0x5

    const/16 v7, 0x64

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/16 v11, 0x80

    const/4 v12, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v12}, Lcom/oplus/seedling/sdk/entity/StatisticsBean;-><init>(Ljava/lang/String;Ljava/lang/String;JIILjava/lang/Long;ILandroid/util/ArrayMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v0, Lcom/android/launcher3/card/seed/SeedCardClient;->INSTANCE:Lcom/android/launcher3/card/seed/SeedCardClient;

    invoke-virtual {v0}, Lcom/android/launcher3/card/seed/SeedCardClient;->seedingManager()Lcom/oplus/seedling/sdk/manager/ISeedlingManager;

    move-result-object v1

    if-nez v1, :cond_28

    const/4 v1, 0x0

    goto :goto_34

    :cond_28
    sget-object v2, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Lcom/android/launcher3/card/seed/b;

    const/4 v4, 0x1

    invoke-direct {v3, v1, p0, v4}, Lcom/android/launcher3/card/seed/b;-><init>(Lcom/oplus/seedling/sdk/manager/ISeedlingManager;Lcom/oplus/seedling/sdk/entity/StatisticsBean;I)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    :goto_34
    if-nez v1, :cond_3e

    new-instance v1, Lcom/android/launcher3/card/seed/StatisticsRecorder$Companion$reportRequestPushEvent$1$2$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/card/seed/StatisticsRecorder$Companion$reportRequestPushEvent$1$2$1;-><init>(Lcom/oplus/seedling/sdk/entity/StatisticsBean;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/card/seed/SeedCardClient;->addEngineCallback(Lcom/android/launcher3/card/seed/SeedCardEngine$InitSuccessCallback;)V

    :cond_3e
    return-void
.end method
