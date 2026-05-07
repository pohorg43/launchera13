.class Lcom/android/launcher3/card/cache/CardCacheUpdateHandler;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/cache/CardCacheUpdateHandler$SerializedCardUpdateTask;,
        Lcom/android/launcher3/card/cache/CardCacheUpdateHandler$CardEntryFetchTask;
    }
.end annotation


# static fields
.field private static final CARD_UPDATE_TOKEN:Ljava/lang/Object;

.field private static final LOG_TAG:Ljava/lang/String; = "CardCacheUpdateHandler"


# instance fields
.field private final mCardCache:Lcom/android/launcher3/card/cache/CardCache;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/card/cache/CardCacheUpdateHandler;->CARD_UPDATE_TOKEN:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/card/cache/CardCache;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/cache/CardCacheUpdateHandler;->mCardCache:Lcom/android/launcher3/card/cache/CardCache;

    iget-object p0, p1, Lcom/android/launcher3/card/cache/CardCache;->mWorkerHandler:Landroid/os/Handler;

    sget-object p1, Lcom/android/launcher3/card/cache/CardCacheUpdateHandler;->CARD_UPDATE_TOKEN:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/card/cache/CardCacheUpdateHandler;)Lcom/android/launcher3/card/cache/CardCache;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/cache/CardCacheUpdateHandler;->mCardCache:Lcom/android/launcher3/card/cache/CardCache;

    return-object p0
.end method


# virtual methods
.method public getCardCachedEntry(IILcom/android/launcher3/card/cache/CardCache$OnCacheLoadedCallback;)V
    .registers 8

    const/4 v0, 0x0

    const-string v1, "CardCacheUpdateHandler"

    if-nez p3, :cond_d

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "getCardCachedEntry but callback is null, ignored! cardId=%d"

    invoke-static {v1, p1, p0}, Lcom/android/launcher3/card/cache/CardCache;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_d
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "getCardCachedEntry, cardId=%d,cardType=%d"

    invoke-static {v1, v0, v2}, Lcom/android/launcher3/card/cache/CardCache;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/launcher3/card/cache/CardCacheUpdateHandler;->mCardCache:Lcom/android/launcher3/card/cache/CardCache;

    iget-object v0, v0, Lcom/android/launcher3/card/cache/CardCache;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/card/cache/CardCacheUpdateHandler$CardEntryFetchTask;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/launcher3/card/cache/CardCacheUpdateHandler$CardEntryFetchTask;-><init>(Lcom/android/launcher3/card/cache/CardCacheUpdateHandler;IILcom/android/launcher3/card/cache/CardCache$OnCacheLoadedCallback;)V

    sget-object p0, Lcom/android/launcher3/card/cache/CardCacheUpdateHandler;->CARD_UPDATE_TOKEN:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    const-wide/16 v2, 0x1

    add-long/2addr p1, v2

    invoke-virtual {v0, v1, p0, p1, p2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public removeCardCache(II)V
    .registers 8

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "CardCacheUpdateHandler"

    const-string/jumbo v2, "removeCardCache, cardId=%d,cardType=%d"

    invoke-static {v1, v2, v0}, Lcom/android/launcher3/card/cache/CardCache;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/android/launcher3/card/cache/CardCacheUpdateHandler$SerializedCardUpdateTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/launcher3/card/cache/CardCacheUpdateHandler$SerializedCardUpdateTask;-><init>(Lcom/android/launcher3/card/cache/CardCacheUpdateHandler;IILcom/oplus/card/manager/domain/model/UIData;)V

    iget-object p0, p0, Lcom/android/launcher3/card/cache/CardCacheUpdateHandler;->mCardCache:Lcom/android/launcher3/card/cache/CardCache;

    iget-object p0, p0, Lcom/android/launcher3/card/cache/CardCache;->mWorkerHandler:Landroid/os/Handler;

    sget-object p1, Lcom/android/launcher3/card/cache/CardCacheUpdateHandler;->CARD_UPDATE_TOKEN:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public updateCache(Lcom/oplus/card/manager/domain/model/CardModel;)V
    .registers 7

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "CardCacheUpdateHandler"

    const-string/jumbo v4, "updateCache, model=%s"

    invoke-static {v3, v4, v1}, Lcom/android/launcher3/card/cache/CardCache;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/oplus/card/manager/domain/model/CardModel;->getCardId()I

    move-result v1

    invoke-virtual {p1}, Lcom/oplus/card/manager/domain/model/CardModel;->getType()I

    move-result v4

    invoke-virtual {p1}, Lcom/oplus/card/manager/domain/model/CardModel;->getUiData()Lcom/oplus/card/manager/domain/model/UIData;

    move-result-object p1

    if-nez p1, :cond_2a

    new-array p0, v0, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v2

    const-string p1, "UiData is null, ignored! cardId=%d"

    invoke-static {v3, p1, p0}, Lcom/android/launcher3/card/cache/CardCache;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2a
    new-instance v0, Lcom/android/launcher3/card/cache/CardCacheUpdateHandler$SerializedCardUpdateTask;

    invoke-direct {v0, p0, v1, v4, p1}, Lcom/android/launcher3/card/cache/CardCacheUpdateHandler$SerializedCardUpdateTask;-><init>(Lcom/android/launcher3/card/cache/CardCacheUpdateHandler;IILcom/oplus/card/manager/domain/model/UIData;)V

    iget-object p0, p0, Lcom/android/launcher3/card/cache/CardCacheUpdateHandler;->mCardCache:Lcom/android/launcher3/card/cache/CardCache;

    iget-object p0, p0, Lcom/android/launcher3/card/cache/CardCache;->mWorkerHandler:Landroid/os/Handler;

    sget-object p1, Lcom/android/launcher3/card/cache/CardCacheUpdateHandler;->CARD_UPDATE_TOKEN:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method
