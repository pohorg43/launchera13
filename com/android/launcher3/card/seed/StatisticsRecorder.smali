.class public final Lcom/android/launcher3/card/seed/StatisticsRecorder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/seed/StatisticsRecorder$Companion;
    }
.end annotation


# static fields
.field public static final AIRCRAFT_CARD_FOR_SALE_MODE:I = 0x68

.field private static final BATCH_REPORT_INTERVAL:I = 0x3a98

.field public static final BUS_SUBWAY_CARD_FOR_SALE_MODE:I = 0x65

.field public static final Companion:Lcom/android/launcher3/card/seed/StatisticsRecorder$Companion;

.field public static final EXPRESS_DELIVERY_CARD_FOR_SALE_MODE:I = 0x66

.field public static final HIGH_SPEED_RAIL_CARD_FOR_SALE_MODE:I = 0x67

.field public static final SERVICE_INTRODUCTION_CARD_FOR_SALE_MODE:I = 0x64

.field public static final TAG:Ljava/lang/String; = "StatisticsRecorder"

.field private static final US_TAG:Ljava/lang/String; = "panta-sugg-StatisticsRecorder"


# instance fields
.field private final exposeBeans:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ly2/i<",
            "Lcom/oplus/seedling/sdk/entity/StatisticsBean;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private exposeId:Ljava/lang/String;

.field private reportTimeForExpose:J

.field private reportTimeIntervalOut:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/card/seed/StatisticsRecorder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/card/seed/StatisticsRecorder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/card/seed/StatisticsRecorder;->Companion:Lcom/android/launcher3/card/seed/StatisticsRecorder$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "randomUUID().toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher3/card/seed/StatisticsRecorder;->exposeId:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/card/seed/StatisticsRecorder;->reportTimeForExpose:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/card/seed/StatisticsRecorder;->exposeBeans:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic a(Lcom/oplus/seedling/sdk/entity/StatisticsBean;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/card/seed/StatisticsRecorder;->reportEvent$lambda-2$lambda-1(Lcom/oplus/seedling/sdk/entity/StatisticsBean;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/card/uscard/USCardView;ILcom/android/launcher3/card/LauncherCardInfo;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/card/seed/StatisticsRecorder;->reportEvent$lambda-0(Lcom/android/launcher3/card/uscard/USCardView;ILcom/android/launcher3/card/LauncherCardInfo;)V

    return-void
.end method

