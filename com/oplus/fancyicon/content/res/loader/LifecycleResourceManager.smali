.class public Lcom/oplus/fancyicon/content/res/loader/LifecycleResourceManager;
.super Lcom/oplus/fancyicon/content/res/loader/ResourceManager;
.source ""


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LifecycleResourceManager"

.field public static final TIME_DAY:I = 0x5265c00

.field public static final TIME_HOUR:I = 0x36ee80

.field private static sLastCheckCacheTime:J


# instance fields
.field private mCheckTime:J

.field private mInactiveTime:J


# direct methods
.method public constructor <init>(Lcom/oplus/fancyicon/content/res/ResourceLoader;JJ)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/oplus/fancyicon/content/res/loader/ResourceManager;-><init>(Lcom/oplus/fancyicon/content/res/ResourceLoader;)V

    iput-wide p2, p0, Lcom/oplus/fancyicon/content/res/loader/LifecycleResourceManager;->mInactiveTime:J

    iput-wide p4, p0, Lcom/oplus/fancyicon/content/res/loader/LifecycleResourceManager;->mCheckTime:J

    return-void
.end method

.method private checkCache()V
    .registers 12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/oplus/fancyicon/content/res/loader/LifecycleResourceManager;->sLastCheckCacheTime:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/oplus/fancyicon/content/res/loader/LifecycleResourceManager;->mCheckTime:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_f

    return-void

    :cond_f
    const-string v2, "LifecycleResourceManager"

    const-string v3, "beging check cache... "

    invoke-static {v2, v3}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/oplus/fancyicon/content/res/loader/ResourceManager;->mBitmapCache:Landroid/util/LruCache;

    monitor-enter v3

    :try_start_1e
    iget-object v4, p0, Lcom/oplus/fancyicon/content/res/loader/ResourceManager;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v4}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2c
    :goto_2c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_70

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/oplus/fancyicon/content/res/loader/ResourceManager;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v6, v5}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oplus/fancyicon/content/res/loader/ResourceManager$BitmapInfo;

    if-eqz v6, :cond_2c

    iget-wide v7, v6, Lcom/oplus/fancyicon/content/res/loader/ResourceManager$BitmapInfo;->mLastVisitTime:J

    sub-long v7, v0, v7

    iget-wide v9, p0, Lcom/oplus/fancyicon/content/res/loader/LifecycleResourceManager;->mInactiveTime:J

    cmp-long v7, v7, v9

    if-lez v7, :cond_2c

    const-string v7, "LifecycleResourceManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "current = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " last = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v6, Lcom/oplus/fancyicon/content/res/loader/ResourceManager$BitmapInfo;->mLastVisitTime:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    :cond_70
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_74
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "LifecycleResourceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "remove cache: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/oplus/fancyicon/content/res/loader/ResourceManager;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v5, v4}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_74

    :cond_9c
    monitor-exit v3
    :try_end_9d
    .catchall {:try_start_1e .. :try_end_9d} :catchall_a0

    sput-wide v0, Lcom/oplus/fancyicon/content/res/loader/LifecycleResourceManager;->sLastCheckCacheTime:J

    return-void

    :catchall_a0
    move-exception p0

    :try_start_a1
    monitor-exit v3
    :try_end_a2
    .catchall {:try_start_a1 .. :try_end_a2} :catchall_a0

    throw p0
.end method


# virtual methods
.method public onRenderThreadStoped(Z)V
    .registers 2

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/oplus/fancyicon/content/res/loader/LifecycleResourceManager;->checkCache()V

    :cond_5
    invoke-super {p0, p1}, Lcom/oplus/fancyicon/content/res/loader/ResourceManager;->onRenderThreadStoped(Z)V

    return-void
.end method

.method public pause()V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/fancyicon/content/res/loader/LifecycleResourceManager;->checkCache()V

    return-void
.end method
