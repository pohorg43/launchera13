.class public Lcom/oplus/statistics/data/AppStartBean;
.super Lcom/oplus/statistics/data/TrackEvent;
.source ""


# static fields
.field private static final LOGIN_TIME:Ljava/lang/String; = "loginTime"


# instance fields
.field private mTime:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/oplus/statistics/data/TrackEvent;-><init>(Landroid/content/Context;)V

    const-string p1, "0"

    iput-object p1, p0, Lcom/oplus/statistics/data/AppStartBean;->mTime:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/statistics/data/AppStartBean;->mTime:Ljava/lang/String;

    const-string p1, "loginTime"

    invoke-virtual {p0, p1, p2}, Lcom/oplus/statistics/data/TrackEvent;->addTrackInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getEventType()I
    .registers 1

    const/16 p0, 0x3e8

    return p0
.end method

.method public getTime()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/statistics/data/AppStartBean;->mTime:Ljava/lang/String;

    return-object p0
.end method

.method public setTime(Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/statistics/data/AppStartBean;->mTime:Ljava/lang/String;

    const-string v0, "loginTime"

    invoke-virtual {p0, v0, p1}, Lcom/oplus/statistics/data/TrackEvent;->addTrackInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "loginTime is :"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/statistics/data/AppStartBean;->getTime()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