.method public static synthetic c(Ljava/util/ArrayList;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/card/seed/StatisticsRecorder;->endReportExposeEvents$lambda-6(Ljava/util/ArrayList;)V

    return-void
.end method

.method private static final endReportExposeEvents$lambda-6(Ljava/util/ArrayList;)V
    .registers 5

    const-string v0, "$beans"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    const-string/jumbo v1, "panta-sugg-StatisticsRecorder"

    if-eqz v0, :cond_29

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly2/i;

    const-string/jumbo v3, "statistic exposeBeans, "

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_29
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v2, "statistic exposeBeans, size = "

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/card/seed/SeedCardClient;->INSTANCE:Lcom/android/launcher3/card/seed/SeedCardClient;

    invoke-virtual {v0}, Lcom/android/launcher3/card/seed/SeedCardClient;->seedingManager()Lcom/oplus/seedling/sdk/manager/ISeedlingManager;

    move-result-object v0

    if-nez v0, :cond_44

    goto :goto_6a

    :cond_44
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p0, v2}, Lz2/l;->t(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_53
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_67

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ly2/i;

    iget-object v3, v3, Ly2/i;->a:Ljava/lang/Object;

    check-cast v3, Lcom/oplus/seedling/sdk/entity/StatisticsBean;

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_53

    :cond_67
    invoke-interface {v0, v1}, Lcom/oplus/seedling/sdk/manager/ISeedlingManager;->reportStatistics(Ljava/util/List;)V

    :goto_6a
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/statistics/LauncherStatistics;->statServiceCardExpose(Ljava/util/List;)V

    return-void
.end method

.method private static final reportEvent$lambda-0(Lcom/android/launcher3/card/uscard/USCardView;ILcom/android/launcher3/card/LauncherCardInfo;)V
    .registers 4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_13

    const/4 v0, 0x3

    if-eq p1, v0, :cond_f

    goto :goto_16

    :cond_f
    invoke-virtual {p0, p2}, Lcom/android/statistics/LauncherStatistics;->statServiceCardClickUnrecommended(Lcom/android/launcher3/card/LauncherCardInfo;)V

    goto :goto_16

    :cond_13
    invoke-virtual {p0, p2}, Lcom/android/statistics/LauncherStatistics;->statServiceCardClickAction(Lcom/android/launcher3/card/LauncherCardInfo;)V

    :goto_16
    return-void
.end method

.method private static final reportEvent$lambda-2$lambda-1(Lcom/oplus/seedling/sdk/entity/StatisticsBean;)V
    .registers 3

    const-string v0, "$it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "reportEvent statisticBean = "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "panta-sugg-StatisticsRecorder"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/card/seed/SeedCardClient;->INSTANCE:Lcom/android/launcher3/card/seed/SeedCardClient;

    invoke-virtual {v0}, Lcom/android/launcher3/card/seed/SeedCardClient;->seedingManager()Lcom/oplus/seedling/sdk/manager/ISeedlingManager;

    move-result-object v0

    if-nez v0, :cond_1b

    goto :goto_1e

    :cond_1b
    invoke-interface {v0, p0}, Lcom/oplus/seedling/sdk/manager/ISeedlingManager;->reportStatistics(Lcom/oplus/seedling/sdk/entity/StatisticsBean;)V

    :goto_1e
    return-void
.end method

.method private final reportForClick(Lcom/android/launcher3/card/LauncherCardInfo;)Lcom/oplus/seedling/sdk/entity/StatisticsBean;
    .registers 15

    new-instance v12, Lcom/oplus/seedling/sdk/entity/StatisticsBean;

    iget-object v1, p0, Lcom/android/launcher3/card/seed/StatisticsRecorder;->exposeId:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mServiceId:Ljava/lang/String;

    const-string p0, "cardInfo.mServiceId"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget p0, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-static {p0}, Lcom/android/launcher3/card/SmartEngineFactory;->getCategory(I)I

    move-result v6

    iget p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    add-int/lit8 v8, p0, 0x1

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x80

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/oplus/seedling/sdk/entity/StatisticsBean;-><init>(Ljava/lang/String;Ljava/lang/String;JIILjava/lang/Long;ILandroid/util/ArrayMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v12
.end method

.method private final reportForExpose(Lcom/android/launcher3/card/LauncherCardInfo;Lcom/oplus/card/helper/SmartEngine;)Lcom/oplus/seedling/sdk/entity/StatisticsBean;
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    if-nez v2, :cond_a

    return-object v3

    :cond_a
    invoke-virtual/range {p2 .. p2}, Lcom/oplus/card/helper/SmartEngine;->getExposeDuration()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const-string v5, "cardInfo.mServiceId"

    const/4 v8, 0x1

    if-nez v4, :cond_4e

    new-instance v4, Lcom/oplus/seedling/sdk/entity/StatisticsBean;

    iget-object v10, v0, Lcom/android/launcher3/card/seed/StatisticsRecorder;->exposeId:Ljava/lang/String;

    iget-object v11, v1, Lcom/android/launcher3/card/LauncherCardInfo;->mServiceId:Ljava/lang/String;

    invoke-static {v11, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const/4 v14, 0x2

    iget v0, v1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-static {v0}, Lcom/android/launcher3/card/SmartEngineFactory;->getCategory(I)I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Lcom/oplus/card/helper/SmartEngine;->getExposeDuration()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    iget v0, v1, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    add-int/lit8 v17, v0, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x80

    const/16 v20, 0x0

    move-object v9, v4

    invoke-direct/range {v9 .. v20}, Lcom/oplus/seedling/sdk/entity/StatisticsBean;-><init>(Ljava/lang/String;Ljava/lang/String;JIILjava/lang/Long;ILandroid/util/ArrayMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string/jumbo v0, "reportForExpose exposeDuration == 0L: "

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatisticsRecorder"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_4e
    new-instance v4, Lcom/oplus/seedling/sdk/entity/StatisticsBean;

    iget-object v10, v0, Lcom/android/launcher3/card/seed/StatisticsRecorder;->exposeId:Ljava/lang/String;

    iget-object v11, v1, Lcom/android/launcher3/card/LauncherCardInfo;->mServiceId:Ljava/lang/String;

    invoke-static {v11, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const/4 v14, 0x2

    iget v5, v1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-static {v5}, Lcom/android/launcher3/card/SmartEngineFactory;->getCategory(I)I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Lcom/oplus/card/helper/SmartEngine;->getExposeDuration()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    iget v5, v1, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    add-int/lit8 v17, v5, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x80

    const/16 v20, 0x0

    move-object v9, v4

    invoke-direct/range {v9 .. v20}, Lcom/oplus/seedling/sdk/entity/StatisticsBean;-><init>(Ljava/lang/String;Ljava/lang/String;JIILjava/lang/Long;ILandroid/util/ArrayMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v2, v6, v7}, Lcom/oplus/card/helper/SmartEngine;->setExposeDuration(J)V

    const/4 v2, 0x3

    new-array v2, v2, [Ly2/i;

    const/4 v5, 0x0

    iget v6, v1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ly2/i;

    const-string v9, "card_id"

    invoke-direct {v7, v9, v6}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v2, v5

    iget-wide v5, v1, Lcom/android/launcher3/card/LauncherCardInfo;->mIntentId:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ly2/i;

    const-string v7, "intent_id"

    invoke-direct {v6, v7, v5}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v2, v8

    const/4 v5, 0x2

    iget-object v1, v1, Lcom/android/launcher3/card/LauncherCardInfo;->mPolicy:Ljava/lang/String;

    new-instance v6, Ly2/i;

    const-string/jumbo v7, "policy"

    invoke-direct {v6, v7, v1}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v2, v5

    invoke-static {v2}, Lz2/c0;->d([Ly2/i;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ly2/i;

    invoke-direct {v2, v4, v1}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/launcher3/card/seed/StatisticsRecorder;->exposeBeans:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v3
.end method

.method private final reportForLoadFailed(Lcom/android/launcher3/card/LauncherCardInfo;)Lcom/oplus/seedling/sdk/entity/StatisticsBean;
    .registers 15

    new-instance v12, Lcom/oplus/seedling/sdk/entity/StatisticsBean;

    iget-object v1, p0, Lcom/android/launcher3/card/seed/StatisticsRecorder;->exposeId:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mServiceId:Ljava/lang/String;

    const-string p0, "cardInfo.mServiceId"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget p0, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-static {p0}, Lcom/android/launcher3/card/SmartEngineFactory;->getCategory(I)I

    move-result v6

    iget p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    add-int/lit8 v8, p0, 0x1

    const/4 v5, 0x4

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x80

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/oplus/seedling/sdk/entity/StatisticsBean;-><init>(Ljava/lang/String;Ljava/lang/String;JIILjava/lang/Long;ILandroid/util/ArrayMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v12
.end method

.method private final reportForUnrecommended(Lcom/android/launcher3/card/LauncherCardInfo;)Lcom/oplus/seedling/sdk/entity/StatisticsBean;
    .registers 15

    new-instance v12, Lcom/oplus/seedling/sdk/entity/StatisticsBean;

    iget-object v1, p0, Lcom/android/launcher3/card/seed/StatisticsRecorder;->exposeId:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mServiceId:Ljava/lang/String;

    const-string p0, "cardInfo.mServiceId"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget p0, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-static {p0}, Lcom/android/launcher3/card/SmartEngineFactory;->getCategory(I)I

    move-result v6

    iget p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    add-int/lit8 v8, p0, 0x1

    const/4 v5, 0x3

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x80

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/oplus/seedling/sdk/entity/StatisticsBean;-><init>(Ljava/lang/String;Ljava/lang/String;JIILjava/lang/Long;ILandroid/util/ArrayMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v12
.end method

.method public static final reportRefreshEventInSaleMode(I)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/card/seed/StatisticsRecorder;->Companion:Lcom/android/launcher3/card/seed/StatisticsRecorder$Companion;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/card/seed/StatisticsRecorder$Companion;->reportRefreshEventInSaleMode(I)V

    return-void
.end method

.method public static final reportRequestPushEvent()V
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/card/seed/StatisticsRecorder;->Companion:Lcom/android/launcher3/card/seed/StatisticsRecorder$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/card/seed/StatisticsRecorder$Companion;->reportRequestPushEvent()V

    return-void
.end method


# virtual methods
.method public final beginReportExposeEvents()V
    .registers 5

    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/StatisticsRecorder;->updateExposeId()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/launcher3/card/seed/StatisticsRecorder;->reportTimeForExpose:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3a98

    cmp-long v0, v0, v2

    if-lez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    iput-boolean v0, p0, Lcom/android/launcher3/card/seed/StatisticsRecorder;->reportTimeIntervalOut:Z

    return-void
.end method

.method public final endReportExposeEvents()V
    .registers 4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "endReportExposeEvents, reportTimeIntervalOut = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/card/seed/StatisticsRecorder;->reportTimeIntervalOut:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", exposeId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/card/seed/StatisticsRecorder;->exposeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " exposeBeans = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/card/seed/StatisticsRecorder;->exposeBeans:Ljava/util/ArrayList;

    const-string/jumbo v2, "panta-sugg-StatisticsRecorder"

    invoke-static {v1, v0, v2}, Lcom/android/launcher/f;->a(Ljava/util/ArrayList;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_28
    iget-boolean v0, p0, Lcom/android/launcher3/card/seed/StatisticsRecorder;->reportTimeIntervalOut:Z

    if-eqz v0, :cond_55

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/card/seed/StatisticsRecorder;->reportTimeForExpose:J

    iget-object v0, p0, Lcom/android/launcher3/card/seed/StatisticsRecorder;->exposeBeans:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_55

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/card/seed/StatisticsRecorder;->exposeBeans:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/android/launcher3/card/seed/StatisticsRecorder;->exposeBeans:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    sget-object p0, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/android/launcher3/card/seed/a;

    invoke-direct {v1, v0}, Lcom/android/launcher3/card/seed/a;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_55
    return-void
.end method

.method public final reportCacheEventsSync()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/card/seed/StatisticsRecorder;->exposeBeans:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_46

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/card/seed/StatisticsRecorder;->reportTimeForExpose:J

    sget-object v0, Lcom/android/launcher3/card/seed/SeedCardClient;->INSTANCE:Lcom/android/launcher3/card/seed/SeedCardClient;

    invoke-virtual {v0}, Lcom/android/launcher3/card/seed/SeedCardClient;->seedingManager()Lcom/oplus/seedling/sdk/manager/ISeedlingManager;

    move-result-object v0

    if-nez v0, :cond_19

    goto :goto_41

    :cond_19
    iget-object v1, p0, Lcom/android/launcher3/card/seed/StatisticsRecorder;->exposeBeans:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lz2/l;->t(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ly2/i;

    iget-object v3, v3, Ly2/i;->a:Ljava/lang/Object;

    check-cast v3, Lcom/oplus/seedling/sdk/entity/StatisticsBean;

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_3e
    invoke-interface {v0, v2}, Lcom/oplus/seedling/sdk/manager/ISeedlingManager;->reportStatistics(Ljava/util/List;)V

    :goto_41
    iget-object p0, p0, Lcom/android/launcher3/card/seed/StatisticsRecorder;->exposeBeans:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_46
    return-void
.end method

.method public final reportEvent(Lcom/android/launcher3/card/uscard/USCardView;I)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v0

    iget v1, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    if-gez v1, :cond_15

    const-string/jumbo p0, "panta-sugg-StatisticsRecorder"

    const-string/jumbo p1, "reportEvent, CardType is not a card, ignore."

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_15
    sget-object v1, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lcom/android/launcher/badge/b;

    invoke-direct {v2, p1, p2, v0}, Lcom/android/launcher/badge/b;-><init>(Lcom/android/launcher3/card/uscard/USCardView;ILcom/android/launcher3/card/LauncherCardInfo;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    const-string v3, "cardInfo"

    if-eq p2, v2, :cond_4b

    const/4 v2, 0x2

    if-eq p2, v2, :cond_3f

    const/4 p1, 0x3

    if-eq p2, p1, :cond_37

    const/4 p1, 0x4

    if-eq p2, p1, :cond_2f

    const/4 p0, 0x0

    goto :goto_52

    :cond_2f
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/card/seed/StatisticsRecorder;->reportForLoadFailed(Lcom/android/launcher3/card/LauncherCardInfo;)Lcom/oplus/seedling/sdk/entity/StatisticsBean;

    move-result-object p0

    goto :goto_52

    :cond_37
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/card/seed/StatisticsRecorder;->reportForUnrecommended(Lcom/android/launcher3/card/LauncherCardInfo;)Lcom/oplus/seedling/sdk/entity/StatisticsBean;

    move-result-object p0

    goto :goto_52

    :cond_3f
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/card/EngineCardView;->getEngine()Lcom/oplus/card/helper/SmartEngine;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/card/seed/StatisticsRecorder;->reportForExpose(Lcom/android/launcher3/card/LauncherCardInfo;Lcom/oplus/card/helper/SmartEngine;)Lcom/oplus/seedling/sdk/entity/StatisticsBean;

    move-result-object p0

    goto :goto_52

    :cond_4b
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/card/seed/StatisticsRecorder;->reportForClick(Lcom/android/launcher3/card/LauncherCardInfo;)Lcom/oplus/seedling/sdk/entity/StatisticsBean;

    move-result-object p0

    :goto_52
    const-string p1, "LauncherStatistics reportEvent eventCode = "

    const-string v2, ", cardType: "

    invoke-static {p1, p2, v2}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    const-string v0, "StatisticsRecorder"

    invoke-static {p1, p2, v0}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    if-nez p0, :cond_64

    goto :goto_6c

    :cond_64
    new-instance p1, Lcom/android/launcher3/card/seed/a;

    invoke-direct {p1, p0}, Lcom/android/launcher3/card/seed/a;-><init>(Lcom/oplus/seedling/sdk/entity/StatisticsBean;)V

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :goto_6c
    return-void
.end method

.method public final updateExposeId()V
    .registers 3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "randomUUID().toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher3/card/seed/StatisticsRecorder;->exposeId:Ljava/lang/String;

    return-void
.end method
