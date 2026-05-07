.class public abstract Lcom/oplus/statistics/data/TrackEvent;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final APP_ID:Ljava/lang/String; = "appId"

.field public static final APP_ID_STR:Ljava/lang/String; = "appIdStr"

.field public static final APP_NAME:Ljava/lang/String; = "appName"

.field public static final APP_PACKAGE:Ljava/lang/String; = "appPackage"

.field public static final APP_SESSION_ID:Ljava/lang/String; = "statSId"

.field public static final APP_VERSION:Ljava/lang/String; = "appVersion"

.field public static final DATA_TYPE:Ljava/lang/String; = "dataType"

.field public static final HEADER_FLAG:Ljava/lang/String; = "headerFlag"

.field public static final SSOID:Ljava/lang/String; = "ssoid"

.field private static final TAG:Ljava/lang/String; = "TrackEvent"


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mAppName:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mHeaderFlag:I

.field private mPackageName:Ljava/lang/String;

.field private final mTrackInfo:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mVersionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/statistics/data/TrackEvent;->mAppId:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/statistics/data/TrackEvent;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/statistics/data/TrackEvent;->mVersionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/statistics/data/TrackEvent;->mAppName:Ljava/lang/String;

    const-string v0, "TrackEvent: context is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/oplus/statistics/data/TrackEvent;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/statistics/data/TrackEvent;->mTrackInfo:Landroid/util/ArrayMap;

    invoke-direct {p0, p1}, Lcom/oplus/statistics/data/TrackEvent;->initBaseTrackInfo(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/oplus/statistics/data/TrackEvent;->lambda$initBaseTrackInfo$0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initBaseTrackInfo(Landroid/content/Context;)V
    .registers 8

    iget-object v0, p0, Lcom/oplus/statistics/data/TrackEvent;->mTrackInfo:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Lcom/oplus/statistics/data/TrackEvent;->getEventType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "dataType"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oplus/statistics/data/TrackEvent;->mTrackInfo:Landroid/util/ArrayMap;

    invoke-static {p1}, Lcom/oplus/statistics/util/AccountUtil;->getSsoId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ssoid"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oplus/statistics/data/TrackEvent;->mTrackInfo:Landroid/util/ArrayMap;

    invoke-static {}, Lcom/oplus/statistics/record/StatIdManager;->getInstance()Lcom/oplus/statistics/record/StatIdManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/oplus/statistics/record/StatIdManager;->getAppSessionId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "statSId"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/oplus/statistics/util/ApkInfoUtil;->getAppCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3b

    sget-object v1, Landroidx/room/d;->j:Landroidx/room/d;

    const-string v2, "TrackEvent"

    invoke-static {v2, v1}, Lcom/oplus/statistics/util/LogUtil;->w(Ljava/lang/String;Lcom/oplus/statistics/util/Supplier;)V

    goto :goto_3e

    :cond_3b
    invoke-virtual {p0, v0}, Lcom/oplus/statistics/data/TrackEvent;->setAppId(Ljava/lang/String;)V

    :goto_3e
    invoke-static {v0}, Lcom/oplus/statistics/OTrackContext;->get(Ljava/lang/String;)Lcom/oplus/statistics/OTrackContext;

    move-result-object v0

    const-string v1, "appName"

    const-string v2, "appPackage"

    const-string v3, "appVersion"

    if-eqz v0, :cond_85

    iget-object p1, p0, Lcom/oplus/statistics/data/TrackEvent;->mTrackInfo:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Lcom/oplus/statistics/OTrackContext;->getConfig()Lcom/oplus/statistics/OTrackConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/statistics/OTrackConfig;->getHeaderFlag()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "headerFlag"

    invoke-virtual {p1, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/oplus/statistics/data/TrackEvent;->mTrackInfo:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Lcom/oplus/statistics/OTrackContext;->getConfig()Lcom/oplus/statistics/OTrackConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/statistics/OTrackConfig;->getVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/oplus/statistics/data/TrackEvent;->mTrackInfo:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Lcom/oplus/statistics/OTrackContext;->getConfig()Lcom/oplus/statistics/OTrackConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/statistics/OTrackConfig;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/oplus/statistics/data/TrackEvent;->mTrackInfo:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Lcom/oplus/statistics/OTrackContext;->getConfig()Lcom/oplus/statistics/OTrackConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/statistics/OTrackConfig;->getAppName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a0

    :cond_85
    iget-object v0, p0, Lcom/oplus/statistics/data/TrackEvent;->mTrackInfo:Landroid/util/ArrayMap;

    invoke-static {p1}, Lcom/oplus/statistics/util/ApkInfoUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oplus/statistics/data/TrackEvent;->mTrackInfo:Landroid/util/ArrayMap;

    invoke-static {p1}, Lcom/oplus/statistics/util/ApkInfoUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/oplus/statistics/data/TrackEvent;->mTrackInfo:Landroid/util/ArrayMap;

    invoke-static {p1}, Lcom/oplus/statistics/util/ApkInfoUtil;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_a0
    return-void
.end method

.method private static synthetic lambda$initBaseTrackInfo$0()Ljava/lang/String;
    .registers 1

    const-string v0, "appId is empty"

    return-object v0
.end method


# virtual methods
.method public addTrackInfo(Ljava/lang/String;I)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/statistics/data/TrackEvent;->mTrackInfo:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addTrackInfo(Ljava/lang/String;J)V
    .registers 4

    iget-object p0, p0, Lcom/oplus/statistics/data/TrackEvent;->mTrackInfo:Landroid/util/ArrayMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addTrackInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/statistics/data/TrackEvent;->mTrackInfo:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addTrackInfo(Ljava/lang/String;Z)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/statistics/data/TrackEvent;->mTrackInfo:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/statistics/data/TrackEvent;->mAppId:Ljava/lang/String;

    return-object p0
.end method

.method public getAppName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/statistics/data/TrackEvent;->mAppName:Ljava/lang/String;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/oplus/statistics/data/TrackEvent;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public abstract getEventType()I
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/statistics/data/TrackEvent;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getTrackInfo()Ljava/util/Map;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArrayMap;

    iget-object p0, p0, Lcom/oplus/statistics/data/TrackEvent;->mTrackInfo:Landroid/util/ArrayMap;

    invoke-direct {v0, p0}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    return-object v0
.end method

.method public getVersionName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/statistics/data/TrackEvent;->mVersionName:Ljava/lang/String;

    return-object p0
.end method

.method public setAppId(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iput-object p1, p0, Lcom/oplus/statistics/data/TrackEvent;->mAppId:Ljava/lang/String;

    const-string v0, "appIdStr"

    invoke-virtual {p0, v0, p1}, Lcom/oplus/statistics/data/TrackEvent;->addTrackInfo(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/statistics/data/TrackEvent;->mAppId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_21

    iget-object p1, p0, Lcom/oplus/statistics/data/TrackEvent;->mAppId:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "appId"

    invoke-virtual {p0, v0, p1}, Lcom/oplus/statistics/data/TrackEvent;->addTrackInfo(Ljava/lang/String;I)V

    :cond_21
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/statistics/data/TrackEvent;->mAppName:Ljava/lang/String;

    const-string v0, "appName"

    invoke-virtual {p0, v0, p1}, Lcom/oplus/statistics/data/TrackEvent;->addTrackInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHeaderFlag(I)V
    .registers 3

    iput p1, p0, Lcom/oplus/statistics/data/TrackEvent;->mHeaderFlag:I

    const-string v0, "headerFlag"

    invoke-virtual {p0, v0, p1}, Lcom/oplus/statistics/data/TrackEvent;->addTrackInfo(Ljava/lang/String;I)V

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/statistics/data/TrackEvent;->mPackageName:Ljava/lang/String;

    const-string v0, "appPackage"

    invoke-virtual {p0, v0, p1}, Lcom/oplus/statistics/data/TrackEvent;->addTrackInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/statistics/data/TrackEvent;->mVersionName:Ljava/lang/String;

    const-string v0, "appVersion"

    invoke-virtual {p0, v0, p1}, Lcom/oplus/statistics/data/TrackEvent;->addTrackInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
