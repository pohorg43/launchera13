.class public Lcom/oplus/statistics/agent/OnEventAgent;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "OnEventAgent"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDynamicEventObject(ILjava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lorg/json/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "statID"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "clientTime"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v0, p2}, Lcom/oplus/statistics/agent/OnEventAgent;->getDynamicInfo(Lorg/json/JSONObject;Ljava/util/Map;)V

    invoke-static {v0, p3}, Lcom/oplus/statistics/agent/OnEventAgent;->getKVEventInfo(Lorg/json/JSONObject;Ljava/util/Map;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_15} :catch_16

    goto :goto_1e

    :catch_16
    move-exception p0

    const/16 p1, 0x17

    const-string p2, "OnEventAgent"

    invoke-static {p0, p1, p2}, Lcom/oplus/statistics/g;->a(Ljava/lang/Exception;ILjava/lang/String;)V

    :goto_1e
    return-object v0
.end method

.method private static getDynamicInfo(Lorg/json/JSONObject;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2d

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_2d

    :cond_9
    :try_start_9
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_24} :catch_25

    goto :goto_11

    :catch_25
    move-exception p0

    const/16 p1, 0x1a

    const-string v0, "OnEventAgent"

    invoke-static {p0, p1, v0}, Lcom/oplus/statistics/g;->a(Ljava/lang/Exception;ILjava/lang/String;)V

    :cond_2d
    :goto_2d
    return-void
.end method

