.class public Lcom/oplus/statistics/agent/CommonAgent;
.super Lcom/oplus/statistics/agent/BaseAgent;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/statistics/agent/BaseAgent;-><init>()V

    return-void
.end method

.method public static recordCommon(Landroid/content/Context;Lcom/oplus/statistics/data/CommonBean;)V
    .registers 3

    invoke-static {}, Lcom/oplus/statistics/record/ProxyRecorder;->getInstance()Lcom/oplus/statistics/record/ProxyRecorder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oplus/statistics/record/ProxyRecorder;->addTrackEvent(Landroid/content/Context;Lcom/oplus/statistics/data/TrackEvent;)V

    return-void
.end method
