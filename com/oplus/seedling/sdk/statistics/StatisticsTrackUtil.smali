.class public final Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final BUSINESS_TAG:Ljava/lang/String; = "business_tag"

.field public static final EVENT_ID_DATABASE_UPGRADE_ERROR:Ljava/lang/String; = "seedlingsdk_database_upgrade_error"

.field public static final EVENT_ID_DECISION_LIST_EMPTY:Ljava/lang/String; = "seedlingsdk_decision_list_empty"

.field public static final EVENT_ID_LOAD_CLASS_ERROR:Ljava/lang/String; = "seedlingsdk_plugin_load_class_error"

.field public static final EVENT_ID_PLUGIN_INIT:Ljava/lang/String; = "seedlingsdk_plugin_init"

.field public static final EVENT_ID_SEEDLINGSDK_CARD_TYPE_ERROR:Ljava/lang/String; = "seedlingsdk_card_type_error"

.field public static final EVENT_ID_ULE_CLIENT_ERROR:Ljava/lang/String; = "seedlingsdk_ule_client_error"

.field public static final EVENT_ID_ULE_LOAD_STATUS:Ljava/lang/String; = "ule_load_status"

.field public static final EVENT_ID_UPDATE_DATA_IGNORE:Ljava/lang/String; = "seedlingsdk_update_data_ignore"

.field public static final EVENT_ID_UPK_STATUS:Ljava/lang/String; = "seedlingsdk_upk_status"

.field private static final EVENT_TAG:Ljava/lang/String; = "event_tag"

.field public static final INSTANCE:Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;

.field public static final KEY_CONFIG_COUNT:Ljava/lang/String; = "config_count"

.field public static final KEY_DURATION:Ljava/lang/String; = "duration"

.field public static final KEY_ENGINE_TYPE:Ljava/lang/String; = "engine_type"

.field public static final KEY_ENTRANCE:Ljava/lang/String; = "entrance"

.field public static final KEY_ERROR_CODE:Ljava/lang/String; = "error_code"

.field public static final KEY_EVENT:Ljava/lang/String; = "event"

.field public static final KEY_FP_TIME:Ljava/lang/String; = "fp_time"

.field public static final KEY_FROM_VERSION:Ljava/lang/String; = "from_version"

.field public static final KEY_INITIALIZATION_TIME:Ljava/lang/String; = "init_time"

.field public static final KEY_LAST_TS:Ljava/lang/String; = "last_ts"

.field public static final KEY_MESSAGE:Ljava/lang/String; = "message"

.field public static final KEY_PACKAGE_NAME:Ljava/lang/String; = "packagename"

.field public static final KEY_SERVICE_ID:Ljava/lang/String; = "serviceId"

.field public static final KEY_START_LOADING:Ljava/lang/String; = "start_load"

.field public static final KEY_STATUS:Ljava/lang/String; = "status"

.field public static final KEY_SUPPORT_ENTRANCE:Ljava/lang/String; = "support_entrance"

.field public static final KEY_THIS_TS:Ljava/lang/String; = "this_ts"

.field public static final KEY_TOTAL_COUNT:Ljava/lang/String; = "total_count"

.field public static final KEY_TO_VERSION:Ljava/lang/String; = "to_version"

.field public static final KEY_VERSION:Ljava/lang/String; = "version"

.field private static final STATISTICS_THREAD_NAME:Ljava/lang/String; = "seedling_sdk_statistics"

.field private static final TAG:Ljava/lang/String; = "StatisticsTrackUtil"

.field private static final statisticsDispatcher$delegate:Ly2/e;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;

    invoke-direct {v0}, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;-><init>()V

    sput-object v0, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;->INSTANCE:Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;

    sget-object v0, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil$statisticsDispatcher$2;->INSTANCE:Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil$statisticsDispatcher$2;

    invoke-static {v0}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v0

    sput-object v0, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;->statisticsDispatcher$delegate:Ly2/e;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getStatisticsDispatcher()Lq3/b0;
    .registers 1

    sget-object p0, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;->statisticsDispatcher$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lq3/b0;

    return-object p0
.end method

.method public static final uploadBusinessTrack(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logTag"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;->INSTANCE:Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;

    invoke-direct {v0}, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;->getStatisticsDispatcher()Lq3/b0;

    move-result-object v0

    invoke-static {v0}, Lq3/c1;->a(Lb3/f;)Lq3/f0;

    move-result-object v1

    new-instance v0, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil$uploadBusinessTrack$1;

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v4, p3

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil$uploadBusinessTrack$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lb3/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lq3/g;->e(Lq3/f0;Lb3/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lq3/i1;

    return-void
.end method

.method public static synthetic uploadBusinessTrack$default(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p5, p4, 0x4

    if-eqz p5, :cond_5

    const/4 p2, 0x0

    :cond_5
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_b

    const-string p3, "business_tag"

    :cond_b
    invoke-static {p0, p1, p2, p3}, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;->uploadBusinessTrack(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public static final uploadTechTrack(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logTag"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;->INSTANCE:Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;

    invoke-direct {v0}, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;->getStatisticsDispatcher()Lq3/b0;

    move-result-object v0

    invoke-static {v0}, Lq3/c1;->a(Lb3/f;)Lq3/f0;

    move-result-object v1

    new-instance v0, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil$uploadTechTrack$1;

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v4, p3

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil$uploadTechTrack$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lb3/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lq3/g;->e(Lq3/f0;Lb3/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lq3/i1;

    return-void
.end method

.method public static synthetic uploadTechTrack$default(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p5, p4, 0x4

    if-eqz p5, :cond_5

    const/4 p2, 0x0

    :cond_5
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_b

    const-string p3, "event_tag"

    :cond_b
    invoke-static {p0, p1, p2, p3}, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;->uploadTechTrack(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method