.method public static getEventObject(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;J)Lorg/json/JSONObject;
    .registers 8

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "eventID"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "eventCount"

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "eventTime"

    invoke-virtual {v0, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1f

    const-string p0, "eventTag"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1f
    const-wide/16 p0, 0x0

    cmp-long p0, p4, p0

    if-eqz p0, :cond_33

    const-string p0, "duration"

    invoke-virtual {v0, p0, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2a} :catch_2b

    goto :goto_33

    :catch_2b
    move-exception p0

    const/16 p1, 0x19

    const-string p2, "OnEventAgent"

    invoke-static {p0, p1, p2}, Lcom/oplus/statistics/g;->a(Ljava/lang/Exception;ILjava/lang/String;)V

    :cond_33
    :goto_33
    return-object v0
.end method

.method private static getKVEventInfo(Lorg/json/JSONObject;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4e

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_4e

    :cond_9
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_e
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_16

    :cond_2a
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\""

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "eventInfo"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_45} :catch_46

    goto :goto_4e

    :catch_46
    move-exception p0

    const/16 p1, 0x1c

    const-string v0, "OnEventAgent"

    invoke-static {p0, p1, v0}, Lcom/oplus/statistics/g;->a(Ljava/lang/Exception;ILjava/lang/String;)V

    :cond_4e
    :goto_4e
    return-void
.end method

.method public static getKVEventObject(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;J)Lorg/json/JSONObject;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "J)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "eventID"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "eventTime"

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-wide/16 v1, 0x0

    cmp-long p0, p3, v1

    if-lez p0, :cond_1a

    const-string p0, "duration"

    invoke-virtual {v0, p0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_1a
    if-eqz p1, :cond_46

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p0

    if-lez p0, :cond_46

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_46

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3d} :catch_3e

    goto :goto_2a

    :catch_3e
    move-exception p0

    const/16 p1, 0x16

    const-string p2, "OnEventAgent"

    invoke-static {p0, p1, p2}, Lcom/oplus/statistics/g;->a(Ljava/lang/Exception;ILjava/lang/String;)V

    :cond_46
    return-object v0
.end method

.method public static getStaticLogObject(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "statID"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "clientTime"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "setID"

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "setValue"

    invoke-virtual {v0, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_24

    const-string p0, "remark"

    invoke-virtual {v0, p0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_24
    invoke-static {v0, p5}, Lcom/oplus/statistics/agent/OnEventAgent;->getKVEventInfo(Lorg/json/JSONObject;Ljava/util/Map;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_27} :catch_28

    goto :goto_30

    :catch_28
    move-exception p0

    const/16 p1, 0x1d

    const-string p2, "OnEventAgent"

    invoke-static {p0, p1, p2}, Lcom/oplus/statistics/g;->a(Ljava/lang/Exception;ILjava/lang/String;)V

    :goto_30
    return-object v0
.end method

.method public static onDynamicEvent(Landroid/content/Context;IILjava/util/Map;Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/oplus/statistics/util/TimeInfoUtil;->getFormatTime()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/oplus/statistics/agent/OnEventAgent;->recordDynamicEvent(Landroid/content/Context;IILjava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V
    .registers 13

    invoke-static {}, Lcom/oplus/statistics/util/TimeInfoUtil;->getFormatTime()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Lcom/oplus/statistics/agent/OnEventAgent;->recordEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;J)V

    return-void
.end method

.method public static onEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/oplus/statistics/util/TimeInfoUtil;->getCurrentTime()J

    move-result-wide v0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/oplus/statistics/agent/OnEventAgent;->recordEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static onEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/oplus/statistics/util/TimeInfoUtil;->getCurrentTime()J

    move-result-wide v0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/oplus/statistics/storage/PreferenceHandler;->setEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static onKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;J)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    invoke-static {}, Lcom/oplus/statistics/util/TimeInfoUtil;->getFormatTime()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/oplus/statistics/agent/OnEventAgent;->recordKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;J)V

    return-void
.end method

.method public static onKVEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/oplus/statistics/util/TimeInfoUtil;->getCurrentTime()J

    move-result-wide v0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/oplus/statistics/agent/OnEventAgent;->recordKVEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static onKVEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .registers 6
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

    invoke-static {}, Lcom/oplus/statistics/util/TimeInfoUtil;->getCurrentTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/oplus/statistics/util/TimeInfoUtil;->getFormatTime(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0, v0, v1}, Lcom/oplus/statistics/agent/OnEventAgent;->getKVEventObject(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, p3}, Lcom/oplus/statistics/storage/PreferenceHandler;->setKVEventStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onStaticEvent(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/oplus/statistics/util/TimeInfoUtil;->getFormatTime()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/oplus/statistics/agent/OnEventAgent;->recordStaticLog(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static recordAppLog(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4

    new-instance v0, Lcom/oplus/statistics/data/AppLogBean;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lcom/oplus/statistics/data/AppLogBean;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/statistics/record/ProxyRecorder;->getInstance()Lcom/oplus/statistics/record/ProxyRecorder;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/oplus/statistics/record/ProxyRecorder;->addTrackEvent(Landroid/content/Context;Lcom/oplus/statistics/data/TrackEvent;)V

    return-void
.end method

.method public static recordDynamicEvent(Landroid/content/Context;IILjava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p2, p3, p4, p5}, Lcom/oplus/statistics/agent/OnEventAgent;->getDynamicEventObject(ILjava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/oplus/statistics/agent/OnEventAgent;->recordDynamicEventLog(Landroid/content/Context;ILorg/json/JSONObject;)V

    return-void
.end method

.method private static recordDynamicEventLog(Landroid/content/Context;ILorg/json/JSONObject;)V
    .registers 4

    new-instance v0, Lcom/oplus/statistics/data/DynamicEventBean;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lcom/oplus/statistics/data/DynamicEventBean;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    invoke-static {}, Lcom/oplus/statistics/record/ProxyRecorder;->getInstance()Lcom/oplus/statistics/record/ProxyRecorder;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/oplus/statistics/record/ProxyRecorder;->addTrackEvent(Landroid/content/Context;Lcom/oplus/statistics/data/TrackEvent;)V

    return-void
.end method

.method public static recordEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;J)V
    .registers 7

    invoke-static/range {p1 .. p6}, Lcom/oplus/statistics/agent/OnEventAgent;->getEventObject(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "event"

    invoke-static {p0, p2, p1}, Lcom/oplus/statistics/agent/OnEventAgent;->recordAppLog(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static recordEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 13

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/oplus/statistics/storage/PreferenceHandler;->getEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/oplus/statistics/util/TimeInfoUtil;->getFormatTime(J)Ljava/lang/String;

    move-result-object v5

    sub-long v6, p3, v0

    const-wide/32 p3, 0x240c8400

    cmp-long p3, v6, p3

    const-wide/16 v0, 0x0

    if-gtz p3, :cond_28

    cmp-long p3, v6, v0

    if-gez p3, :cond_18

    goto :goto_28

    :cond_18
    const/4 v4, 0x1

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v2 .. v7}, Lcom/oplus/statistics/agent/OnEventAgent;->getEventObject(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p3

    const-string p4, "event"

    invoke-static {p0, p4, p3}, Lcom/oplus/statistics/agent/OnEventAgent;->recordAppLog(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {p0, p1, p2, v0, v1}, Lcom/oplus/statistics/storage/PreferenceHandler;->setEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_34

    :cond_28
    :goto_28
    invoke-static {p0, p1, p2, v0, v1}, Lcom/oplus/statistics/storage/PreferenceHandler;->setEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c

    return-void

    :catch_2c
    move-exception p0

    const/16 p1, 0x18

    const-string p2, "OnEventAgent"

    invoke-static {p0, p1, p2}, Lcom/oplus/statistics/g;->a(Ljava/lang/Exception;ILjava/lang/String;)V

    :goto_34
    return-void
.end method

.method public static recordKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;J)V
    .registers 6
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
            "J)V"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4, p5}, Lcom/oplus/statistics/agent/OnEventAgent;->getKVEventObject(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "ekv"

    invoke-static {p0, p2, p1}, Lcom/oplus/statistics/agent/OnEventAgent;->recordAppLog(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static recordKVEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 11

    const-string v0, "duration"

    :try_start_2
    invoke-static {p0, p1, p2}, Lcom/oplus/statistics/storage/PreferenceHandler;->getKVEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_35

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_36

    sub-long/2addr p3, v3

    const-wide/32 v3, 0x240c8400

    cmp-long v1, p3, v3

    const-string v3, ""

    if-gtz v1, :cond_32

    const-wide/16 v4, 0x0

    cmp-long v1, p3, v4

    if-gez v1, :cond_26

    goto :goto_32

    :cond_26
    :try_start_26
    invoke-virtual {v2, v0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p3, "ekv"

    invoke-static {p0, p3, v2}, Lcom/oplus/statistics/agent/OnEventAgent;->recordAppLog(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {p1, v3, p2}, Lcom/oplus/statistics/storage/PreferenceHandler;->setKVEventStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    :cond_32
    :goto_32
    invoke-static {p1, v3, p2}, Lcom/oplus/statistics/storage/PreferenceHandler;->setKVEventStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_35} :catch_36

    :cond_35
    return-void

    :catch_36
    move-exception p0

    const/16 p1, 0x1b

    const-string p2, "OnEventAgent"

    invoke-static {p0, p1, p2}, Lcom/oplus/statistics/g;->a(Ljava/lang/Exception;ILjava/lang/String;)V

    :goto_3e
    return-void
.end method

.method public static recordStaticLog(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static/range {p2 .. p7}, Lcom/oplus/statistics/agent/OnEventAgent;->getStaticLogObject(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/oplus/statistics/agent/OnEventAgent;->recordStaticLog(Landroid/content/Context;ILorg/json/JSONObject;)V

    return-void
.end method

.method private static recordStaticLog(Landroid/content/Context;ILorg/json/JSONObject;)V
    .registers 4

    new-instance v0, Lcom/oplus/statistics/data/StaticEventBean;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lcom/oplus/statistics/data/StaticEventBean;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    invoke-static {}, Lcom/oplus/statistics/record/ProxyRecorder;->getInstance()Lcom/oplus/statistics/record/ProxyRecorder;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/oplus/statistics/record/ProxyRecorder;->addTrackEvent(Landroid/content/Context;Lcom/oplus/statistics/data/TrackEvent;)V

    return-void
.end method
