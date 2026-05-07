.class public final Lcom/android/launcher3/card/utils/CardCacheCleaner;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/card/utils/CardCacheCleaner;

.field private static final TAG:Ljava/lang/String; = "CardCacheCleaner"

.field private static final mCleaners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Object;",
            "Ly2/p;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/card/utils/CardCacheCleaner;

    invoke-direct {v0}, Lcom/android/launcher3/card/utils/CardCacheCleaner;-><init>()V

    sput-object v0, Lcom/android/launcher3/card/utils/CardCacheCleaner;->INSTANCE:Lcom/android/launcher3/card/utils/CardCacheCleaner;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/card/utils/CardCacheCleaner;->mCleaners:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Object;Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/card/utils/CardCacheCleaner;->clearAllCard$lambda-2$lambda-1(Ljava/lang/Object;Lcom/oplus/smartsdk/ISmartViewApi;)V

    return-void
.end method

.method public static final clearAllCard()V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/card/utils/CardCacheCleaner;->mCleaners:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "clearAllCard "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CardCacheCleaner"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "mCleaners.keys"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lz2/r;->z(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_26
    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/android/launcher3/card/utils/CardCacheCleaner;->mCleaners:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v3, v1, Lcom/oplus/seedling/sdk/seedling/ISeedling;

    if-eqz v3, :cond_49

    move-object v3, v1

    check-cast v3, Lcom/oplus/seedling/sdk/seedling/ISeedling;

    invoke-interface {v3}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->destroy()V

    const-string v3, "clearAllCard, ISeedling: "

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26

    :cond_49
    instance-of v3, v1, Lorg/hapjs/card/api/Card;

    if-eqz v3, :cond_60

    move-object v3, v1

    check-cast v3, Lorg/hapjs/card/api/Card;

    invoke-interface {v3}, Lcom/nearme/instant/xcard/InstantCard;->unregisterMessageCallback()V

    invoke-interface {v3}, Lorg/hapjs/card/api/Card;->destroy()V

    const-string v3, "clearAllCard, Card: "

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26

    :cond_60
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_26

    sget-object v3, Lcom/oplus/card/helper/SmartEngineHelper;->INSTANCE:Lcom/oplus/card/helper/SmartEngineHelper;

    invoke-virtual {v3}, Lcom/oplus/card/helper/SmartEngineHelper;->getSmartEngineManager()Lcom/oplus/smartsdk/SmartEngineManager;

    move-result-object v3

    if-nez v3, :cond_6d

    goto :goto_75

    :cond_6d
    new-instance v4, Landroidx/core/view/a;

    invoke-direct {v4, v1}, Landroidx/core/view/a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lcom/oplus/smartsdk/SmartEngineManager;->getSmartApi(Lcom/oplus/smartsdk/SmartAPICallback;)V

    :goto_75
    const-string v3, "clearAllCard, View: "

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26

    :cond_7f
    return-void
.end method

.method private static final clearAllCard$lambda-2$lambda-1(Ljava/lang/Object;Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 3

    const-string v0, "$card"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    invoke-interface {p1, p0}, Lcom/oplus/smartsdk/ISmartViewApi;->onRelease(Landroid/view/View;)V

    return-void
.end method

.method public static final dump(Ljava/io/PrintWriter;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "pw"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CardCacheCleaner, register list:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/card/utils/CardCacheCleaner;->mCleaners:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "mCleaners.keys"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lz2/r;->z(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "    card -- "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1e

    :cond_32
    return-void
.end method

.method public static final register(Ljava/lang/Object;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p0, :cond_3

    return-void

    :cond_3
    const-string/jumbo v0, "register, card: "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CardCacheCleaner"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/card/utils/CardCacheCleaner;->mCleaners:Ljava/util/WeakHashMap;

    sget-object v1, Ly2/p;->a:Ly2/p;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final unregister(Ljava/lang/Object;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p0, :cond_3

    return-void

    :cond_3
    const-string/jumbo v0, "unregister, card: "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CardCacheCleaner"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/card/utils/CardCacheCleaner;->mCleaners:Ljava/util/WeakHashMap;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
