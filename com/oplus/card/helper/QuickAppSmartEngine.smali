.class public final Lcom/oplus/card/helper/QuickAppSmartEngine;
.super Lcom/oplus/card/helper/SmartEngine;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/card/helper/QuickAppSmartEngine$Companion;
    }
.end annotation


# static fields
.field public static final CODE_RENDER_ERROR:I = -0x1

.field public static final Companion:Lcom/oplus/card/helper/QuickAppSmartEngine$Companion;

.field public static final KEY_BADGE_INFOS:Ljava/lang/String; = "badgeInfos"

.field public static final KEY_CONTEXT_PARAM:Ljava/lang/String; = "contextParam"

.field public static final KEY_DATA:Ljava/lang/String; = "data"

.field public static final KEY_EVENT:Ljava/lang/String; = "event"

.field public static final KEY_SCREEN_APPS:Ljava/lang/String; = "screenApps"

.field public static final KEY_UPDATE_CARD:Ljava/lang/String; = "UPDATE_CARD"

.field public static final LAUNCHER_BADGE_CHANGE:Ljava/lang/String; = "LAUNCHER_BADGE_CHANGE"

.field public static final LAUNCHER_SCREEN_CHANGE:Ljava/lang/String; = "LAUNCHER_SCREEN_CHANGE"

.field public static final QUERY_LAUNCHER_DATA:Ljava/lang/String; = "QUERY_LAUNCHER_DATA"

.field private static final SENDMESSAGE_CODE:I = 0x0

.field public static final VALUE_REMOVE_CARD:Ljava/lang/String; = "RM_CARD"

.field private static final sCardProxyCount:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private final listener:Lorg/hapjs/card/api/IRenderListener;

.field private mCard:Lorg/hapjs/card/api/Card;

.field private final mCardCached:Z

.field private final mCardCallback:Lorg/hapjs/card/api/CardCallback;

.field private mHasLoadUri:Z

.field private mVisibleRect:Landroid/graphics/Rect;

.field private final seedParams:Lcom/android/launcher3/card/seed/SeedParams;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/card/helper/QuickAppSmartEngine$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/card/helper/QuickAppSmartEngine$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/card/helper/QuickAppSmartEngine;->Companion:Lcom/oplus/card/helper/QuickAppSmartEngine$Companion;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/oplus/card/helper/QuickAppSmartEngine;->sCardProxyCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/card/LauncherCardInfo;Lcom/android/launcher3/card/seed/SeedParams;Lkotlin/jvm/functions/Function2;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/launcher3/card/LauncherCardInfo;",
            "Lcom/android/launcher3/card/seed/SeedParams;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/view/View;",
            "-",
            "Ljava/lang/Integer;",
            "Ly2/p;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cardInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, p4}, Lcom/oplus/card/helper/SmartEngine;-><init>(Lcom/android/launcher3/card/LauncherCardInfo;Lkotlin/jvm/functions/Function2;)V

    iput-object p1, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->seedParams:Lcom/android/launcher3/card/seed/SeedParams;

    const-string p1, "LauncherQuickAppSmartEngine"

    iput-object p1, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->TAG:Ljava/lang/String;

    sget-object p1, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->INSTANCE:Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->tryGetCacheInstantCard(Lcom/android/launcher3/card/LauncherCardInfo;)Lorg/hapjs/card/api/Card;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->mCard:Lorg/hapjs/card/api/Card;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->mVisibleRect:Landroid/graphics/Rect;

    iget-object p1, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->mCard:Lorg/hapjs/card/api/Card;

    if-eqz p1, :cond_2a

    const/4 p1, 0x1

    goto :goto_2b

    :cond_2a
    const/4 p1, 0x0

    :goto_2b
    iput-boolean p1, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->mCardCached:Z

    new-instance p1, Lcom/oplus/card/helper/QuickAppSmartEngine$listener$1;

    invoke-direct {p1, p0, p4}, Lcom/oplus/card/helper/QuickAppSmartEngine$listener$1;-><init>(Lcom/oplus/card/helper/QuickAppSmartEngine;Lkotlin/jvm/functions/Function2;)V

    iput-object p1, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->listener:Lorg/hapjs/card/api/IRenderListener;

    new-instance p1, Lcom/android/launcher/x;

    invoke-direct {p1, p0, p4}, Lcom/android/launcher/x;-><init>(Lcom/oplus/card/helper/QuickAppSmartEngine;Lkotlin/jvm/functions/Function2;)V

    iput-object p1, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->mCardCallback:Lorg/hapjs/card/api/CardCallback;

    return-void
