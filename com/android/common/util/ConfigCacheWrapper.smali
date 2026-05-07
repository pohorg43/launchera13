.class public final Lcom/android/common/util/ConfigCacheWrapper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DEFAULT_DELAY:J = 0x3e8L

.field public static final INSTANCE:Lcom/android/common/util/ConfigCacheWrapper;

.field private static final TAG:Ljava/lang/String; = "ConfigCacheWrapper"

.field private static cacheStarted:Z

.field private static final stopCache:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/common/util/ConfigCacheWrapper;

    invoke-direct {v0}, Lcom/android/common/util/ConfigCacheWrapper;-><init>()V

    sput-object v0, Lcom/android/common/util/ConfigCacheWrapper;->INSTANCE:Lcom/android/common/util/ConfigCacheWrapper;

    sget-object v0, Lcom/android/common/util/e;->b:Lcom/android/common/util/e;

    sput-object v0, Lcom/android/common/util/ConfigCacheWrapper;->stopCache:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .registers 0

    invoke-static {}, Lcom/android/common/util/ConfigCacheWrapper;->stopCache$lambda-0()V

    return-void
.end method

.method public static final getNativeConfiguration()Landroid/content/res/Configuration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-boolean v0, Lcom/android/common/util/ConfigCacheWrapper;->cacheStarted:Z

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/common/util/CacheUtils;->getNativeConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    goto :goto_13

    :cond_9
    invoke-static {}, Lcom/oplus/compat/app/ActivityManagerNative;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const-string/jumbo v1, "{\n            ActivityMa…Configuration()\n        }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_13
    return-object v0
.end method

.method public static final startConfigCache()V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-boolean v0, Lcom/android/common/util/ConfigCacheWrapper;->cacheStarted:Z

    const-string/jumbo v1, "startConfigCache "

    const-string v2, "ConfigCacheWrapper"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/common/util/ConfigCacheWrapper;->cacheStarted:Z

    if-nez v0, :cond_28

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/common/util/ConfigCacheWrapper;->cacheStarted:Z

    invoke-static {v0}, Lcom/android/common/util/CacheUtils;->setSupportCache(Z)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/android/common/util/ConfigCacheWrapper;->stopCache:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_28
    return-void
.end method

.method private static final stopCache$lambda-0()V
    .registers 0

    invoke-static {}, Lcom/android/common/util/ConfigCacheWrapper;->stopConfigCache()V

    return-void
.end method

.method public static final stopConfigCache()V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-boolean v0, Lcom/android/common/util/ConfigCacheWrapper;->cacheStarted:Z

    const-string/jumbo v1, "stopConfigCache "

    const-string v2, "ConfigCacheWrapper"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/common/util/ConfigCacheWrapper;->cacheStarted:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/common/util/ConfigCacheWrapper;->cacheStarted:Z

    invoke-static {v0}, Lcom/android/common/util/CacheUtils;->setSupportCache(Z)V

    :cond_14
    return-void
.end method
