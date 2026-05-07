.class public Lcom/oplus/statistics/strategy/ChattyEventTracker;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/statistics/strategy/ChattyEventTracker$ChattyEvent;,
        Lcom/oplus/statistics/strategy/ChattyEventTracker$SingletonHolder;
    }
.end annotation


# static fields
.field private static final CHATTY_EVENT_ID:Ljava/lang/String; = "chatty_event"

.field private static final MAP_KEY_APP_ID:Ljava/lang/String; = "app_id"

.field private static final MAP_KEY_EVENT_ID:Ljava/lang/String; = "event_id"

.field private static final MAP_KEY_LOG_TAG:Ljava/lang/String; = "log_tag"

.field private static final MAP_KEY_TIMES:Ljava/lang/String; = "times"

.field private static final MAX_VALUE_TO_COMMIT:J = 0x64L

.field private static final MIN_TIME_TO_COMMIT:J = 0x493e0L

.field private static final SELF_TRACK_APP_ID:Ljava/lang/String; = "21000"

.field private static final SELF_TRACK_LOG_TAG:Ljava/lang/String; = "001"

.field private static final TAG:Ljava/lang/String; = "ChattyEventTracker"


# instance fields
.field private mCacheCount:I

.field private final mChattyEventMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/statistics/strategy/ChattyEventTracker$ChattyEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/statistics/strategy/ChattyEventTracker;->mChattyEventMap:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/statistics/strategy/ChattyEventTracker$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/statistics/strategy/ChattyEventTracker;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/statistics/strategy/ChattyEventTracker;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/statistics/strategy/ChattyEventTracker;->lambda$onChattyEvent$2(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic b()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/oplus/statistics/strategy/ChattyEventTracker;->lambda$onChattyEvent$0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(Lcom/oplus/statistics/strategy/ChattyEventTracker;Landroid/content/Context;Lcom/oplus/statistics/data/CommonBean;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/statistics/strategy/ChattyEventTracker;->lambda$onChattyEvent$1(Landroid/content/Context;Lcom/oplus/statistics/data/CommonBean;)V

    return-void
.end method

.method public static getInstance()Lcom/oplus/statistics/strategy/ChattyEventTracker;
    .registers 1

    invoke-static {}, Lcom/oplus/statistics/strategy/ChattyEventTracker$SingletonHolder;->access$000()Lcom/oplus/statistics/strategy/ChattyEventTracker;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$onChattyEvent$0()Ljava/lang/String;
    .registers 1

    const-string v0, "context is empty."

    return-object v0
.end method

.method private synthetic lambda$onChattyEvent$1(Landroid/content/Context;Lcom/oplus/statistics/data/CommonBean;)V
    .registers 5

    invoke-virtual {p2}, Lcom/oplus/statistics/data/TrackEvent;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/oplus/statistics/data/CommonBean;->getLogTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/oplus/statistics/data/CommonBean;->getEventID()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/oplus/statistics/strategy/ChattyEventTracker;->onChattyEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onChattyEvent$2(Landroid/content/Context;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/oplus/statistics/strategy/ChattyEventTracker;->commit(Landroid/content/Context;)V

    return-void
.end method

.method private onChattyEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    invoke-static {p2, p3, p4}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/statistics/strategy/ChattyEventTracker;->mChattyEventMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/statistics/strategy/ChattyEventTracker$ChattyEvent;

    if-nez v1, :cond_1c

    new-instance v1, Lcom/oplus/statistics/strategy/ChattyEventTracker$ChattyEvent;

    invoke-direct {v1, p2, p3, p4}, Lcom/oplus/statistics/strategy/ChattyEventTracker$ChattyEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/oplus/statistics/strategy/ChattyEventTracker$ChattyEvent;->increment()I

    iget-object p2, p0, Lcom/oplus/statistics/strategy/ChattyEventTracker;->mChattyEventMap:Ljava/util/Map;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    :cond_1c
    invoke-virtual {v1}, Lcom/oplus/statistics/strategy/ChattyEventTracker$ChattyEvent;->increment()I

    :goto_1f
    iget p2, p0, Lcom/oplus/statistics/strategy/ChattyEventTracker;->mCacheCount:I

    const/4 p3, 0x1

    add-int/2addr p2, p3

    iput p2, p0, Lcom/oplus/statistics/strategy/ChattyEventTracker;->mCacheCount:I

    int-to-long v0, p2

    const-wide/16 v2, 0x64

    cmp-long p4, v0, v2

    if-ltz p4, :cond_30

    invoke-virtual {p0, p1}, Lcom/oplus/statistics/strategy/ChattyEventTracker;->commit(Landroid/content/Context;)V

    goto :goto_4b

    :cond_30
    if-ne p2, p3, :cond_4b

    invoke-static {}, Lcom/oplus/statistics/strategy/WorkThread;->getInstance()Lcom/oplus/statistics/strategy/WorkThread;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/oplus/statistics/strategy/WorkThread;->hasMessages(I)Z

    move-result p2

    if-nez p2, :cond_4b

    invoke-static {}, Lcom/oplus/statistics/strategy/WorkThread;->getInstance()Lcom/oplus/statistics/strategy/WorkThread;

    move-result-object p2

    new-instance p4, Lcom/android/wm/shell/bubbles/animation/o;

    invoke-direct {p4, p0, p1}, Lcom/android/wm/shell/bubbles/animation/o;-><init>(Lcom/oplus/statistics/strategy/ChattyEventTracker;Landroid/content/Context;)V

    const-wide/32 p0, 0x493e0

    invoke-virtual {p2, p3, p4, p0, p1}, Lcom/oplus/statistics/strategy/WorkThread;->postDelay(ILjava/lang/Runnable;J)V

    :cond_4b
    :goto_4b
    return-void
.end method


# virtual methods
.method public commit(Landroid/content/Context;)V
    .registers 8

    iget-object v0, p0, Lcom/oplus/statistics/strategy/ChattyEventTracker;->mChattyEventMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/statistics/strategy/ChattyEventTracker$ChattyEvent;

    new-instance v2, Lcom/oplus/statistics/data/CommonBean;

    const-string v3, "21000"

    const-string v4, "001"

    const-string v5, "chatty_event"

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/oplus/statistics/data/CommonBean;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    invoke-static {v1}, Lcom/oplus/statistics/strategy/ChattyEventTracker$ChattyEvent;->access$100(Lcom/oplus/statistics/strategy/ChattyEventTracker$ChattyEvent;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "app_id"

    invoke-virtual {v3, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/oplus/statistics/strategy/ChattyEventTracker$ChattyEvent;->access$200(Lcom/oplus/statistics/strategy/ChattyEventTracker$ChattyEvent;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "log_tag"

    invoke-virtual {v3, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/oplus/statistics/strategy/ChattyEventTracker$ChattyEvent;->access$300(Lcom/oplus/statistics/strategy/ChattyEventTracker$ChattyEvent;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "event_id"

    invoke-virtual {v3, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/oplus/statistics/strategy/ChattyEventTracker$ChattyEvent;->access$400(Lcom/oplus/statistics/strategy/ChattyEventTracker$ChattyEvent;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "times"

    invoke-virtual {v3, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/oplus/statistics/data/CommonBean;->setLogMap(Ljava/util/Map;)V

    invoke-static {p1, v2}, Lcom/oplus/statistics/agent/CommonAgent;->recordCommon(Landroid/content/Context;Lcom/oplus/statistics/data/CommonBean;)V

    goto :goto_a

    :cond_59
    const/4 p1, 0x0

    iput p1, p0, Lcom/oplus/statistics/strategy/ChattyEventTracker;->mCacheCount:I

    iget-object p0, p0, Lcom/oplus/statistics/strategy/ChattyEventTracker;->mChattyEventMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    invoke-static {}, Lcom/oplus/statistics/strategy/WorkThread;->getInstance()Lcom/oplus/statistics/strategy/WorkThread;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oplus/statistics/strategy/WorkThread;->removeMessages(I)V

    return-void
.end method

.method public onChattyEvent(Lcom/oplus/statistics/data/CommonBean;)V
    .registers 4
    .param p1  # Lcom/oplus/statistics/data/CommonBean;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/oplus/statistics/data/TrackEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_12

    sget-object p0, Landroidx/room/c;->m:Landroidx/room/c;

    const-string p1, "ChattyEventTracker"

    invoke-static {p1, p0}, Lcom/oplus/statistics/util/LogUtil;->e(Ljava/lang/String;Lcom/oplus/statistics/util/Supplier;)V

    return-void

    :cond_12
    new-instance v1, Lcom/oplus/settingsdynamic/d;

    invoke-direct {v1, p0, v0, p1}, Lcom/oplus/settingsdynamic/d;-><init>(Lcom/oplus/statistics/strategy/ChattyEventTracker;Landroid/content/Context;Lcom/oplus/statistics/data/CommonBean;)V

    invoke-static {v1}, Lcom/oplus/statistics/strategy/WorkThread;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
