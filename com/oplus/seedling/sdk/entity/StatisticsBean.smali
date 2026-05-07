.class public final Lcom/oplus/seedling/sdk/entity/StatisticsBean;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/seedling/sdk/entity/StatisticsBean$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/seedling/sdk/entity/StatisticsBean$Companion;

.field private static final KEY_CARD_TYPE:Ljava/lang/String; = "cardType"

.field private static final KEY_ENTRY_TYPE:Ljava/lang/String; = "entryType"

.field private static final KEY_EVENT_CODE:Ljava/lang/String; = "eventCode"

.field private static final KEY_EXPOSE_ID:Ljava/lang/String; = "exposeID"

.field private static final KEY_EXPOSURE_DURATION:Ljava/lang/String; = "exposureTime"

.field private static final KEY_EXTRAS:Ljava/lang/String; = "extras"

.field private static final KEY_FINAL_RANK:Ljava/lang/String; = "finalRank"

.field private static final KEY_SERVICE_ID:Ljava/lang/String; = "serviceId"

.field private static final KEY_TIMESTAMP:Ljava/lang/String; = "timeStamp"

.field private static final TAG:Ljava/lang/String; = "StatisticsBean"


# instance fields
.field private final cardType:I

.field private final eventCode:I

.field private final exposeDuration:Ljava/lang/Long;

.field private final exposeId:Ljava/lang/String;

.field private final extras:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final finalRank:I

.field private final serviceId:Ljava/lang/String;

.field private final timestamp:J


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/seedling/sdk/entity/StatisticsBean$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/seedling/sdk/entity/StatisticsBean$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->Companion:Lcom/oplus/seedling/sdk/entity/StatisticsBean$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JIILjava/lang/Long;ILandroid/util/ArrayMap;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JII",
            "Ljava/lang/Long;",
            "I",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "exposeId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->exposeId:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->serviceId:Ljava/lang/String;

    iput-wide p3, p0, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->timestamp:J

    iput p5, p0, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->eventCode:I

    iput p6, p0, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->cardType:I

    iput-object p7, p0, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->exposeDuration:Ljava/lang/Long;

    iput p8, p0, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->finalRank:I

    iput-object p9, p0, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->extras:Landroid/util/ArrayMap;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;JIILjava/lang/Long;ILandroid/util/ArrayMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 23

    move/from16 v0, p10

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    move-object v10, v0

    goto :goto_b

    :cond_9
    move-object/from16 v10, p9

    :goto_b
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lcom/oplus/seedling/sdk/entity/StatisticsBean;-><init>(Ljava/lang/String;Ljava/lang/String;JIILjava/lang/Long;ILandroid/util/ArrayMap;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/seedling/sdk/entity/StatisticsBean;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/Long;ILandroid/util/ArrayMap;ILjava/lang/Object;)Lcom/oplus/seedling/sdk/entity/StatisticsBean;
    .registers 22

    move-object v0, p0

    move/from16 v1, p10

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->exposeId:Ljava/lang/String;

    goto :goto_b

    :cond_a
    move-object v2, p1

    :goto_b
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_12

    iget-object v3, v0, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->serviceId:Ljava/lang/String;

    goto :goto_13

    :cond_12
    move-object v3, p2

    :goto_13
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1a

    iget-wide v4, v0, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->timestamp:J

    goto :goto_1b

    :cond_1a
    move-wide v4, p3

    :goto_1b
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_22

    iget v6, v0, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->eventCode:I

    goto :goto_23

    :cond_22
    move v6, p5

    :goto_23
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_2a

    iget v7, v0, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->cardType:I

    goto :goto_2c

    :cond_2a
    move/from16 v7, p6

    :goto_2c
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_33

    iget-object v8, v0, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->exposeDuration:Ljava/lang/Long;

    goto :goto_35

    :cond_33
    move-object/from16 v8, p7

    :goto_35
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_3c

    iget v9, v0, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->finalRank:I

    goto :goto_3e

    :cond_3c
    move/from16 v9, p8

    :goto_3e
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_45

    iget-object v1, v0, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->extras:Landroid/util/ArrayMap;

    goto :goto_47

    :cond_45
    move-object/from16 v1, p9

    :goto_47
    move-object p1, v2

    move-object p2, v3

    move-wide p3, v4

    move p5, v6

    move/from16 p6, v7

    move-object/from16 p7, v8

    move/from16 p8, v9

    move-object/from16 p9, v1

    invoke-virtual/range {p0 .. p9}, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->copy(Ljava/lang/String;Ljava/lang/String;JIILjava/lang/Long;ILandroid/util/ArrayMap;)Lcom/oplus/seedling/sdk/entity/StatisticsBean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->exposeId:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->serviceId:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->timestamp:J

    return-wide v0
.end method

.method public final component4()I
    .registers 1

    iget p0, p0, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->eventCode:I

    return p0
.end method

.method public final component5()I
    .registers 1

    iget p0, p0, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->cardType:I

    return p0
.end method

.method public final component6()Ljava/lang/Long;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->exposeDuration:Ljava/lang/Long;

    return-object p0
.end method

.method public final component7()I
    .registers 1

    iget p0, p0, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->finalRank:I

    return p0
.end method

