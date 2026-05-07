.class public Lcom/oplus/statistics/agent/AppStartAgent;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "AppStartAgent"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/oplus/statistics/agent/AppStartAgent;->lambda$recordAppStart$0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$recordAppStart$0()Ljava/lang/String;
    .registers 1

    const-string v0, "调用AppStart"

    return-object v0
.end method

.method public static recordAppStart(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Landroidx/room/e;->m:Landroidx/room/e;

    const-string v1, "AppStartAgent"

    invoke-static {v1, v0}, Lcom/oplus/statistics/util/LogUtil;->i(Ljava/lang/String;Lcom/oplus/statistics/util/Supplier;)V

    invoke-static {}, Lcom/oplus/statistics/util/TimeInfoUtil;->getFormatTime()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/oplus/statistics/data/AppStartBean;

    invoke-direct {v1, p0, v0}, Lcom/oplus/statistics/data/AppStartBean;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/statistics/record/ProxyRecorder;->getInstance()Lcom/oplus/statistics/record/ProxyRecorder;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/oplus/statistics/record/ProxyRecorder;->addTrackEvent(Landroid/content/Context;Lcom/oplus/statistics/data/TrackEvent;)V

    return-void
.end method
