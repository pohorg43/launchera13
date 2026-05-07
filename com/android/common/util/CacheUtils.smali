.class public final Lcom/android/common/util/CacheUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/common/util/CacheUtils;

.field private static final TAG:Ljava/lang/String; = "CacheUtils"

.field private static defaultContext:Landroid/content/Context;

.field private static final dotDrawable$delegate:Ly2/e;

.field private static final installedProviders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/UserHandle;",
            "Ljava/util/List<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final mImmutableIndexHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/util/Locale;",
            "Landroid/icu/text/AlphabeticIndex$ImmutableIndex<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static nativeConfig:Landroid/content/res/Configuration;

.field private static numberFormat:Ljava/text/NumberFormat;

.field private static supportCache:Z

.field private static final uxIconConfig:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/res/Configuration;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static windowMetrics:Landroid/view/WindowMetrics;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/common/util/CacheUtils;

    invoke-direct {v0}, Lcom/android/common/util/CacheUtils;-><init>()V

    sput-object v0, Lcom/android/common/util/CacheUtils;->INSTANCE:Lcom/android/common/util/CacheUtils;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/common/util/CacheUtils;->uxIconConfig:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/common/util/CacheUtils;->installedProviders:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/common/util/CacheUtils;->mImmutableIndexHashMap:Ljava/util/HashMap;

    sget-object v0, Lcom/android/common/util/CacheUtils$dotDrawable$2;->INSTANCE:Lcom/android/common/util/CacheUtils$dotDrawable$2;

    invoke-static {v0}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v0

    sput-object v0, Lcom/android/common/util/CacheUtils;->dotDrawable$delegate:Ly2/e;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getDefaultContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-boolean v0, Lcom/android/common/util/CacheUtils;->supportCache:Z

    if-nez v0, :cond_9

    invoke-static {p0}, Lcom/android/common/util/DisplayDensityUtils;->getDefDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    return-object p0

    :cond_9
    sget-object v0, Lcom/android/common/util/CacheUtils;->defaultContext:Landroid/content/Context;

    const-string v1, "CacheUtils"

    if-nez v0, :cond_21

    invoke-static {p0}, Lcom/android/common/util/DisplayDensityUtils;->getDefDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/android/common/util/CacheUtils;->defaultContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result p0

    if-eqz p0, :cond_2c

    const-string p0, "cache miss getDefaultContext "

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    :cond_21
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result p0

    if-eqz p0, :cond_2c

    const-string p0, "cache hit getDefaultContext "

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    :goto_2c
    sget-object p0, Lcom/android/common/util/CacheUtils;->defaultContext:Landroid/content/Context;

    return-object p0
.end method

