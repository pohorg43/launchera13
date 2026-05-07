.class public final Lcom/android/launcher3/card/seed/StatisticsRecorder$Companion$reportRefreshEventInSaleMode$1$2$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/card/seed/SeedCardEngine$InitSuccessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/seed/StatisticsRecorder$Companion;->reportRefreshEventInSaleMode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $it:Lcom/oplus/seedling/sdk/entity/StatisticsBean;


# direct methods
.method public constructor <init>(Lcom/oplus/seedling/sdk/entity/StatisticsBean;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/card/seed/StatisticsRecorder$Companion$reportRefreshEventInSaleMode$1$2$1;->$it:Lcom/oplus/seedling/sdk/entity/StatisticsBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/seedling/sdk/manager/ISeedlingManager;Lcom/oplus/seedling/sdk/entity/StatisticsBean;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/card/seed/StatisticsRecorder$Companion$reportRefreshEventInSaleMode$1$2$1;->onSuccess$lambda-0(Lcom/oplus/seedling/sdk/manager/ISeedlingManager;Lcom/oplus/seedling/sdk/entity/StatisticsBean;)V

    return-void
.end method

.method private static final onSuccess$lambda-0(Lcom/oplus/seedling/sdk/manager/ISeedlingManager;Lcom/oplus/seedling/sdk/entity/StatisticsBean;)V
    .registers 4

    const-string v0, "$ism"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_19

    const-string/jumbo v0, "panta-sugg-StatisticsRecorder"

    const-string/jumbo v1, "reportRefreshEventInSaleMode, execute in callback."

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    invoke-interface {p0, p1}, Lcom/oplus/seedling/sdk/manager/ISeedlingManager;->reportStatistics(Lcom/oplus/seedling/sdk/entity/StatisticsBean;)V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/oplus/seedling/sdk/manager/ISeedlingManager;)V
    .registers 5

    const-string v0, "ism"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object p0, p0, Lcom/android/launcher3/card/seed/StatisticsRecorder$Companion$reportRefreshEventInSaleMode$1$2$1;->$it:Lcom/oplus/seedling/sdk/entity/StatisticsBean;

    new-instance v1, Lcom/android/launcher3/card/seed/b;

    const/4 v2, 0x2

    invoke-direct {v1, p1, p0, v2}, Lcom/android/launcher3/card/seed/b;-><init>(Lcom/oplus/seedling/sdk/manager/ISeedlingManager;Lcom/oplus/seedling/sdk/entity/StatisticsBean;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
