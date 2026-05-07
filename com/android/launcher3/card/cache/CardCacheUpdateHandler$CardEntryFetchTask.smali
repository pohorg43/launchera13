.class Lcom/android/launcher3/card/cache/CardCacheUpdateHandler$CardEntryFetchTask;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/card/cache/CardCacheUpdateHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CardEntryFetchTask"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CardEntryFetchTask"


# instance fields
.field private final mCallback:Lcom/android/launcher3/card/cache/CardCache$OnCacheLoadedCallback;

.field private final mCardId:I

.field private final mCardType:I

.field public final synthetic this$0:Lcom/android/launcher3/card/cache/CardCacheUpdateHandler;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/cache/CardCacheUpdateHandler;IILcom/android/launcher3/card/cache/CardCache$OnCacheLoadedCallback;)V
    .registers 5

    iput-object p1, p0, Lcom/android/launcher3/card/cache/CardCacheUpdateHandler$CardEntryFetchTask;->this$0:Lcom/android/launcher3/card/cache/CardCacheUpdateHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/launcher3/card/cache/CardCacheUpdateHandler$CardEntryFetchTask;->mCardId:I

    iput p3, p0, Lcom/android/launcher3/card/cache/CardCacheUpdateHandler$CardEntryFetchTask;->mCardType:I

    iput-object p4, p0, Lcom/android/launcher3/card/cache/CardCacheUpdateHandler$CardEntryFetchTask;->mCallback:Lcom/android/launcher3/card/cache/CardCache$OnCacheLoadedCallback;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/card/cache/CardCacheUpdateHandler$CardEntryFetchTask;Lcom/android/launcher3/card/cache/CachedEntry;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/cache/CardCacheUpdateHandler$CardEntryFetchTask;->lambda$run$0(Lcom/android/launcher3/card/cache/CachedEntry;)V

    return-void
.end method

.method private synthetic lambda$run$0(Lcom/android/launcher3/card/cache/CachedEntry;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/card/cache/CardCacheUpdateHandler$CardEntryFetchTask;->mCallback:Lcom/android/launcher3/card/cache/CardCache$OnCacheLoadedCallback;

    invoke-interface {p0, p1}, Lcom/android/launcher3/card/cache/CardCache$OnCacheLoadedCallback;->onCacheLoaded(Lcom/android/launcher3/card/cache/CachedEntry;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/card/cache/CardCacheUpdateHandler$CardEntryFetchTask;->this$0:Lcom/android/launcher3/card/cache/CardCacheUpdateHandler;

    invoke-static {v0}, Lcom/android/launcher3/card/cache/CardCacheUpdateHandler;->access$000(Lcom/android/launcher3/card/cache/CardCacheUpdateHandler;)Lcom/android/launcher3/card/cache/CardCache;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/card/cache/CardCacheUpdateHandler$CardEntryFetchTask;->mCardId:I

    iget v2, p0, Lcom/android/launcher3/card/cache/CardCacheUpdateHandler$CardEntryFetchTask;->mCardType:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/card/cache/CardCache;->getCardFromDBCache(II)Lcom/android/launcher3/card/cache/CachedEntry;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "CardEntryFetchTask"

    if-eqz v0, :cond_3d

    new-array v3, v3, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/launcher3/card/cache/CardCacheUpdateHandler$CardEntryFetchTask;->mCardId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    iget v2, p0, Lcom/android/launcher3/card/cache/CardCacheUpdateHandler$CardEntryFetchTask;->mCardType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    const-string v1, "cache hit,cardId=%d,cardType=%d"

    invoke-static {v4, v1, v3}, Lcom/android/launcher3/card/cache/CardCache;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher3/card/cache/CardCacheUpdateHandler$CardEntryFetchTask;->this$0:Lcom/android/launcher3/card/cache/CardCacheUpdateHandler;

    invoke-static {v1}, Lcom/android/launcher3/card/cache/CardCacheUpdateHandler;->access$000(Lcom/android/launcher3/card/cache/CardCacheUpdateHandler;)Lcom/android/launcher3/card/cache/CardCache;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/card/cache/CardCache;->mCallbackHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/launcher3/card/cache/a;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/card/cache/a;-><init>(Lcom/android/launcher3/card/cache/CardCacheUpdateHandler$CardEntryFetchTask;Lcom/android/launcher3/card/cache/CachedEntry;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_54

    :cond_3d
    new-array v0, v3, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/launcher3/card/cache/CardCacheUpdateHandler$CardEntryFetchTask;->mCardId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    iget p0, p0, Lcom/android/launcher3/card/cache/CardCacheUpdateHandler$CardEntryFetchTask;->mCardType:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "cache missed,cardId=%d,cardType=%d"

    invoke-static {v4, p0, v0}, Lcom/android/launcher3/card/cache/CardCache;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_54
    return-void
.end method