.method public static final getInstalledProviders(Landroid/appwidget/AppWidgetManager;Landroid/os/UserHandle;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/appwidget/AppWidgetManager;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "manager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/common/util/CacheUtils;->supportCache:Z

    if-nez v0, :cond_3c

    sget-object v0, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->getNoCreate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pm/UserCache;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1d

    goto :goto_24

    :cond_1d
    invoke-virtual {v0, p1}, Lcom/android/launcher3/pm/UserCache;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v0

    if-ne v0, v2, :cond_24

    move v1, v2

    :cond_24
    :goto_24
    if-eqz v1, :cond_2b

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForProfile(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2b
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v0

    if-eqz v0, :cond_3c

    const-string v0, "CacheUtils"

    const-string v1, "load app widget locked! "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3c
    sget-object v0, Lcom/android/common/util/CacheUtils;->installedProviders:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_3f
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_60

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForProfile(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result p0

    if-eqz p0, :cond_5c

    const-string p0, "CacheUtils"

    const-string v2, "cache miss getInstalledProvidersForProfile "

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5c
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_71

    :cond_60
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result p0

    if-eqz p0, :cond_71

    const-string p0, "CacheUtils"

    const-string v2, "cache hit getInstalledProvidersForProfile "

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_71
    .catchall {:try_start_3f .. :try_end_71} :catchall_73

    :cond_71
    :goto_71
    monitor-exit v0

    return-object v1

    :catchall_73
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final getMaximumWindowMetrics(Landroid/content/Context;)Landroid/view/WindowMetrics;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "displayContext"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    const-string v0, "displayContext.getSystem…    .maximumWindowMetrics"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
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

    sget-boolean v0, Lcom/android/common/util/CacheUtils;->supportCache:Z

    if-nez v0, :cond_e

    invoke-static {}, Lcom/oplus/compat/app/ActivityManagerNative;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const-string v1, "getConfiguration()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_e
    sget-object v0, Lcom/android/common/util/CacheUtils;->nativeConfig:Landroid/content/res/Configuration;

    const-string v1, "CacheUtils"

    if-nez v0, :cond_26

    invoke-static {}, Lcom/oplus/compat/app/ActivityManagerNative;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    sput-object v0, Lcom/android/common/util/CacheUtils;->nativeConfig:Landroid/content/res/Configuration;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v0

    if-eqz v0, :cond_31

    const-string v0, "cache miss getNativeConfiguration "

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31

    :cond_26
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v0

    if-eqz v0, :cond_31

    const-string v0, "cache hit getNativeConfiguration "

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    :goto_31
    sget-object v0, Lcom/android/common/util/CacheUtils;->nativeConfig:Landroid/content/res/Configuration;

    if-nez v0, :cond_42

    const-string/jumbo v0, "nativeConfig is null. create a new Configuration, return a default value"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    sput-object v0, Lcom/android/common/util/CacheUtils;->nativeConfig:Landroid/content/res/Configuration;

    :cond_42
    sget-object v0, Lcom/android/common/util/CacheUtils;->nativeConfig:Landroid/content/res/Configuration;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final getNumberFormat()Ljava/text/NumberFormat;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-boolean v0, Lcom/android/common/util/CacheUtils;->supportCache:Z

    if-nez v0, :cond_d

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0

    :cond_d
    sget-object v0, Lcom/android/common/util/CacheUtils;->numberFormat:Ljava/text/NumberFormat;

    const-string v1, "CacheUtils"

    if-nez v0, :cond_29

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    sput-object v0, Lcom/android/common/util/CacheUtils;->numberFormat:Ljava/text/NumberFormat;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "cache miss getNumberFormat "

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34

    :cond_29
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "cache hit getNumberFormat "

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_34
    :goto_34
    sget-object v0, Lcom/android/common/util/CacheUtils;->numberFormat:Ljava/text/NumberFormat;

    return-object v0
.end method

.method public static final getUxIconConfig(Landroid/content/res/Configuration;)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "config"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/common/util/CacheUtils;->supportCache:Z

    if-nez v0, :cond_e

    invoke-static {p0}, Lcom/oplus/compat/content/res/ConfigurationNative;->getUxIconConfig(Landroid/content/res/Configuration;)J

    move-result-wide v0

    return-wide v0

    :cond_e
    sget-object v0, Lcom/android/common/util/CacheUtils;->uxIconConfig:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_11
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_36

    invoke-static {p0}, Lcom/oplus/compat/content/res/ConfigurationNative;->getUxIconConfig(Landroid/content/res/Configuration;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v2

    if-eqz v2, :cond_32

    const-string v2, "CacheUtils"

    const-string v3, "cache miss getUxIconConfig "

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_32
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_47

    :cond_36
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v2

    if-eqz v2, :cond_47

    const-string v2, "CacheUtils"

    const-string v3, "cache hit getUxIconConfig "

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_47
    :goto_47
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1
    :try_end_4b
    .catchall {:try_start_11 .. :try_end_4b} :catchall_4d

    monitor-exit v0

    return-wide v1

    :catchall_4d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static final resetCache()V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    sput-object v0, Lcom/android/common/util/CacheUtils;->defaultContext:Landroid/content/Context;

    sput-object v0, Lcom/android/common/util/CacheUtils;->nativeConfig:Landroid/content/res/Configuration;

    sput-object v0, Lcom/android/common/util/CacheUtils;->numberFormat:Ljava/text/NumberFormat;

    sput-object v0, Lcom/android/common/util/CacheUtils;->windowMetrics:Landroid/view/WindowMetrics;

    sget-object v0, Lcom/android/common/util/CacheUtils;->uxIconConfig:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_c
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_1b

    monitor-exit v0

    sget-object v0, Lcom/android/common/util/CacheUtils;->installedProviders:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_13
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    monitor-exit v0

    return-void

    :catchall_18
    move-exception v1

    monitor-exit v0

    throw v1

    :catchall_1b
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final setSupportCache(Z)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "setSupportCache "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CacheUtils"

    invoke-static {v1, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean p0, Lcom/android/common/util/CacheUtils;->supportCache:Z

    if-nez p0, :cond_17

    invoke-static {}, Lcom/android/common/util/CacheUtils;->resetCache()V

    :cond_17
    return-void
.end method


# virtual methods
.method public final getDotDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    sget-object p0, Lcom/android/common/util/CacheUtils;->dotDrawable$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-dotDrawable>(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getImmutableIndex(Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex$ImmutableIndex;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            ")",
            "Landroid/icu/text/AlphabeticIndex$ImmutableIndex<",
            "*>;"
        }
    .end annotation

    const-string p0, "locale"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/common/util/CacheUtils;->mImmutableIndexHashMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    if-nez v0, :cond_26

    new-instance v0, Landroid/icu/text/AlphabeticIndex;

    invoke-direct {v0, p1}, Landroid/icu/text/AlphabeticIndex;-><init>(Ljava/util/Locale;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/Locale;

    const/4 v2, 0x0

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    invoke-virtual {v0}, Landroid/icu/text/AlphabeticIndex;->buildImmutableIndex()Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    return-object v0
.end method
