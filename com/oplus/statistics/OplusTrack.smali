.class public Lcom/oplus/statistics/OplusTrack;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final CLIENT_START:Ljava/lang/String; = "ClientStart"

.field private static final EVENTID_PATTERN:Ljava/util/regex/Pattern;

.field private static final FIREWALL_LIMIT:I = 0x78

.field private static final FIREWALL_LIMIT_TIME:J = 0x1d4c0L

.field public static final FLAG_SEND_TO_ATOM:I = 0x2

.field public static final FLAG_SEND_TO_DCS:I = 0x1

.field private static final MAX_EVENT_COUNT:I = 0x2710

.field private static final MIN_EVENT_COUNT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OplusTrack"

.field private static volatile sExceptionHandler:Lcom/oplus/statistics/StatisticsExceptionHandler;

.field private static final sFireWall:Lcom/oplus/statistics/strategy/RequestFireWall;

.field private static final sPageVisitAgent:Lcom/oplus/statistics/agent/PageVisitAgent;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    const-string v0, "^[a-zA-Z0-9\\_\\-]{1,64}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/oplus/statistics/OplusTrack;->EVENTID_PATTERN:Ljava/util/regex/Pattern;

    new-instance v0, Lcom/oplus/statistics/agent/PageVisitAgent;

    invoke-direct {v0}, Lcom/oplus/statistics/agent/PageVisitAgent;-><init>()V

    sput-object v0, Lcom/oplus/statistics/OplusTrack;->sPageVisitAgent:Lcom/oplus/statistics/agent/PageVisitAgent;

    new-instance v0, Lcom/oplus/statistics/strategy/RequestFireWall$Builder;

    const/16 v1, 0x78

    const-wide/32 v2, 0x1d4c0

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/statistics/strategy/RequestFireWall$Builder;-><init>(IJ)V

    invoke-virtual {v0}, Lcom/oplus/statistics/strategy/RequestFireWall$Builder;->build()Lcom/oplus/statistics/strategy/RequestFireWall;

    move-result-object v0

    sput-object v0, Lcom/oplus/statistics/OplusTrack;->sFireWall:Lcom/oplus/statistics/strategy/RequestFireWall;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic A()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/oplus/statistics/OplusTrack;->lambda$init$0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic B()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/oplus/statistics/OplusTrack;->lambda$formatCheck$30()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic C()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/oplus/statistics/OplusTrack;->lambda$onSettingKeyUpdate$7()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic D(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/oplus/statistics/OplusTrack;->lambda$setSessionTimeOut$24(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic E(II)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/statistics/OplusTrack;->lambda$onDynamicEvent$13(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/oplus/statistics/data/CommonBean;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/statistics/OplusTrack;->lambda$onCommon$2(Lcom/oplus/statistics/data/CommonBean;)V

    return-void
.end method

.method public static synthetic b(Lcom/oplus/statistics/data/PeriodDataBean;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/oplus/statistics/OplusTrack;->lambda$onStaticDataUpdate$4(Lcom/oplus/statistics/data/PeriodDataBean;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/oplus/statistics/OplusTrack;->lambda$onStaticEvent$14(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/oplus/statistics/data/CommonBean;I)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/statistics/OplusTrack;->lambda$onCommon$1(Lcom/oplus/statistics/data/CommonBean;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/oplus/statistics/OplusTrack;->lambda$setSsoID$25(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/oplus/statistics/OplusTrack;->lambda$formatCheck$28()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static formatCheck(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 6

    const/4 v0, 0x0

    const-string v1, "OplusTrack"

    if-nez p0, :cond_b

    sget-object p0, Landroidx/room/d;->i:Landroidx/room/d;

    invoke-static {v1, p0}, Lcom/oplus/statistics/util/LogUtil;->e(Ljava/lang/String;Lcom/oplus/statistics/util/Supplier;)V

    return v0

    :cond_b
    sget-object v2, Lcom/oplus/statistics/OplusTrack;->EVENTID_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-nez p0, :cond_1d

    sget-object p0, Landroidx/room/f;->l:Landroidx/room/f;

    invoke-static {v1, p0}, Lcom/oplus/statistics/util/LogUtil;->e(Ljava/lang/String;Lcom/oplus/statistics/util/Supplier;)V

    return v0

    :cond_1d
    if-nez p1, :cond_25

    sget-object p0, Lcom/android/common/util/p;->j:Lcom/android/common/util/p;

    invoke-static {v1, p0}, Lcom/oplus/statistics/util/LogUtil;->e(Ljava/lang/String;Lcom/oplus/statistics/util/Supplier;)V

    return v0

    :cond_25
    const/16 p0, 0x2710

    if-gt p2, p0, :cond_2e

    const/4 p0, 0x1

    if-ge p2, p0, :cond_2d

    goto :goto_2e

    :cond_2d
    return p0

    :cond_2e
    :goto_2e
    sget-object p0, Landroidx/room/b;->l:Landroidx/room/b;

    invoke-static {v1, p0}, Lcom/oplus/statistics/util/LogUtil;->e(Ljava/lang/String;Lcom/oplus/statistics/util/Supplier;)V

    return v0
.end method

.method public static synthetic g()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/oplus/statistics/OplusTrack;->lambda$onPause$19()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic h(Z)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/oplus/statistics/OplusTrack;->lambda$setDebug$23(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/oplus/statistics/OplusTrack;->lambda$onEventEnd$12(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 2
    .param p0  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oplus/statistics/OplusTrack;->init(Landroid/content/Context;Lcom/oplus/statistics/OTrackConfig;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Lcom/oplus/statistics/OTrackConfig;)V
    .registers 3
    .param p0  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Lcom/oplus/statistics/OTrackConfig;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/oplus/statistics/util/ApkInfoUtil;->getAppCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/oplus/statistics/OplusTrack;->init(Landroid/content/Context;Ljava/lang/String;Lcom/oplus/statistics/OTrackConfig;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Lcom/oplus/statistics/OTrackConfig;)V
    .registers 5
    .param p0  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lcom/oplus/statistics/OTrackConfig;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/oplus/statistics/record/AppLifecycleCallbacks;->getInstance()Lcom/oplus/statistics/record/AppLifecycleCallbacks;

    move-result-object v1

    check-cast v0, Landroid/app/Application;

    invoke-virtual {v1, v0}, Lcom/oplus/statistics/record/AppLifecycleCallbacks;->init(Landroid/app/Application;)V

    :cond_f
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/android/launcher3/model/l0;->i:Lcom/android/launcher3/model/l0;

    const-string v1, "OplusTrack"

    invoke-static {v1, v0}, Lcom/oplus/statistics/util/LogUtil;->w(Ljava/lang/String;Lcom/oplus/statistics/util/Supplier;)V

    :cond_1c
    invoke-static {p0, p1}, Lcom/oplus/statistics/util/ApkInfoUtil;->putAppCodeToCache(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1, p0, p2}, Lcom/oplus/statistics/OTrackContext;->createIfNeed(Ljava/lang/String;Landroid/content/Context;Lcom/oplus/statistics/OTrackConfig;)Lcom/oplus/statistics/OTrackContext;

    if-eqz p2, :cond_30

    invoke-virtual {p2}, Lcom/oplus/statistics/OTrackConfig;->getEnv()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 p1, 0x0

    :goto_2d
    invoke-static {p1}, Lcom/oplus/statistics/util/LogUtil;->setDebug(Z)V

    :cond_30
    return-void
.end method

.method public static isSupportStaticData(Landroid/content/Context;)Z
    .registers 1

    invoke-static {p0}, Lcom/oplus/statistics/util/VersionUtil;->isSupportPeriodData(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static synthetic j()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/oplus/statistics/OplusTrack;->lambda$onResume$20()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic k(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/oplus/statistics/OplusTrack;->lambda$onKVEventEnd$18(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/oplus/statistics/data/SettingKeyDataBean;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/oplus/statistics/OplusTrack;->lambda$onSettingKeyUpdate$6(Lcom/oplus/statistics/data/SettingKeyDataBean;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$formatCheck$27()Ljava/lang/String;
    .registers 1

    const-string v0, "EventID is null!"

    return-object v0
.end method

.method private static synthetic lambda$formatCheck$28()Ljava/lang/String;
    .registers 1

    const-string v0, "EventID format error!"

    return-object v0
.end method

.method private static synthetic lambda$formatCheck$29()Ljava/lang/String;
    .registers 1

    const-string v0, "EventTag format error!"

    return-object v0
.end method

.method private static synthetic lambda$formatCheck$30()Ljava/lang/String;
    .registers 1

    const-string v0, "EventCount format error!"

    return-object v0
.end method

.method private static synthetic lambda$init$0()Ljava/lang/String;
    .registers 1

    const-string v0, "AppCode is empty."

    return-object v0
.end method

.method private static synthetic lambda$onCommon$1(Lcom/oplus/statistics/data/CommonBean;I)Ljava/lang/String;
    .registers 4

    const-string v0, "onCommon logTag is "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/statistics/data/CommonBean;->getLogTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",eventID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/statistics/data/CommonBean;->getEventID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",flagSendTo:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$onCommon$2(Lcom/oplus/statistics/data/CommonBean;)V
    .registers 2

    invoke-virtual {p0}, Lcom/oplus/statistics/data/TrackEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oplus/statistics/agent/CommonAgent;->recordCommon(Landroid/content/Context;Lcom/oplus/statistics/data/CommonBean;)V

    return-void
.end method

.method private static synthetic lambda$onCommon$3(Lcom/oplus/statistics/data/CommonBean;)V
    .registers 2

    invoke-virtual {p0}, Lcom/oplus/statistics/data/TrackEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oplus/statistics/agent/AtomAgent;->recordAtomCommon(Landroid/content/Context;Lcom/oplus/statistics/data/CommonBean;)V

    return-void
.end method

.method private static synthetic lambda$onDebug$22(Landroid/content/Context;Z)Ljava/lang/String;
    .registers 3

    const-string v0, "packageName:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",isDebug:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$onDynamicEvent$13(II)Ljava/lang/String;
    .registers 4

    const-string v0, "onDynamicEvent uploadMode:"

    const-string v1, ",statId:"

    invoke-static {v0, p0, v1, p1}, Landroidx/emoji2/text/flatbuffer/b;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$onError$21()Ljava/lang/String;
    .registers 1

    const-string v0, "onError..."

    return-object v0
.end method

.method private static synthetic lambda$onEventEnd$11(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "onEventEnd eventID:"

    const-string v1, ",eventTag:"

    invoke-static {v0, p0, v1, p1}, Landroidx/core/animation/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$onEventEnd$12(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "onEventEnd eventID:"

    invoke-static {v0, p0}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$onEventStart$10(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "onEventStart eventID:"

    invoke-static {v0, p0}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$onEventStart$9(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "onEventStart eventID:"

    const-string v1, ",eventTag:"

    invoke-static {v0, p0, v1, p1}, Landroidx/core/animation/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$onKVEventEnd$16(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "onKVEventEnd eventID:"

    const-string v1, ",eventTag:"

    invoke-static {v0, p0, v1, p1}, Landroidx/core/animation/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$onKVEventEnd$18(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "onKVEventEnd eventID:"

    invoke-static {v0, p0}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$onKVEventStart$15(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 6

    const-string v0, "onKVEventStart eventID:"

    const-string v1, ",eventTag:"

    const-string v2, ",eventMap:"

    invoke-static {v0, p0, v1, p1, v2}, Ld/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$onKVEventStart$17(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "onKVEventStart eventID:"

    invoke-static {v0, p0}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$onPause$19()Ljava/lang/String;
    .registers 1

    const-string v0, "onPause..."

    return-object v0
.end method

.method private static synthetic lambda$onResume$20()Ljava/lang/String;
    .registers 1

    const-string v0, "onResume..."

    return-object v0
.end method

.method private static synthetic lambda$onSettingKeyUpdate$6(Lcom/oplus/statistics/data/SettingKeyDataBean;)Ljava/lang/String;
    .registers 3

    const-string v0, "onSettingKeyUpdate logTag:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/statistics/data/CommonBean;->getLogTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", eventID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/statistics/data/CommonBean;->getEventID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", keys:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/statistics/data/CommonBean;->getLogMap()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$onSettingKeyUpdate$7()Ljava/lang/String;
    .registers 1

    const-string v0, "Send data failed! logTag is null."

    return-object v0
.end method

.method private static synthetic lambda$onSpecialAppStart$8(I)Ljava/lang/String;
    .registers 2

    const-string v0, "onSpecialAppStart appCode:"

    invoke-static {v0, p0}, Landroid/support/v4/media/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$onStaticDataUpdate$4(Lcom/oplus/statistics/data/PeriodDataBean;)Ljava/lang/String;
    .registers 3

    const-string v0, "onStaticDataUpdate logTag:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/statistics/data/CommonBean;->getLogTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", eventID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/statistics/data/CommonBean;->getEventID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$onStaticDataUpdate$5(Landroid/content/Context;Lcom/oplus/statistics/data/PeriodDataBean;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/statistics/agent/StaticPeriodDataRecord;->updateData(Landroid/content/Context;Lcom/oplus/statistics/data/PeriodDataBean;)V

    return-void
.end method

.method private static synthetic lambda$onStaticEvent$14(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v0, "onStaticEvent uploadMode:"

    const-string v1, ",statId:"

    const-string v2, ",setId:"

    invoke-static {v0, p0, v1, p1, v2}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ",setValue:"

    const-string v0, ",remark:"

    invoke-static {p0, p2, p1, p3, v0}, Landroidx/room/s;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$removeSsoID$26()Ljava/lang/String;
    .registers 1

    const-string v0, "removeSsoID"

    return-object v0
.end method

.method private static synthetic lambda$setDebug$23(Z)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDebug (no context) sdk and dcs isDebug:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$setSessionTimeOut$24(I)Ljava/lang/String;
    .registers 2

    const-string v0, "setSession timeout is "

    invoke-static {v0, p0}, Landroid/support/v4/media/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$setSsoID$25(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "setSsoid ssoid is "

    invoke-static {v0, p0}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/oplus/statistics/OplusTrack;->lambda$onSpecialAppStart$8(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/statistics/OplusTrack;->lambda$onKVEventStart$15(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Landroid/content/Context;Lcom/oplus/statistics/data/PeriodDataBean;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/statistics/OplusTrack;->lambda$onStaticDataUpdate$5(Landroid/content/Context;Lcom/oplus/statistics/data/PeriodDataBean;)V

    return-void
.end method

.method public static onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .registers 6
    .param p0  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    new-instance v0, Lcom/oplus/statistics/data/CommonBean;

    invoke-direct {v0, p0}, Lcom/oplus/statistics/data/CommonBean;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/oplus/statistics/data/TrackEvent;->setAppId(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/oplus/statistics/data/CommonBean;->setLogTag(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/oplus/statistics/data/CommonBean;->setEventID(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/oplus/statistics/data/CommonBean;->setLogMap(Ljava/util/Map;)V

    const/4 p0, 0x1

    invoke-static {v0, p0}, Lcom/oplus/statistics/OplusTrack;->onCommon(Lcom/oplus/statistics/data/CommonBean;I)Z

    move-result p0

    return p0
.end method

.method public static onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .registers 5
    .param p0  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    new-instance v0, Lcom/oplus/statistics/data/CommonBean;

    invoke-direct {v0, p0}, Lcom/oplus/statistics/data/CommonBean;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/oplus/statistics/data/CommonBean;->setLogTag(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/oplus/statistics/data/CommonBean;->setEventID(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/oplus/statistics/data/CommonBean;->setLogMap(Ljava/util/Map;)V

    const/4 p0, 0x1

    invoke-static {v0, p0}, Lcom/oplus/statistics/OplusTrack;->onCommon(Lcom/oplus/statistics/data/CommonBean;I)Z

    move-result p0

    return p0
.end method

.method public static onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)Z
    .registers 6
    .param p0  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    new-instance v0, Lcom/oplus/statistics/data/CommonBean;

    invoke-direct {v0, p0}, Lcom/oplus/statistics/data/CommonBean;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/oplus/statistics/data/CommonBean;->setLogTag(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/oplus/statistics/data/CommonBean;->setEventID(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/oplus/statistics/data/CommonBean;->setLogMap(Ljava/util/Map;)V

    invoke-static {v0, p4}, Lcom/oplus/statistics/OplusTrack;->onCommon(Lcom/oplus/statistics/data/CommonBean;I)Z

    move-result p0

    return p0
.end method

.method public static onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;II)Z
    .registers 7
    .param p0  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;II)Z"
        }
    .end annotation

    new-instance v0, Lcom/oplus/statistics/data/CommonBean;

    invoke-direct {v0, p0}, Lcom/oplus/statistics/data/CommonBean;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/oplus/statistics/data/CommonBean;->setLogTag(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/oplus/statistics/data/CommonBean;->setEventID(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/oplus/statistics/data/CommonBean;->setLogMap(Ljava/util/Map;)V

    invoke-virtual {v0, p4}, Lcom/oplus/statistics/data/CommonBean;->setAppId(I)V

    invoke-static {v0, p5}, Lcom/oplus/statistics/OplusTrack;->onCommon(Lcom/oplus/statistics/data/CommonBean;I)Z

    move-result p0

    return p0
.end method

.method public static onCommon(Lcom/oplus/statistics/data/CommonBean;)Z
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/oplus/statistics/OplusTrack;->onCommon(Lcom/oplus/statistics/data/CommonBean;I)Z

    move-result p0

    return p0
.end method

.method public static onCommon(Lcom/oplus/statistics/data/CommonBean;I)Z
    .registers 6

    const-string v0, "OplusTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/oplus/statistics/data/TrackEvent;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/statistics/data/CommonBean;->getLogTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/statistics/data/CommonBean;->getEventID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oplus/statistics/OplusTrack;->sFireWall:Lcom/oplus/statistics/strategy/RequestFireWall;

    invoke-virtual {v2, v1}, Lcom/oplus/statistics/strategy/RequestFireWall;->handleRequest(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_39

    invoke-static {}, Lcom/oplus/statistics/strategy/ChattyEventTracker;->getInstance()Lcom/oplus/statistics/strategy/ChattyEventTracker;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/oplus/statistics/strategy/ChattyEventTracker;->onChattyEvent(Lcom/oplus/statistics/data/CommonBean;)V

    return v2

    :cond_39
    :try_start_39
    new-instance v1, Lcom/android/launcher3/r1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/r1;-><init>(Lcom/oplus/statistics/data/CommonBean;I)V

    invoke-static {v0, v1}, Lcom/oplus/statistics/util/LogUtil;->v(Ljava/lang/String;Lcom/oplus/statistics/util/Supplier;)V

    and-int/lit8 v1, p1, 0x1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4e

    new-instance v1, Lcom/oplus/statistics/f;

    invoke-direct {v1, p0, v2}, Lcom/oplus/statistics/f;-><init>(Lcom/oplus/statistics/data/CommonBean;I)V

    invoke-static {v1}, Lcom/oplus/statistics/strategy/WorkThread;->execute(Ljava/lang/Runnable;)V

    :cond_4e
    const/4 v1, 0x2

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_5a

    new-instance p1, Lcom/oplus/statistics/f;

    invoke-direct {p1, p0, v3}, Lcom/oplus/statistics/f;-><init>(Lcom/oplus/statistics/data/CommonBean;I)V

    invoke-static {p1}, Lcom/oplus/statistics/strategy/WorkThread;->execute(Ljava/lang/Runnable;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_5a} :catch_5b

    :cond_5a
    return v3

    :catch_5b
    move-exception p0

    const/16 p1, 0xe

    invoke-static {p0, p1, v0}, Lcom/oplus/statistics/g;->a(Ljava/lang/Exception;ILjava/lang/String;)V

    return v2
.end method

.method public static onCommonBatch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)Z
    .registers 7
    .param p0  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/statistics/DataOverSizeException;
        }
    .end annotation

    new-instance v0, Lcom/oplus/statistics/data/CommonBatchBean;

    invoke-direct {v0, p0}, Lcom/oplus/statistics/data/CommonBatchBean;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/oplus/statistics/data/TrackEvent;->setAppId(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/oplus/statistics/data/CommonBean;->setLogTag(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/oplus/statistics/data/CommonBean;->setEventID(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/oplus/statistics/data/CommonBatchBean;->setLogMap(Ljava/util/List;)V

    invoke-static {v0, p5}, Lcom/oplus/statistics/OplusTrack;->onCommon(Lcom/oplus/statistics/data/CommonBean;I)Z

    move-result p0

    return p0
.end method

.method public static onCommonBatch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)Z
    .registers 11
    .param p0  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/statistics/DataOverSizeException;
        }
    .end annotation

    const-string v1, ""

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/oplus/statistics/OplusTrack;->onCommonBatch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)Z

    move-result p0

    return p0
.end method

.method public static onDebug(Landroid/content/Context;Z)V
    .registers 4

    const-string v0, "OplusTrack"

    :try_start_2
    invoke-static {p1}, Lcom/oplus/statistics/util/LogUtil;->setDebug(Z)V

    new-instance v1, Lcom/android/launcher3/widget/g;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/widget/g;-><init>(Landroid/content/Context;Z)V

    invoke-static {v0, v1}, Lcom/oplus/statistics/util/LogUtil;->d(Ljava/lang/String;Lcom/oplus/statistics/util/Supplier;)V

    invoke-static {}, Lcom/oplus/statistics/util/LogUtil;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_22

    new-instance v1, Lcom/oplus/statistics/OplusTrack$12;

    invoke-direct {v1, p0, p1}, Lcom/oplus/statistics/OplusTrack$12;-><init>(Landroid/content/Context;Z)V

    invoke-static {v1}, Lcom/oplus/statistics/strategy/WorkThread;->execute(Ljava/lang/Runnable;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1b} :catch_1c

    goto :goto_22

    :catch_1c
    move-exception p0

    const/16 p1, 0x10

    invoke-static {p0, p1, v0}, Lcom/oplus/statistics/g;->a(Ljava/lang/Exception;ILjava/lang/String;)V

    :cond_22
    :goto_22
    return-void
.end method

.method public static onDynamicEvent(Landroid/content/Context;IILjava/util/Map;Ljava/util/Map;)V
    .registers 13
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "OplusTrack"

    :try_start_2
    new-instance v1, Lcom/oplus/statistics/d;

    invoke-direct {v1, p1, p2}, Lcom/oplus/statistics/d;-><init>(II)V

    invoke-static {v0, v1}, Lcom/oplus/statistics/util/LogUtil;->d(Ljava/lang/String;Lcom/oplus/statistics/util/Supplier;)V

    new-instance v1, Lcom/oplus/statistics/OplusTrack$6;

    move-object v2, v1

    move-object v3, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/oplus/statistics/OplusTrack$6;-><init>(Landroid/content/Context;IILjava/util/Map;Ljava/util/Map;)V

    invoke-static {v1}, Lcom/oplus/statistics/strategy/WorkThread;->execute(Ljava/lang/Runnable;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_18} :catch_19

    goto :goto_1f

    :catch_19
    move-exception p0

    const/16 p1, 0x11

    invoke-static {p0, p1, v0}, Lcom/oplus/statistics/g;->a(Ljava/lang/Exception;ILjava/lang/String;)V

    :goto_1f
    return-void
.end method

.method public static declared-synchronized onError(Landroid/content/Context;)V
    .registers 5

    const-class v0, Lcom/oplus/statistics/OplusTrack;

    monitor-enter v0

    :try_start_3
    const-string v1, "OplusTrack"

    sget-object v2, Lcom/android/launcher3/f0;->j:Lcom/android/launcher3/f0;

    invoke-static {v1, v2}, Lcom/oplus/statistics/util/LogUtil;->d(Ljava/lang/String;Lcom/oplus/statistics/util/Supplier;)V

    sget-object v1, Lcom/oplus/statistics/OplusTrack;->sExceptionHandler:Lcom/oplus/statistics/StatisticsExceptionHandler;

    if-nez v1, :cond_2a

    new-instance v1, Lcom/oplus/statistics/StatisticsExceptionHandler;

    invoke-direct {v1, p0}, Lcom/oplus/statistics/StatisticsExceptionHandler;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/oplus/statistics/OplusTrack;->sExceptionHandler:Lcom/oplus/statistics/StatisticsExceptionHandler;

    sget-object p0, Lcom/oplus/statistics/OplusTrack;->sExceptionHandler:Lcom/oplus/statistics/StatisticsExceptionHandler;

    invoke-virtual {p0}, Lcom/oplus/statistics/StatisticsExceptionHandler;->setStatisticsExceptionHandler()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1a} :catch_1d
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1b

    goto :goto_2a

    :catchall_1b
    move-exception p0

    goto :goto_2c

    :catch_1d
    move-exception p0

    :try_start_1e
    const-string v1, "OplusTrack"

    new-instance v2, Lcom/oplus/statistics/a;

    const/16 v3, 0xd

    invoke-direct {v2, p0, v3}, Lcom/oplus/statistics/a;-><init>(Ljava/lang/Exception;I)V

    invoke-static {v1, v2}, Lcom/oplus/statistics/util/LogUtil;->e(Ljava/lang/String;Lcom/oplus/statistics/util/Supplier;)V
    :try_end_2a
    .catchall {:try_start_1e .. :try_end_2a} :catchall_1b

    :cond_2a
    :goto_2a
    monitor-exit v0

    return-void

    :goto_2c
    monitor-exit v0

    throw p0
.end method

.method public static onEventEnd(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "OplusTrack"

    :try_start_2
    new-instance v1, Lcom/oplus/statistics/b;

    const/4 v2, 0x3

    invoke-direct {v1, p1, v2}, Lcom/oplus/statistics/b;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v1}, Lcom/oplus/statistics/util/LogUtil;->d(Ljava/lang/String;Lcom/oplus/statistics/util/Supplier;)V

    const-string v1, ""

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lcom/oplus/statistics/OplusTrack;->formatCheck(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_23

    new-instance v1, Lcom/oplus/statistics/OplusTrack$5;

    invoke-direct {v1, p0, p1}, Lcom/oplus/statistics/OplusTrack$5;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/oplus/statistics/strategy/WorkThread;->execute(Ljava/lang/Runnable;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1c} :catch_1d

    goto :goto_23

    :catch_1d
    move-exception p0

    const/16 p1, 0x13

    invoke-static {p0, p1, v0}, Lcom/oplus/statistics/g;->a(Ljava/lang/Exception;ILjava/lang/String;)V

    :cond_23
    :goto_23
    return-void
.end method

.method public static onEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "OplusTrack"

    :try_start_2
    new-instance v1, Lcom/oplus/statistics/c;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/oplus/statistics/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0, v1}, Lcom/oplus/statistics/util/LogUtil;->d(Ljava/lang/String;Lcom/oplus/statistics/util/Supplier;)V

    const/4 v1, 0x1

    invoke-static {p1, p2, v1}, Lcom/oplus/statistics/OplusTrack;->formatCheck(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_20

    new-instance v1, Lcom/oplus/statistics/OplusTrack$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/oplus/statistics/OplusTrack$4;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/oplus/statistics/strategy/WorkThread;->execute(Ljava/lang/Runnable;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1a} :catch_1b

    goto :goto_20

    :catch_1b
    move-exception p0

    const/4 p1, 0x3

    invoke-static {p0, p1, v0}, Lcom/oplus/statistics/g;->a(Ljava/lang/Exception;ILjava/lang/String;)V

    :cond_20
    :goto_20
    return-void
.end method

.method public static onEventStart(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "OplusTrack"

    :try_start_2
    new-instance v1, Lcom/oplus/statistics/b;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/oplus/statistics/b;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v1}, Lcom/oplus/statistics/util/LogUtil;->d(Ljava/lang/String;Lcom/oplus/statistics/util/Supplier;)V

    const-string v1, ""

    invoke-static {p1, v1, v2}, Lcom/oplus/statistics/OplusTrack;->formatCheck(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_22

    new-instance v1, Lcom/oplus/statistics/OplusTrack$3;

    invoke-direct {v1, p0, p1}, Lcom/oplus/statistics/OplusTrack$3;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/oplus/statistics/strategy/WorkThread;->execute(Ljava/lang/Runnable;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1b} :catch_1c

    goto :goto_22

    :catch_1c
    move-exception p0

    const/16 p1, 0xa

    invoke-static {p0, p1, v0}, Lcom/oplus/statistics/g;->a(Ljava/lang/Exception;ILjava/lang/String;)V

    :cond_22
    :goto_22
    return-void
.end method

.method public static onEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "OplusTrack"

    :try_start_2
    new-instance v1, Lcom/oplus/statistics/c;

    const/4 v2, 0x1

    invoke-direct {v1, p1, p2, v2}, Lcom/oplus/statistics/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0, v1}, Lcom/oplus/statistics/util/LogUtil;->d(Ljava/lang/String;Lcom/oplus/statistics/util/Supplier;)V

    invoke-static {p1, p2, v2}, Lcom/oplus/statistics/OplusTrack;->formatCheck(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1f

    new-instance v1, Lcom/oplus/statistics/OplusTrack$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/oplus/statistics/OplusTrack$2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/oplus/statistics/strategy/WorkThread;->execute(Ljava/lang/Runnable;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_19} :catch_1a

    goto :goto_1f

    :catch_1a
    move-exception p0

    const/4 p1, 0x5

    invoke-static {p0, p1, v0}, Lcom/oplus/statistics/g;->a(Ljava/lang/Exception;ILjava/lang/String;)V

    :cond_1f
    :goto_1f
    return-void
.end method

.method public static onKVEventEnd(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    const-string v0, "OplusTrack"

    const/4 v1, 0x1

    :try_start_3
    new-instance v2, Lcom/oplus/statistics/b;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/oplus/statistics/b;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v2}, Lcom/oplus/statistics/util/LogUtil;->d(Ljava/lang/String;Lcom/oplus/statistics/util/Supplier;)V

    const-string v2, ""

    invoke-static {p1, v2, v1}, Lcom/oplus/statistics/OplusTrack;->formatCheck(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_21

    new-instance v2, Lcom/oplus/statistics/OplusTrack$11;

    invoke-direct {v2, p0, p1}, Lcom/oplus/statistics/OplusTrack$11;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/oplus/statistics/strategy/WorkThread;->execute(Ljava/lang/Runnable;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1c} :catch_1d

    goto :goto_21

    :catch_1d
    move-exception p0

    invoke-static {p0, v1, v0}, Lcom/oplus/statistics/g;->a(Ljava/lang/Exception;ILjava/lang/String;)V

    :cond_21
    :goto_21
    return-void
.end method

.method public static onKVEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "OplusTrack"

    :try_start_2
    new-instance v1, Lcom/oplus/statistics/c;

    const/4 v2, 0x2

    invoke-direct {v1, p1, p2, v2}, Lcom/oplus/statistics/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0, v1}, Lcom/oplus/statistics/util/LogUtil;->d(Ljava/lang/String;Lcom/oplus/statistics/util/Supplier;)V

    const/4 v1, 0x1

    invoke-static {p1, p2, v1}, Lcom/oplus/statistics/OplusTrack;->formatCheck(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_21

    new-instance v1, Lcom/oplus/statistics/OplusTrack$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/oplus/statistics/OplusTrack$9;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/oplus/statistics/strategy/WorkThread;->execute(Ljava/lang/Runnable;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1a} :catch_1b

    goto :goto_21

    :catch_1b
    move-exception p0

    const/16 p1, 0x9

    invoke-static {p0, p1, v0}, Lcom/oplus/statistics/g;->a(Ljava/lang/Exception;ILjava/lang/String;)V

    :cond_21
    :goto_21
    return-void
.end method

.method public static onKVEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "OplusTrack"

    :try_start_2
    new-instance v1, Lcom/oplus/statistics/b;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2}, Lcom/oplus/statistics/b;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v1}, Lcom/oplus/statistics/util/LogUtil;->d(Ljava/lang/String;Lcom/oplus/statistics/util/Supplier;)V

    const-string v1, ""

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lcom/oplus/statistics/OplusTrack;->formatCheck(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_23

    new-instance v1, Lcom/oplus/statistics/OplusTrack$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/oplus/statistics/OplusTrack$10;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v1}, Lcom/oplus/statistics/strategy/WorkThread;->execute(Ljava/lang/Runnable;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1c} :catch_1d

    goto :goto_23

    :catch_1d
    move-exception p0

    const/16 p1, 0x12

    invoke-static {p0, p1, v0}, Lcom/oplus/statistics/g;->a(Ljava/lang/Exception;ILjava/lang/String;)V

    :cond_23
    :goto_23
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

    const-string v0, "OplusTrack"

    :try_start_2
    new-instance v1, Lcom/android/launcher/j0;

    invoke-direct {v1, p1, p3, p2}, Lcom/android/launcher/j0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0, v1}, Lcom/oplus/statistics/util/LogUtil;->d(Ljava/lang/String;Lcom/oplus/statistics/util/Supplier;)V

    const/4 v1, 0x1

    invoke-static {p1, p3, v1}, Lcom/oplus/statistics/OplusTrack;->formatCheck(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_20

    new-instance v1, Lcom/oplus/statistics/OplusTrack$8;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/oplus/statistics/OplusTrack$8;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/oplus/statistics/strategy/WorkThread;->execute(Ljava/lang/Runnable;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_19} :catch_1a

    goto :goto_20

    :catch_1a
    move-exception p0

    const/16 p1, 0xc

    invoke-static {p0, p1, v0}, Lcom/oplus/statistics/g;->a(Ljava/lang/Exception;ILjava/lang/String;)V

    :cond_20
    :goto_20
    return-void
.end method

.method public static onPause(Landroid/content/Context;)V
    .registers 3

    const-string v0, "OplusTrack"

    :try_start_2
    sget-object v1, Landroidx/room/b;->k:Landroidx/room/b;

    invoke-static {v0, v1}, Lcom/oplus/statistics/util/LogUtil;->d(Ljava/lang/String;Lcom/oplus/statistics/util/Supplier;)V

    sget-object v1, Lcom/oplus/statistics/OplusTrack;->sPageVisitAgent:Lcom/oplus/statistics/agent/PageVisitAgent;

    invoke-virtual {v1, p0}, Lcom/oplus/statistics/agent/PageVisitAgent;->onPause(Landroid/content/Context;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_d

    goto :goto_12

    :catch_d
    move-exception p0

    const/4 v1, 0x6

    invoke-static {p0, v1, v0}, Lcom/oplus/statistics/g;->a(Ljava/lang/Exception;ILjava/lang/String;)V

    :goto_12
    return-void
.end method

.method public static onResume(Landroid/content/Context;)V
    .registers 3

    const-string v0, "OplusTrack"

    :try_start_2
    sget-object v1, Landroidx/room/c;->k:Landroidx/room/c;

    invoke-static {v0, v1}, Lcom/oplus/statistics/util/LogUtil;->d(Ljava/lang/String;Lcom/oplus/statistics/util/Supplier;)V

    sget-object v1, Lcom/oplus/statistics/OplusTrack;->sPageVisitAgent:Lcom/oplus/statistics/agent/PageVisitAgent;

    invoke-virtual {v1, p0}, Lcom/oplus/statistics/agent/PageVisitAgent;->onResume(Landroid/content/Context;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_d

    goto :goto_13

    :catch_d
    move-exception p0

    const/16 v1, 0x8

    invoke-static {p0, v1, v0}, Lcom/oplus/statistics/g;->a(Ljava/lang/Exception;ILjava/lang/String;)V

    :goto_13
    return-void
.end method

.method public static onSettingKeyUpdate(Landroid/content/Context;Lcom/oplus/statistics/data/SettingKeyDataBean;)V
    .registers 4

    const-string v0, "OplusTrack"

    :try_start_2
    new-instance v1, Landroidx/core/view/a;

    invoke-direct {v1, p1}, Landroidx/core/view/a;-><init>(Lcom/oplus/statistics/data/SettingKeyDataBean;)V

    invoke-static {v0, v1}, Lcom/oplus/statistics/util/LogUtil;->d(Ljava/lang/String;Lcom/oplus/statistics/util/Supplier;)V

    invoke-virtual {p1}, Lcom/oplus/statistics/data/CommonBean;->getLogTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    new-instance v1, Lcom/oplus/statistics/OplusTrack$1;

    invoke-direct {v1, p0, p1}, Lcom/oplus/statistics/OplusTrack$1;-><init>(Landroid/content/Context;Lcom/oplus/statistics/data/SettingKeyDataBean;)V

    invoke-static {v1}, Lcom/oplus/statistics/strategy/WorkThread;->execute(Ljava/lang/Runnable;)V

    goto :goto_29

    :cond_1d
    sget-object p0, Landroidx/room/e;->l:Landroidx/room/e;

    invoke-static {v0, p0}, Lcom/oplus/statistics/util/LogUtil;->e(Ljava/lang/String;Lcom/oplus/statistics/util/Supplier;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_22} :catch_23

    goto :goto_29

    :catch_23
    move-exception p0

    const/16 p1, 0xb

    invoke-static {p0, p1, v0}, Lcom/oplus/statistics/g;->a(Ljava/lang/Exception;ILjava/lang/String;)V

    :goto_29
    return-void
.end method

.method public static onSettingKeyUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/oplus/statistics/data/SettingKeyBean;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/oplus/statistics/data/SettingKeyDataBean;

    invoke-direct {v0, p0}, Lcom/oplus/statistics/data/SettingKeyDataBean;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/oplus/statistics/data/CommonBean;->setLogTag(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/oplus/statistics/data/CommonBean;->setEventID(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/oplus/statistics/data/SettingKeyDataBean;->setLogMap(Ljava/util/List;)V

    invoke-static {p0, v0}, Lcom/oplus/statistics/OplusTrack;->onSettingKeyUpdate(Landroid/content/Context;Lcom/oplus/statistics/data/SettingKeyDataBean;)V

    return-void
.end method

.method public static onSpecialAppStart(Landroid/content/Context;I)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/android/launcher3/c2;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lcom/android/launcher3/c2;-><init>(II)V

    const-string p1, "OplusTrack"

    invoke-static {p1, v0}, Lcom/oplus/statistics/util/LogUtil;->d(Ljava/lang/String;Lcom/oplus/statistics/util/Supplier;)V

    const-string p1, "ClientStart"

    const/4 v0, 0x0

    invoke-static {p0, p1, p1, v0}, Lcom/oplus/statistics/OplusTrack;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method public static onStaticDataUpdate(Landroid/content/Context;Lcom/oplus/statistics/data/PeriodDataBean;)V
    .registers 4

    const-string v0, "OplusTrack"

    :try_start_2
    new-instance v1, Landroidx/core/view/a;

    invoke-direct {v1, p1}, Landroidx/core/view/a;-><init>(Lcom/oplus/statistics/data/PeriodDataBean;)V

    invoke-static {v0, v1}, Lcom/oplus/statistics/util/LogUtil;->d(Ljava/lang/String;Lcom/oplus/statistics/util/Supplier;)V

    new-instance v1, Lcom/android/wm/shell/bubbles/animation/o;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/bubbles/animation/o;-><init>(Landroid/content/Context;Lcom/oplus/statistics/data/PeriodDataBean;)V

    invoke-static {v1}, Lcom/oplus/statistics/strategy/WorkThread;->execute(Ljava/lang/Runnable;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_13

    goto :goto_19

    :catch_13
    move-exception p0

    const/16 p1, 0xf

    invoke-static {p0, p1, v0}, Lcom/oplus/statistics/g;->a(Ljava/lang/Exception;ILjava/lang/String;)V

    :goto_19
    return-void
.end method

.method public static onStaticDataUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/oplus/statistics/data/PeriodDataBean;

    invoke-direct {v0, p0}, Lcom/oplus/statistics/data/PeriodDataBean;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/oplus/statistics/data/CommonBean;->setLogTag(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/oplus/statistics/data/CommonBean;->setEventID(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/oplus/statistics/data/CommonBean;->setLogMap(Ljava/util/Map;)V

    invoke-static {p0, v0}, Lcom/oplus/statistics/OplusTrack;->onStaticDataUpdate(Landroid/content/Context;Lcom/oplus/statistics/data/PeriodDataBean;)V

    return-void
.end method

.method public static onStaticEvent(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 17
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v1, "OplusTrack"

    :try_start_2
    new-instance v0, Lcom/oplus/statistics/e;

    move-object v2, v0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/oplus/statistics/e;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/oplus/statistics/util/LogUtil;->d(Ljava/lang/String;Lcom/oplus/statistics/util/Supplier;)V

    new-instance v0, Lcom/oplus/statistics/OplusTrack$7;

    move-object v2, v0

    move-object v3, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lcom/oplus/statistics/OplusTrack$7;-><init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/oplus/statistics/strategy/WorkThread;->execute(Ljava/lang/Runnable;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_21} :catch_22

    goto :goto_27

    :catch_22
    move-exception v0

    const/4 v2, 0x4

    invoke-static {v0, v2, v1}, Lcom/oplus/statistics/g;->a(Ljava/lang/Exception;ILjava/lang/String;)V

    :goto_27
    return-void
.end method

.method public static synthetic p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/statistics/OplusTrack;->lambda$onKVEventEnd$16(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Landroid/content/Context;Z)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/statistics/OplusTrack;->lambda$onDebug$22(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/oplus/statistics/OplusTrack;->lambda$formatCheck$29()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static removeSsoID(Landroid/content/Context;)V
    .registers 3

    const-string v0, "OplusTrack"

    :try_start_2
    sget-object v1, Lcom/android/common/util/p;->i:Lcom/android/common/util/p;

    invoke-static {v0, v1}, Lcom/oplus/statistics/util/LogUtil;->d(Ljava/lang/String;Lcom/oplus/statistics/util/Supplier;)V

    invoke-static {p0}, Lcom/oplus/statistics/storage/PreferenceHandler;->setSsoID(Landroid/content/Context;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_b

    goto :goto_10

    :catch_b
    move-exception p0

    const/4 v1, 0x2

    invoke-static {p0, v1, v0}, Lcom/oplus/statistics/g;->a(Ljava/lang/Exception;ILjava/lang/String;)V

    :goto_10
    return-void
.end method

.method public static synthetic s(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/oplus/statistics/OplusTrack;->lambda$onKVEventStart$17(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setDebug(Z)V
    .registers 4

    const-string v0, "OplusTrack"

    :try_start_2
    invoke-static {p0}, Lcom/oplus/statistics/util/LogUtil;->setDebug(Z)V

    new-instance v1, Lcom/android/launcher3/model/r0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/model/r0;-><init>(ZI)V

    invoke-static {v0, v1}, Lcom/oplus/statistics/util/LogUtil;->d(Ljava/lang/String;Lcom/oplus/statistics/util/Supplier;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_f

    goto :goto_14

    :catch_f
    move-exception p0

    const/4 v1, 0x7

    invoke-static {p0, v1, v0}, Lcom/oplus/statistics/g;->a(Ljava/lang/Exception;ILjava/lang/String;)V

    :goto_14
    return-void
.end method

.method public static setSessionTimeOut(Landroid/content/Context;I)V
    .registers 4

    new-instance v0, Lcom/android/launcher3/c2;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/android/launcher3/c2;-><init>(II)V

    const-string v1, "OplusTrack"

    invoke-static {v1, v0}, Lcom/oplus/statistics/util/LogUtil;->d(Ljava/lang/String;Lcom/oplus/statistics/util/Supplier;)V

    if-lez p1, :cond_16

    :try_start_d
    invoke-static {p0, p1}, Lcom/oplus/statistics/storage/PreferenceHandler;->setSessionTimeout(Landroid/content/Context;I)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_16

    :catch_11
    move-exception p0

    const/4 p1, 0x0

    invoke-static {p0, p1, v1}, Lcom/oplus/statistics/g;->a(Ljava/lang/Exception;ILjava/lang/String;)V

    :cond_16
    :goto_16
    return-void
.end method

.method public static setSsoID(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/oplus/statistics/b;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Lcom/oplus/statistics/b;-><init>(Ljava/lang/String;I)V

    const-string v1, "OplusTrack"

    invoke-static {v1, v0}, Lcom/oplus/statistics/util/LogUtil;->d(Ljava/lang/String;Lcom/oplus/statistics/util/Supplier;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_19
    const-string p1, "0"

    :cond_1b
    :try_start_1b
    invoke-static {p0, p1}, Lcom/oplus/statistics/storage/PreferenceHandler;->setSsoID(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_1f

    goto :goto_25

    :catch_1f
    move-exception p0

    const/16 p1, 0x14

    invoke-static {p0, p1, v1}, Lcom/oplus/statistics/g;->a(Ljava/lang/Exception;ILjava/lang/String;)V

    :goto_25
    return-void
.end method

.method public static synthetic t()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/oplus/statistics/OplusTrack;->lambda$removeSsoID$26()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic u()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/oplus/statistics/OplusTrack;->lambda$formatCheck$27()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic v(Lcom/oplus/statistics/data/CommonBean;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/statistics/OplusTrack;->lambda$onCommon$3(Lcom/oplus/statistics/data/CommonBean;)V

    return-void
.end method

.method public static synthetic w(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/oplus/statistics/OplusTrack;->lambda$onEventStart$10(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/oplus/statistics/OplusTrack;->lambda$onError$21()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic y(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/statistics/OplusTrack;->lambda$onEventEnd$11(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/statistics/OplusTrack;->lambda$onEventStart$9(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
