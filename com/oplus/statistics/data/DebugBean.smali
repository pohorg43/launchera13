.class public Lcom/oplus/statistics/data/DebugBean;
.super Lcom/oplus/statistics/data/TrackEvent;
.source ""


# static fields
.field private static final DEBUG:Ljava/lang/String; = "debug"


# instance fields
.field private mFlag:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/oplus/statistics/data/TrackEvent;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/statistics/data/DebugBean;->mFlag:Z

    iput-boolean p2, p0, Lcom/oplus/statistics/data/DebugBean;->mFlag:Z

    const-string p1, "debug"

    invoke-virtual {p0, p1, p2}, Lcom/oplus/statistics/data/TrackEvent;->addTrackInfo(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public getEventType()I
    .registers 1

    const/16 p0, 0x3f1

    return p0
.end method

.method public getFlag()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/statistics/data/DebugBean;->mFlag:Z

    return p0
.end method

.method public setFlag(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/oplus/statistics/data/DebugBean;->mFlag:Z

    const-string v0, "debug"

    invoke-virtual {p0, v0, p1}, Lcom/oplus/statistics/data/TrackEvent;->addTrackInfo(Ljava/lang/String;Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "type is :"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/statistics/data/DebugBean;->getEventType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "flag is :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/statistics/data/DebugBean;->getFlag()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
