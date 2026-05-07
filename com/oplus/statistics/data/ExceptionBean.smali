.class public Lcom/oplus/statistics/data/ExceptionBean;
.super Lcom/oplus/statistics/data/TrackEvent;
.source ""


# static fields
.field private static final EXCEPTION:Ljava/lang/String; = "exception"

.field private static final EXCEPTION_COUNT:Ljava/lang/String; = "count"

.field private static final EXCEPTION_TIME:Ljava/lang/String; = "time"


# instance fields
.field private mCount:I

.field private mEventTime:J

.field private mException:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/statistics/data/TrackEvent;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 1

    iget p0, p0, Lcom/oplus/statistics/data/ExceptionBean;->mCount:I

    return p0
.end method

.method public getEventTime()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/statistics/data/ExceptionBean;->mEventTime:J

    return-wide v0
.end method

.method public getEventType()I
    .registers 1

    const/16 p0, 0x3ec

    return p0
.end method

.method public getException()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/statistics/data/ExceptionBean;->mException:Ljava/lang/String;

    return-object p0
.end method

.method public setCount(I)V
    .registers 3

    iput p1, p0, Lcom/oplus/statistics/data/ExceptionBean;->mCount:I

    const-string v0, "time"

    invoke-virtual {p0, v0, p1}, Lcom/oplus/statistics/data/TrackEvent;->addTrackInfo(Ljava/lang/String;I)V

    return-void
.end method

.method public setEventTime(J)V
    .registers 4

    iput-wide p1, p0, Lcom/oplus/statistics/data/ExceptionBean;->mEventTime:J

    const-string v0, "time"

    invoke-virtual {p0, v0, p1, p2}, Lcom/oplus/statistics/data/TrackEvent;->addTrackInfo(Ljava/lang/String;J)V

    return-void
.end method

.method public setException(Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/statistics/data/ExceptionBean;->mException:Ljava/lang/String;

    const-string v0, "exception"

    invoke-virtual {p0, v0, p1}, Lcom/oplus/statistics/data/TrackEvent;->addTrackInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "exception is :"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/statistics/data/ExceptionBean;->getException()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "count is :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/statistics/data/ExceptionBean;->getCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "time is :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/statistics/data/ExceptionBean;->getEventTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
