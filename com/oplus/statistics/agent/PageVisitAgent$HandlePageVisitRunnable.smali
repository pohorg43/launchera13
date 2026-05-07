.class final Lcom/oplus/statistics/agent/PageVisitAgent$HandlePageVisitRunnable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/statistics/agent/PageVisitAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HandlePageVisitRunnable"
.end annotation


# instance fields
.field private mClassName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentTimeMills:J

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;JI)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/statistics/agent/PageVisitAgent$HandlePageVisitRunnable;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oplus/statistics/agent/PageVisitAgent$HandlePageVisitRunnable;->mClassName:Ljava/lang/String;

    iput-wide p3, p0, Lcom/oplus/statistics/agent/PageVisitAgent$HandlePageVisitRunnable;->mCurrentTimeMills:J

    iput p5, p0, Lcom/oplus/statistics/agent/PageVisitAgent$HandlePageVisitRunnable;->mType:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget v0, p0, Lcom/oplus/statistics/agent/PageVisitAgent$HandlePageVisitRunnable;->mType:I

    if-eqz v0, :cond_12

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    goto :goto_1b

    :cond_8
    iget-object v0, p0, Lcom/oplus/statistics/agent/PageVisitAgent$HandlePageVisitRunnable;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oplus/statistics/agent/PageVisitAgent$HandlePageVisitRunnable;->mClassName:Ljava/lang/String;

    iget-wide v2, p0, Lcom/oplus/statistics/agent/PageVisitAgent$HandlePageVisitRunnable;->mCurrentTimeMills:J

    invoke-static {v0, v1, v2, v3}, Lcom/oplus/statistics/agent/PageVisitAgent;->access$000(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_1b

    :cond_12
    iget-object v0, p0, Lcom/oplus/statistics/agent/PageVisitAgent$HandlePageVisitRunnable;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oplus/statistics/agent/PageVisitAgent$HandlePageVisitRunnable;->mClassName:Ljava/lang/String;

    iget-wide v2, p0, Lcom/oplus/statistics/agent/PageVisitAgent$HandlePageVisitRunnable;->mCurrentTimeMills:J

    invoke-static {v0, v1, v2, v3}, Lcom/oplus/statistics/agent/PageVisitAgent;->access$100(Landroid/content/Context;Ljava/lang/String;J)V

    :goto_1b
    return-void
.end method