.end method

.method public static synthetic a(Lcom/oplus/card/helper/QuickAppSmartEngine;Lkotlin/jvm/functions/Function2;ILjava/lang/String;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/oplus/card/helper/QuickAppSmartEngine;->mCardCallback$lambda-3(Lcom/oplus/card/helper/QuickAppSmartEngine;Lkotlin/jvm/functions/Function2;ILjava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getTAG$p(Lcom/oplus/card/helper/QuickAppSmartEngine;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private static final mCardCallback$lambda-3(Lcom/oplus/card/helper/QuickAppSmartEngine;Lkotlin/jvm/functions/Function2;ILjava/lang/String;)V
    .registers 8

    const-string v0, "data"

    const-class v1, Lcom/google/gson/JsonObject;

    const-string v2, "this$0"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$callback"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_e
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p3, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonObject;

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonObject;

    const-string v2, "event"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RM_CARD"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_57

    iget-object p3, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->TAG:Ljava/lang/String;

    const-string v0, "callbackMsg, key = RM_CARD, code = "

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x0

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p3, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a1

    :cond_57
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "QUERY_LAUNCHER_DATA"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7f

    iget-object p1, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->TAG:Ljava/lang/String;

    const-string v1, "callbackMsg, key = QUERY_LAUNCHER_DATA, code = "

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/oplus/card/helper/QuickAppCardMessageHelper;->INSTANCE:Lcom/oplus/card/helper/QuickAppCardMessageHelper;

    invoke-virtual {p0}, Lcom/oplus/card/helper/QuickAppSmartEngine;->getMCard()Lorg/hapjs/card/api/Card;

    move-result-object v1

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1, p2, p3}, Lcom/oplus/card/helper/QuickAppCardMessageHelper;->processMessageAndReply(Lorg/hapjs/card/api/Card;ILjava/lang/String;)V

    goto :goto_a1

    :cond_7f
    iget-object p1, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "callbackMsg, it.asString="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", code = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a1
    sget-object p1, Ly2/p;->a:Ly2/p;
    :try_end_a3
    .catchall {:try_start_e .. :try_end_a3} :catchall_a4

    goto :goto_a9

    :catchall_a4
    move-exception p1

    invoke-static {p1}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_a9
    invoke-static {p1}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_b0

    goto :goto_ce

    :cond_b0
    iget-object p0, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MessageCallback json error. code = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_ce
    return-void
.end method

.method private final parseLoadUri(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const-string v0, ""

    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "child"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_3a

    move-object v3, v0

    :goto_15
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v5, "id"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "uri"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_34

    const-string v3, "text"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "`object`.optString(\"text\")"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_34} :catch_3b

    :cond_34
    if-lt v4, v2, :cond_38

    move-object v0, v3

    goto :goto_3a

    :cond_38
    move v1, v4

    goto :goto_15

    :cond_3a
    :goto_3a
    return-object v0

    :catch_3b
    move-exception p1

    iget-object p0, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseLoadUri"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ".message"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public createCardName(Lcom/android/launcher3/card/LauncherCardInfo;)Ljava/lang/String;
    .registers 2

    invoke-super {p0, p1}, Lcom/oplus/card/helper/SmartEngine;->createCardName(Lcom/android/launcher3/card/LauncherCardInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getCardCache()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/card/helper/QuickAppSmartEngine;->getCardCache()Lorg/hapjs/card/api/Card;

    move-result-object p0

    return-object p0
.end method

.method public getCardCache()Lorg/hapjs/card/api/Card;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->mCard:Lorg/hapjs/card/api/Card;

    return-object p0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final getListener()Lorg/hapjs/card/api/IRenderListener;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->listener:Lorg/hapjs/card/api/IRenderListener;

    return-object p0
.end method

.method public final getMCard()Lorg/hapjs/card/api/Card;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->mCard:Lorg/hapjs/card/api/Card;

    return-object p0
.end method

.method public final getMCardCached()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->mCardCached:Z

    return p0
.end method

.method public final getMHasLoadUri()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->mHasLoadUri:Z

    return p0
.end method

.method public final getMVisibleRect()Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->mVisibleRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final getSeedParams()Lcom/android/launcher3/card/seed/SeedParams;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->seedParams:Lcom/android/launcher3/card/seed/SeedParams;

    return-object p0
.end method

.method public final init()V
    .registers 5

    iget-object v0, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/oplus/card/helper/SmartEngine;->getCardName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " + init, mCardCached = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->mCardCached:Z

    invoke-static {v1, v2, v0}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->mCard:Lorg/hapjs/card/api/Card;

    if-nez v0, :cond_66

    iget-object v0, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->context:Landroid/content/Context;

    if-eqz v0, :cond_66

    invoke-static {}, Lcom/nearme/instant/xcard/CardClient;->getInstance()Lcom/nearme/instant/xcard/CardClient;

    move-result-object v0

    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v1

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->context:Landroid/content/Context;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_38

    :cond_36
    iget-object v1, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->context:Landroid/content/Context;

    :goto_38
    invoke-virtual {v0, v1}, Lcom/nearme/instant/xcard/CardClient;->createCard(Landroid/content/Context;)Lorg/hapjs/card/api/Card;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->mCard:Lorg/hapjs/card/api/Card;

    sget-object v0, Lcom/oplus/card/helper/QuickAppSmartEngine;->sCardProxyCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iget-object v1, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->mCard:Lorg/hapjs/card/api/Card;

    invoke-static {v1}, Lcom/android/launcher3/card/utils/CardCacheCleaner;->register(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/oplus/card/helper/SmartEngine;->getCardName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " createCard "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_66
    iget-object v0, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->mCard:Lorg/hapjs/card/api/Card;

    if-nez v0, :cond_6b

    goto :goto_70

    :cond_6b
    iget-object v1, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->listener:Lorg/hapjs/card/api/IRenderListener;

    invoke-interface {v0, v1}, Lorg/hapjs/card/api/Card;->setRenderListener(Lcom/nearme/instant/xcard/IRenderListener;)V

    :goto_70
    iget-object p0, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->mCard:Lorg/hapjs/card/api/Card;

    if-nez p0, :cond_75

    goto :goto_79

    :cond_75
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lorg/hapjs/card/api/Card;->changeVisibilityManually(Z)V

    :goto_79
    return-void
.end method

.method public isCardCached()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->mCardCached:Z

    return p0
.end method

.method public isErrorCode(I)Z
    .registers 2

    const/4 p0, -0x1

    if-ne p1, p0, :cond_5

    const/4 p0, 0x1

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method public final needSameScreenData()Z
    .registers 3

    iget-object p0, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->mCard:Lorg/hapjs/card/api/Card;

    const/4 v0, 0x0

    if-nez p0, :cond_7

    move-object p0, v0

    goto :goto_d

    :cond_7
    const-string v1, "needSameScreenData"

    invoke-interface {p0, v1}, Lorg/hapjs/card/api/Card;->getCustomConfig(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    :goto_d
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_14

    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    :cond_14
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public obtainView(Landroid/view/View;Lcom/oplus/card/manager/domain/model/UIData;)V
    .registers 8

    const-string v0, "uiData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->context:Landroid/content/Context;

    if-nez v0, :cond_11

    iget-object p0, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->TAG:Ljava/lang/String;

    const-string p1, "context is null, obtainView failed in QuickAppSmartEngine"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_11
    sget-boolean v1, Lcom/oplus/card/helper/SmartEngineHelper;->mHasInitQuickApp:Z

    if-nez v1, :cond_2c

    sget-object v1, Lcom/oplus/card/helper/SmartEngineHelper;->INSTANCE:Lcom/oplus/card/helper/SmartEngineHelper;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "context!!.applicationContext"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/oplus/card/helper/QuickAppSmartEngine$obtainView$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/oplus/card/helper/QuickAppSmartEngine$obtainView$1;-><init>(Lcom/oplus/card/helper/QuickAppSmartEngine;Landroid/view/View;Lcom/oplus/card/manager/domain/model/UIData;)V

    invoke-virtual {v1, v0, v2}, Lcom/oplus/card/helper/SmartEngineHelper;->initQuickCardSmartEngine(Landroid/content/Context;Lcom/nearme/instant/xcard/ICardEngineCallback;)V

    return-void

    :cond_2c
    iget-boolean p1, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->mHasLoadUri:Z

    if-nez p1, :cond_1e6

    invoke-virtual {p0}, Lcom/oplus/card/helper/QuickAppSmartEngine;->init()V

    iget-boolean p1, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->mCardCached:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_4f

    iget-object p1, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/oplus/card/helper/SmartEngine;->getCardName()Ljava/lang/String;

    move-result-object p2

    const-string v1, " obtainView by UIData, mCardCached. Skip load uri, onRenderSuccess directly."

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->listener:Lorg/hapjs/card/api/IRenderListener;

    invoke-interface {p1}, Lorg/hapjs/card/api/IRenderListener;->onRenderSuccess()V

    iput-boolean v0, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->mHasLoadUri:Z

    return-void

    :cond_4f
    invoke-virtual {p2}, Lcom/oplus/card/manager/domain/model/UIData;->getData()[B

    move-result-object p1

    new-instance p2, Ljava/lang/String;

    sget-object v1, Lp3/a;->a:Ljava/nio/charset/Charset;

    invoke-direct {p2, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {p0, p2}, Lcom/oplus/card/helper/QuickAppSmartEngine;->parseLoadUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/android/launcher/AppAdviceCheck;->INSTANCE:Lcom/android/launcher/AppAdviceCheck;

    invoke-virtual {p0}, Lcom/oplus/card/helper/SmartEngine;->getCardInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-virtual {p2, v1}, Lcom/android/launcher/AppAdviceCheck;->isAppAdviceCard(I)Z

    move-result p2

    if-eqz p2, :cond_94

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "&cardType="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/card/helper/SmartEngine;->getCardInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&cardId="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/card/helper/SmartEngine;->getCardInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_94
    iget-object p2, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->TAG:Ljava/lang/String;

    const-string v1, "QuickAppSmartEngine uri = "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_9f
    invoke-virtual {p0}, Lcom/oplus/card/helper/QuickAppSmartEngine;->getSeedParams()Lcom/android/launcher3/card/seed/SeedParams;

    move-result-object p2

    const/4 v1, 0x0

    if-nez p2, :cond_a8

    move-object p2, v1

    goto :goto_ac

    :cond_a8
    invoke-virtual {p2}, Lcom/android/launcher3/card/seed/SeedParams;->getInitData()Ljava/lang/String;

    move-result-object p2

    :goto_ac
    if-eqz p2, :cond_105

    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0}, Lcom/oplus/card/helper/QuickAppSmartEngine;->getSeedParams()Lcom/android/launcher3/card/seed/SeedParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/card/seed/SeedParams;->getInitData()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/google/gson/JsonObject;

    invoke-virtual {p2, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/gson/JsonObject;

    const-string v2, "data"

    invoke-virtual {p2, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2
    :try_end_c9
    .catchall {:try_start_9f .. :try_end_c9} :catchall_108

    if-nez p2, :cond_cc

    goto :goto_105

    :cond_cc
    const-string v2, "?"

    const/4 v3, 0x0

    if-nez p1, :cond_d2

    goto :goto_da

    :cond_d2
    const/4 v4, 0x2

    :try_start_d3
    invoke-static {p1, v2, v3, v4}, Lp3/k;->o(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v4

    if-ne v4, v0, :cond_da

    move v3, v0

    :cond_da
    :goto_da
    if-eqz v3, :cond_de

    const-string v2, "&"

    :cond_de
    if-nez p1, :cond_e2

    :goto_e0
    move-object p1, v1

    goto :goto_105

    :cond_e2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "from=launcher&contextParam="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f9

    goto :goto_e0

    :cond_f9
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_105
    :goto_105
    sget-object p2, Ly2/p;->a:Ly2/p;
    :try_end_107
    .catchall {:try_start_d3 .. :try_end_107} :catchall_108

    goto :goto_10d

    :catchall_108
    move-exception p2

    invoke-static {p2}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    :goto_10d
    invoke-static {p2}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_114

    goto :goto_11f

    :cond_114
    iget-object v1, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->TAG:Ljava/lang/String;

    const-string v2, "seedParams append error. "

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11f
    iget-object p2, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/oplus/card/helper/SmartEngine;->getCardName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  +obtainView  load "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :try_start_141
    const-string v1, "cardSession"

    invoke-virtual {p0}, Lcom/oplus/card/helper/SmartEngine;->getCardName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_168

    const-string v1, "containerWidth"

    iget-object v2, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "containerHeight"

    iget-object v2, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_168
    sget-object v1, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    invoke-virtual {v1}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oplus/card/helper/SmartEngine;->getCardInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-virtual {v1, v2}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfo(I)Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object v1

    if-nez v1, :cond_17b

    goto :goto_184

    :cond_17b
    const-string v2, "cardDesignSize"

    invoke-virtual {v1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSize()I

    move-result v1

    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_184
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_1ce

    iget-object v1, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "obtainView:root:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mVisibleRect:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1aa
    .catch Lorg/json/JSONException; {:try_start_141 .. :try_end_1aa} :catch_1ab

    goto :goto_1ce

    :catch_1ab
    move-exception v1

    iget-object v2, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/oplus/card/helper/SmartEngine;->getCardName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  + obtainView"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".message"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1ce
    :goto_1ce
    iget-object v1, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->mCard:Lorg/hapjs/card/api/Card;

    if-nez v1, :cond_1d3

    goto :goto_1da

    :cond_1d3
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Lorg/hapjs/card/api/Card;->load(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1da
    iget-object p1, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->mCard:Lorg/hapjs/card/api/Card;

    if-nez p1, :cond_1df

    goto :goto_1e4

    :cond_1df
    iget-object p2, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->mCardCallback:Lorg/hapjs/card/api/CardCallback;

    invoke-interface {p1, p2}, Lcom/nearme/instant/xcard/InstantCard;->registerMessageCallback(Lorg/hapjs/card/api/CardCallback;)V

    :goto_1e4
    iput-boolean v0, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->mHasLoadUri:Z

    :cond_1e6
    return-void
.end method

.method public obtainView([B)V
    .registers 4

    iget-boolean p1, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->mCardCached:Z

    if-eqz p1, :cond_2e

    iget-boolean p1, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->mHasLoadUri:Z

    if-nez p1, :cond_2e

    invoke-virtual {p0}, Lcom/oplus/card/helper/QuickAppSmartEngine;->init()V

    iget-object p1, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->TAG:Ljava/lang/String;

    const/16 v0, 0x20

    invoke-static {v0}, Landroidx/emoji2/text/flatbuffer/a;->a(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/card/helper/SmartEngine;->getCardName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " obtainView by config, mCardCached. onRenderSuccess directly."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->listener:Lorg/hapjs/card/api/IRenderListener;

    invoke-interface {p1}, Lorg/hapjs/card/api/IRenderListener;->onRenderSuccess()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->mHasLoadUri:Z

    :cond_2e
    return-void
.end method

.method public onInVisible(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/oplus/card/helper/SmartEngine;->getCardName()Ljava/lang/String;

    move-result-object v0

    const-string v1, " + onInVisible"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/card/helper/SmartEngine;->getOnVisible()Z

    move-result p1

    if-eqz p1, :cond_24

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/card/helper/SmartEngine;->setOnVisible(Z)V

    iget-object p1, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->mCard:Lorg/hapjs/card/api/Card;

    if-nez p1, :cond_1e

    goto :goto_24

    :cond_1e
    invoke-interface {p1}, Lorg/hapjs/card/api/Card;->onHide()V

    invoke-virtual {p0}, Lcom/oplus/card/helper/SmartEngine;->endRecordExposeTime()V

    :cond_24
    :goto_24
    return-void
.end method

.method public onVisible(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/oplus/card/helper/SmartEngine;->getCardName()Ljava/lang/String;

    move-result-object v0

    const-string v1, " + onVisible"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/card/helper/SmartEngine;->getOnVisible()Z

    move-result p1

    if-nez p1, :cond_24

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oplus/card/helper/SmartEngine;->setOnVisible(Z)V

    iget-object p1, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->mCard:Lorg/hapjs/card/api/Card;

    if-nez p1, :cond_1e

    goto :goto_24

    :cond_1e
    invoke-interface {p1}, Lorg/hapjs/card/api/Card;->onShow()V

    invoke-virtual {p0}, Lcom/oplus/card/helper/SmartEngine;->beginRecordExposeTime()V

    :cond_24
    :goto_24
    return-void
.end method

.method public releaseView(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/oplus/card/helper/SmartEngine;->getCardName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " + releaseView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->mCard:Lorg/hapjs/card/api/Card;

    if-nez p1, :cond_22

    goto :goto_59

    :cond_22
    invoke-static {p1}, Lcom/android/launcher3/card/utils/CardCacheCleaner;->unregister(Ljava/lang/Object;)V

    invoke-interface {p1}, Lorg/hapjs/card/api/Card;->isDestroyed()Z

    move-result v0

    invoke-interface {p1}, Lcom/nearme/instant/xcard/InstantCard;->unregisterMessageCallback()V

    invoke-interface {p1}, Lorg/hapjs/card/api/Card;->destroy()V

    sget-object p1, Lcom/oplus/card/helper/QuickAppSmartEngine;->sCardProxyCount:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_38

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    goto :goto_3c

    :cond_38
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    :goto_3c
    iget-object v0, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/oplus/card/helper/SmartEngine;->getCardName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " destroy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_59
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->mCard:Lorg/hapjs/card/api/Card;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->mHasLoadUri:Z

    iput-object p1, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->context:Landroid/content/Context;

    return-void
.end method

.method public final sendMessage(Ljava/lang/String;)V
    .registers 3

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->mCard:Lorg/hapjs/card/api/Card;

    if-nez p0, :cond_a

    goto :goto_e

    :cond_a
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/hapjs/card/api/Card;->sendMessage(ILjava/lang/String;)V

    :goto_e
    return-void
.end method

.method public setCardVisibleRect(Landroid/graphics/Rect;)V
    .registers 3

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final setContext(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->context:Landroid/content/Context;

    return-void
.end method

.method public final setMCard(Lorg/hapjs/card/api/Card;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->mCard:Lorg/hapjs/card/api/Card;

    return-void
.end method

.method public final setMHasLoadUri(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->mHasLoadUri:Z

    return-void
.end method

.method public final setMVisibleRect(Landroid/graphics/Rect;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->mVisibleRect:Landroid/graphics/Rect;

    return-void
.end method

.method public updateView(Ljava/lang/String;I)V
    .registers 6

    const-string v0, "newData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/oplus/card/helper/SmartEngine;->getCardName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " + updateView, newData.size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, p2, v0}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/4 v0, 0x2

    if-ne p2, v0, :cond_48

    iget-object p0, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;->mCard:Lorg/hapjs/card/api/Card;

    if-nez p0, :cond_2f

    goto :goto_48

    :cond_2f
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "event"

    const-string v1, "UPDATE_CARD"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "contextParam"

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p1, 0x0

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/nearme/instant/xcard/InstantCard;->replyMessage(ILjava/lang/String;)V

    :cond_48
    :goto_48
    return-void
.end method