.method public final component8()Landroid/util/ArrayMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->extras:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;JIILjava/lang/Long;ILandroid/util/ArrayMap;)Lcom/oplus/seedling/sdk/entity/StatisticsBean;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JII",
            "Ljava/lang/Long;",
            "I",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/oplus/seedling/sdk/entity/StatisticsBean;"
        }
    .end annotation

    const-string v0, "exposeId"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceId"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/seedling/sdk/entity/StatisticsBean;

    move-object v1, v0

    move-wide v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/oplus/seedling/sdk/entity/StatisticsBean;-><init>(Ljava/lang/String;Ljava/lang/String;JIILjava/lang/Long;ILandroid/util/ArrayMap;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/oplus/seedling/sdk/entity/StatisticsBean;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/oplus/seedling/sdk/entity/StatisticsBean;

    iget-object v1, p0, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->exposeId:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->exposeId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->serviceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->serviceId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-wide v3, p0, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->timestamp:J

    iget-wide v5, p1, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->timestamp:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2b

    return v2

    :cond_2b
    iget v1, p0, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->eventCode:I

    iget v3, p1, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->eventCode:I

    if-eq v1, v3, :cond_32

    return v2

    :cond_32
    iget v1, p0, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->cardType:I

    iget v3, p1, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->cardType:I

    if-eq v1, v3, :cond_39

    return v2

    :cond_39
    iget-object v1, p0, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->exposeDuration:Ljava/lang/Long;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->exposeDuration:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    return v2

    :cond_44
    iget v1, p0, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->finalRank:I

    iget v3, p1, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->finalRank:I

    if-eq v1, v3, :cond_4b

    return v2

    :cond_4b
    iget-object p0, p0, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->extras:Landroid/util/ArrayMap;

    iget-object p1, p1, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->extras:Landroid/util/ArrayMap;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_56

    return v2

    :cond_56
    return v0
.end method

.method public final getCardType()I
    .registers 1

    iget p0, p0, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->cardType:I

    return p0
.end method

.method public final getEventCode()I
    .registers 1

    iget p0, p0, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->eventCode:I

    return p0
.end method

.method public final getExposeDuration()Ljava/lang/Long;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->exposeDuration:Ljava/lang/Long;

    return-object p0
.end method

.method public final getExposeId()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->exposeId:Ljava/lang/String;

    return-object p0
.end method

.method public final getExtras()Landroid/util/ArrayMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->extras:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public final getFinalRank()I
    .registers 1

    iget p0, p0, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->finalRank:I

    return p0
.end method

.method public final getServiceId()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->serviceId:Ljava/lang/String;

    return-object p0
.end method

.method public final getTimestamp()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->timestamp:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 5

    iget-object v0, p0, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->exposeId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->serviceId:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget-wide v1, p0, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->timestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->eventCode:I

    const/16 v2, 0x1f

    invoke-static {v0, v1, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->cardType:I

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-object v1, p0, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->exposeDuration:Ljava/lang/Long;

    const/4 v2, 0x0

    if-nez v1, :cond_2e

    move v1, v2

    goto :goto_32

    :cond_2e
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_32
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->finalRank:I

    const/16 v3, 0x1f

    invoke-static {v1, v0, v3}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-object p0, p0, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->extras:Landroid/util/ArrayMap;

    if-nez p0, :cond_42

    goto :goto_46

    :cond_42
    invoke-virtual {p0}, Landroid/util/ArrayMap;->hashCode()I

    move-result v2

    :goto_46
    add-int/2addr v0, v2

    return v0
.end method

.method public final toJSONObject(J)Lorg/json/JSONObject;
    .registers 7

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->getExposeId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "exposeID"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->getTimestamp()J

    move-result-wide v1

    const-string v3, "timeStamp"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->getServiceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "serviceId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->getEventCode()I

    move-result v1

    const-string v2, "eventCode"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->getCardType()I

    move-result v1

    const-string v2, "cardType"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->getExposeDuration()Ljava/lang/Long;

    move-result-object v1

    const-string v2, "exposureTime"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->getFinalRank()I

    move-result v1

    const-string v2, "finalRank"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "entryType"

    invoke-virtual {v0, v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :try_start_49
    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->getExtras()Landroid/util/ArrayMap;

    move-result-object p0

    if-nez p0, :cond_51

    const/4 p0, 0x0

    goto :goto_6b

    :cond_51
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JSONObject(it).toString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "extras"

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_65
    .catchall {:try_start_49 .. :try_end_65} :catchall_66

    goto :goto_6b

    :catchall_66
    move-exception p0

    invoke-static {p0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_6b
    invoke-static {p0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_72

    goto :goto_8a

    :cond_72
    sget-object p1, Lcom/oplus/channel/server/utils/LogUtil;->INSTANCE:Lcom/oplus/channel/server/utils/LogUtil;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "toJSONObject error:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "StatisticsBean"

    invoke-virtual {p1, p2, p0}, Lcom/oplus/channel/server/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8a
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 12

    iget-object v0, p0, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->exposeId:Ljava/lang/String;

    iget-object v1, p0, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->serviceId:Ljava/lang/String;

    iget-wide v2, p0, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->timestamp:J

    iget v4, p0, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->eventCode:I

    iget v5, p0, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->cardType:I

    iget-object v6, p0, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->exposeDuration:Ljava/lang/Long;

    iget v7, p0, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->finalRank:I

    iget-object p0, p0, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->extras:Landroid/util/ArrayMap;

    const-string v8, "StatisticsBean(exposeId="

    const-string v9, ", serviceId="

    const-string v10, ", timestamp="

    invoke-static {v8, v0, v9, v1, v10}, Ld/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", eventCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cardType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", exposeDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", finalRank="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
