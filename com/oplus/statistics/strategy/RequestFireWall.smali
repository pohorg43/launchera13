.class public Lcom/oplus/statistics/strategy/RequestFireWall;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/statistics/strategy/RequestFireWall$Builder;
    }
.end annotation


# static fields
.field private static final CACHE_CAPACITY:I = 0x64

.field private static final TAG:Ljava/lang/String; = "FireWall"


# instance fields
.field private final mLimit:I

.field private final mPeriod:J

.field private final mRequestQueueMap:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Ljava/util/Queue<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/oplus/statistics/strategy/RequestFireWall$Builder;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/oplus/statistics/strategy/RequestFireWall$Builder;->access$000(Lcom/oplus/statistics/strategy/RequestFireWall$Builder;)I

    move-result v0

    iput v0, p0, Lcom/oplus/statistics/strategy/RequestFireWall;->mLimit:I

    invoke-static {p1}, Lcom/oplus/statistics/strategy/RequestFireWall$Builder;->access$100(Lcom/oplus/statistics/strategy/RequestFireWall$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/statistics/strategy/RequestFireWall;->mPeriod:J

    new-instance p1, Landroid/util/LruCache;

    const/16 v0, 0x64

    invoke-direct {p1, v0}, Landroid/util/LruCache;-><init>(I)V

    iput-object p1, p0, Lcom/oplus/statistics/strategy/RequestFireWall;->mRequestQueueMap:Landroid/util/LruCache;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/statistics/strategy/RequestFireWall$Builder;Lcom/oplus/statistics/strategy/RequestFireWall$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/oplus/statistics/strategy/RequestFireWall;-><init>(Lcom/oplus/statistics/strategy/RequestFireWall$Builder;)V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/statistics/strategy/RequestFireWall;Ljava/lang/String;J)Ljava/lang/String;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/statistics/strategy/RequestFireWall;->lambda$handleRequest$0(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getRequestCountInWindowImpl(Ljava/util/Queue;J)J
    .registers 8
    .param p1  # Ljava/util/Queue;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/lang/Long;",
            ">;J)J"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    :goto_6
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oplus/statistics/strategy/RequestFireWall;->mPeriod:J

    sub-long v2, p2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1e

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    goto :goto_6

    :cond_1e
    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method private getRequestQueue(Ljava/lang/String;)Ljava/util/Queue;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Queue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/statistics/strategy/RequestFireWall;->mRequestQueueMap:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    if-nez v0, :cond_14

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object p0, p0, Lcom/oplus/statistics/strategy/RequestFireWall;->mRequestQueueMap:Landroid/util/LruCache;

    invoke-virtual {p0, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    return-object v0
.end method

.method private synthetic lambda$handleRequest$0(Ljava/lang/String;J)Ljava/lang/String;
    .registers 7

    const-string v0, "Chatty!!! Allow "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/statistics/strategy/RequestFireWall;->mLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oplus/statistics/strategy/RequestFireWall;->mPeriod:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms, but "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " request "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " in the recent period."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public handleRequest(Ljava/lang/String;)Z
    .registers 9

    invoke-direct {p0, p1}, Lcom/oplus/statistics/strategy/RequestFireWall;->getRequestQueue(Ljava/lang/String;)Ljava/util/Queue;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0, v1, v2}, Lcom/oplus/statistics/strategy/RequestFireWall;->getRequestCountInWindowImpl(Ljava/util/Queue;J)J

    move-result-wide v0

    iget v2, p0, Lcom/oplus/statistics/strategy/RequestFireWall;->mLimit:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1c

    const/4 v2, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v2, 0x0

    :goto_1d
    const/16 v3, 0xa

    if-nez v2, :cond_34

    int-to-long v3, v3

    rem-long v3, v0, v3

    const-wide/16 v5, 0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_34

    new-instance v3, Lcom/oplus/statistics/strategy/a;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/oplus/statistics/strategy/a;-><init>(Lcom/oplus/statistics/strategy/RequestFireWall;Ljava/lang/String;J)V

    const-string p0, "FireWall"

    invoke-static {p0, v3}, Lcom/oplus/statistics/util/LogUtil;->w(Ljava/lang/String;Lcom/oplus/statistics/util/Supplier;)V

    :cond_34
    return v2
.end method
