.class public final Lcom/android/common/util/TemporaryCacheHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DEFAULT_DELAY:J = 0x1f40L

.field public static final INSTANCE:Lcom/android/common/util/TemporaryCacheHelper;

.field private static final TAG:Ljava/lang/String; = "TemporaryCacheHelper"

.field private static cacheStarted:Z

.field private static final stopCache:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/common/util/TemporaryCacheHelper;

    invoke-direct {v0}, Lcom/android/common/util/TemporaryCacheHelper;-><init>()V

    sput-object v0, Lcom/android/common/util/TemporaryCacheHelper;->INSTANCE:Lcom/android/common/util/TemporaryCacheHelper;

    sget-object v0, Lcom/android/common/util/j0;->b:Lcom/android/common/util/j0;

    sput-object v0, Lcom/android/common/util/TemporaryCacheHelper;->stopCache:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .registers 0

    invoke-static {}, Lcom/android/common/util/TemporaryCacheHelper;->stopCache$lambda-0()V

    return-void
.end method

.method private static final stopCache$lambda-0()V
    .registers 1

    sget-object v0, Lcom/android/common/util/TemporaryCacheHelper;->INSTANCE:Lcom/android/common/util/TemporaryCacheHelper;

    invoke-virtual {v0}, Lcom/android/common/util/TemporaryCacheHelper;->stopTemporaryCache()V

    return-void
.end method


# virtual methods
.method public final startTemporaryCache()V
    .registers 5

    sget-boolean p0, Lcom/android/common/util/TemporaryCacheHelper;->cacheStarted:Z

    const-string/jumbo v0, "startTemporaryCache "

    const-string v1, "TemporaryCacheHelper"

    invoke-static {p0, v0, v1}, Lcom/android/common/config/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    sget-boolean p0, Lcom/android/common/util/TemporaryCacheHelper;->cacheStarted:Z

    if-nez p0, :cond_2b

    const/4 p0, 0x1

    sput-boolean p0, Lcom/android/common/util/TemporaryCacheHelper;->cacheStarted:Z

    invoke-static {p0}, Lcom/android/common/util/CacheUtils;->setSupportCache(Z)V

    invoke-static {p0}, Lcom/oplus/util/PackageCacheUtils;->setSupportCache(Z)V

    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/common/util/TemporaryCacheHelper;->stopCache:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v2, 0x1f40

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2b
    return-void
.end method

.method public final stopTemporaryCache()V
    .registers 3

    sget-boolean p0, Lcom/android/common/util/TemporaryCacheHelper;->cacheStarted:Z

    const-string/jumbo v0, "stopTemporaryCache "

    const-string v1, "TemporaryCacheHelper"

    invoke-static {p0, v0, v1}, Lcom/android/common/config/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    sget-boolean p0, Lcom/android/common/util/TemporaryCacheHelper;->cacheStarted:Z

    if-eqz p0, :cond_17

    const/4 p0, 0x0

    sput-boolean p0, Lcom/android/common/util/TemporaryCacheHelper;->cacheStarted:Z

    invoke-static {p0}, Lcom/android/common/util/CacheUtils;->setSupportCache(Z)V

    invoke-static {p0}, Lcom/oplus/util/PackageCacheUtils;->setSupportCache(Z)V

    :cond_17
    return-void
.end method
