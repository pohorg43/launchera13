.class public Lcom/oplus/statistics/record/ProxyRecorder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/statistics/record/IRecorder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/statistics/record/ProxyRecorder$SingletonHolder;
    }
.end annotation


# instance fields
.field private mRealRecorder:Lcom/oplus/statistics/record/IRecorder;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/statistics/record/ProxyRecorder$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/statistics/record/ProxyRecorder;-><init>()V

    return-void
.end method

.method private checkRecorder(Landroid/content/Context;)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/statistics/record/ProxyRecorder;->mRealRecorder:Lcom/oplus/statistics/record/IRecorder;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-static {p1}, Lcom/oplus/statistics/util/VersionUtil;->isContentProviderRecorder(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_13

    new-instance p1, Lcom/oplus/statistics/record/ContentProviderRecorder;

    invoke-direct {p1}, Lcom/oplus/statistics/record/ContentProviderRecorder;-><init>()V

    iput-object p1, p0, Lcom/oplus/statistics/record/ProxyRecorder;->mRealRecorder:Lcom/oplus/statistics/record/IRecorder;

    goto :goto_1a

    :cond_13
    new-instance p1, Lcom/oplus/statistics/record/ServiceRecorder;

    invoke-direct {p1}, Lcom/oplus/statistics/record/ServiceRecorder;-><init>()V

    iput-object p1, p0, Lcom/oplus/statistics/record/ProxyRecorder;->mRealRecorder:Lcom/oplus/statistics/record/IRecorder;

    :goto_1a
    return-void
.end method

.method public static getInstance()Lcom/oplus/statistics/record/ProxyRecorder;
    .registers 1

    invoke-static {}, Lcom/oplus/statistics/record/ProxyRecorder$SingletonHolder;->access$100()Lcom/oplus/statistics/record/ProxyRecorder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addTrackEvent(Landroid/content/Context;Lcom/oplus/statistics/data/TrackEvent;)V
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lcom/oplus/statistics/data/TrackEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/oplus/statistics/record/ProxyRecorder;->checkRecorder(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/oplus/statistics/record/ProxyRecorder;->mRealRecorder:Lcom/oplus/statistics/record/IRecorder;

    invoke-interface {p0, p1, p2}, Lcom/oplus/statistics/record/IRecorder;->addTrackEvent(Landroid/content/Context;Lcom/oplus/statistics/data/TrackEvent;)V

    return-void
.end method
