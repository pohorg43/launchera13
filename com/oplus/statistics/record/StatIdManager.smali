.class public Lcom/oplus/statistics/record/StatIdManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/statistics/record/StatIdManager$Holder;
    }
.end annotation


# static fields
.field public static final EXPIRE_TIME_MS:J = 0x7530L

.field private static final SP_KEY_APP_EXIT_TIME:Ljava/lang/String; = "AppExitTime"

.field private static final SP_KEY_APP_SESSION_ID:Ljava/lang/String; = "AppSessionId"


# instance fields
.field private mAppSessionId:Ljava/lang/String;

.field private mExitAppTime:J


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/statistics/record/StatIdManager;->mAppSessionId:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oplus/statistics/record/StatIdManager;->mExitAppTime:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/statistics/record/StatIdManager$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/statistics/record/StatIdManager;-><init>()V

    return-void
.end method

.method private buildSessionId()Ljava/lang/String;
    .registers 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getAppLastExitTimeFromSp(Landroid/content/Context;)J
    .registers 4

    const-string p0, "AppExitTime"

    const-wide/16 v0, 0x0

    invoke-static {p1, p0, v0, v1}, Lcom/oplus/statistics/storage/PreferenceHandler;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method private getAppSessionIdFromSp(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string p0, "AppSessionId"

    const-string v0, ""

    invoke-static {p1, p0, v0}, Lcom/oplus/statistics/storage/PreferenceHandler;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/oplus/statistics/record/StatIdManager;
    .registers 1

    invoke-static {}, Lcom/oplus/statistics/record/StatIdManager$Holder;->access$100()Lcom/oplus/statistics/record/StatIdManager;

    move-result-object v0

    return-object v0
.end method

.method private isAppSessionIdFresh(Landroid/content/Context;)Z
    .registers 6

    iget-wide v0, p0, Lcom/oplus/statistics/record/StatIdManager;->mExitAppTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    invoke-direct {p0, p1}, Lcom/oplus/statistics/record/StatIdManager;->getAppLastExitTimeFromSp(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/statistics/record/StatIdManager;->mExitAppTime:J

    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide p0, p0, Lcom/oplus/statistics/record/StatIdManager;->mExitAppTime:J

    sub-long/2addr v0, p0

    cmp-long p0, v0, v2

    if-lez p0, :cond_21

    const-wide/16 p0, 0x7530

    cmp-long p0, v0, p0

    if-gez p0, :cond_21

    const/4 p0, 0x1

    goto :goto_22

    :cond_21
    const/4 p0, 0x0

    :goto_22
    return p0
.end method

.method private setAppExitTime2Sp(Landroid/content/Context;J)V
    .registers 4

    const-string p0, "AppExitTime"

    invoke-static {p1, p0, p2, p3}, Lcom/oplus/statistics/storage/PreferenceHandler;->setLong(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method private setAppSessionId2Sp(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const-string p0, "AppSessionId"

    invoke-static {p1, p0, p2}, Lcom/oplus/statistics/storage/PreferenceHandler;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAppSessionId(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/oplus/statistics/record/StatIdManager;->mAppSessionId:Ljava/lang/String;

    if-nez v0, :cond_7

    invoke-virtual {p0, p1}, Lcom/oplus/statistics/record/StatIdManager;->refreshAppSessionIdIfNeed(Landroid/content/Context;)V

    :cond_7
    iget-object p0, p0, Lcom/oplus/statistics/record/StatIdManager;->mAppSessionId:Ljava/lang/String;

    return-object p0
.end method

.method public onAppExit(Landroid/content/Context;)V
    .registers 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/statistics/record/StatIdManager;->mExitAppTime:J

    invoke-direct {p0, p1, v0, v1}, Lcom/oplus/statistics/record/StatIdManager;->setAppExitTime2Sp(Landroid/content/Context;J)V

    return-void
.end method

.method public refreshAppSessionId(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Lcom/oplus/statistics/record/StatIdManager;->buildSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/statistics/record/StatIdManager;->mAppSessionId:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/oplus/statistics/record/StatIdManager;->setAppSessionId2Sp(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public refreshAppSessionIdIfNeed(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/oplus/statistics/record/StatIdManager;->isAppSessionIdFresh(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0, p1}, Lcom/oplus/statistics/record/StatIdManager;->refreshAppSessionId(Landroid/content/Context;)V

    goto :goto_10

    :cond_a
    invoke-direct {p0, p1}, Lcom/oplus/statistics/record/StatIdManager;->getAppSessionIdFromSp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/statistics/record/StatIdManager;->mAppSessionId:Ljava/lang/String;

    :goto_10
    return-void
.end method
