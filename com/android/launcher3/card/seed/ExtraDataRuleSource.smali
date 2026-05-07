.class public final Lcom/android/launcher3/card/seed/ExtraDataRuleSource;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/seed/ExtraDataRuleSource$Companion;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.oplus.assistantscreen.card.groupcard.GroupCardProvider"

.field private static final AUTHORITY_URI:Landroid/net/Uri;

.field public static final Companion:Lcom/android/launcher3/card/seed/ExtraDataRuleSource$Companion;

.field private static final DUPLICATE_CARD_LIST_URI:Landroid/net/Uri;

.field private static final PATH_DUPLICATE:Ljava/lang/String; = "duplicate_card_type_lists"

.field private static final TAG:Ljava/lang/String; = "ExtraDataRuleSource"


# instance fields
.field private analogousCards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final dataRuleResObserver:Landroid/database/ContentObserver;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/card/seed/ExtraDataRuleSource$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/card/seed/ExtraDataRuleSource$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/card/seed/ExtraDataRuleSource;->Companion:Lcom/android/launcher3/card/seed/ExtraDataRuleSource$Companion;

    const-string v0, "content://com.oplus.assistantscreen.card.groupcard.GroupCardProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "parse(\"content://$AUTHORITY\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/card/seed/ExtraDataRuleSource;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "duplicate_card_type_lists"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "withAppendedPath(AUTHORITY_URI, PATH_DUPLICATE)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/card/seed/ExtraDataRuleSource;->DUPLICATE_CARD_LIST_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/seed/ExtraDataRuleSource;->context:Landroid/content/Context;

    sget-object p1, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/launcher3/card/seed/ExtraDataRuleSource$dataRuleResObserver$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/card/seed/ExtraDataRuleSource$dataRuleResObserver$1;-><init>(Lcom/android/launcher3/card/seed/ExtraDataRuleSource;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher3/card/seed/ExtraDataRuleSource;->dataRuleResObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public static synthetic a()V
    .registers 0

    invoke-static {}, Lcom/android/launcher3/card/seed/ExtraDataRuleSource;->parseContent2List$lambda-6()V

    return-void
.end method

.method private final parseContent2List(Ljava/lang/String;)V
    .registers 7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "parseContent2List: string.length = "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtraDataRuleSource"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_24

    const-string/jumbo v0, "parseContent2List, string = "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    const/4 v0, 0x1

    new-instance v2, Lcom/android/launcher3/card/seed/ExtraDataRuleSource$parseContent2List$listType$1;

    invoke-direct {v2}, Lcom/android/launcher3/card/seed/ExtraDataRuleSource$parseContent2List$listType$1;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    :try_start_2e
    new-instance v3, Lcom/google/gson/GsonBuilder;

    invoke-direct {v3}, Lcom/google/gson/GsonBuilder;-><init>()V

    new-instance v4, Lcom/android/launcher3/card/utils/StringOnlyTypeAdapter;

    invoke-direct {v4}, Lcom/android/launcher3/card/utils/StringOnlyTypeAdapter;-><init>()V

    invoke-virtual {v3, v2, v4}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/android/launcher3/card/seed/ExtraDataRuleSource;->analogousCards:Ljava/util/List;

    sget-object p0, Ly2/p;->a:Ly2/p;
    :try_end_4a
    .catchall {:try_start_2e .. :try_end_4a} :catchall_4b

    goto :goto_50

    :catchall_4b
    move-exception p0

    invoke-static {p0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_50
    invoke-static {p0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_57

    goto :goto_62

    :cond_57
    const/4 v0, 0x0

    const-string/jumbo p1, "parseContent2List, error: "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_62
    if-eqz v0, :cond_6b

    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    sget-object p1, Lcom/android/common/util/d0;->e:Lcom/android/common/util/d0;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_6b
    return-void
.end method

.method private static final parseContent2List$lambda-6()V
    .registers 2

    sget-object v0, Lcom/android/launcher3/card/seed/SeedCardClient;->INSTANCE:Lcom/android/launcher3/card/seed/SeedCardClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/card/seed/SeedCardClient;->useRecommendList(Lcom/android/launcher3/CellLayout;)V

    return-void
.end method


# virtual methods
.method public final fetchAnalogousCards()V
    .registers 10
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string v0, "ExtraDataRuleSource"

    const-string v1, "fetchAnalogousCards"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_8
    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/ExtraDataRuleSource;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_10

    :goto_e
    move-object v2, v1

    goto :goto_1d

    :cond_10
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-nez v2, :cond_17

    goto :goto_e

    :cond_17
    const-string v3, "com.oplus.assistantscreen.card.groupcard.GroupCardProvider"

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v2
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_4d

    :goto_1d
    if-nez v2, :cond_20

    goto :goto_54

    :cond_20
    :try_start_20
    sget-object v4, Lcom/android/launcher3/card/seed/ExtraDataRuleSource;->DUPLICATE_CARD_LIST_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-nez v3, :cond_2e

    goto :goto_54

    :cond_2e
    :goto_2e
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_45

    const-string v1, "duplicate_card_type_lists"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_41

    goto :goto_2e

    :cond_41
    invoke-direct {p0, v1}, Lcom/android/launcher3/card/seed/ExtraDataRuleSource;->parseContent2List(Ljava/lang/String;)V

    goto :goto_2e

    :cond_45
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_48
    .catchall {:try_start_20 .. :try_end_48} :catchall_4a

    move-object v1, v3

    goto :goto_54

    :catchall_4a
    move-exception p0

    move-object v1, v2

    goto :goto_4e

    :catchall_4d
    move-exception p0

    :goto_4e
    invoke-static {p0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, v1

    move-object v1, p0

    :goto_54
    invoke-static {v1}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_5b

    goto :goto_69

    :cond_5b
    const-string v1, "Error occur while fetchAnalogousCards, e = "

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_69

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_69
    :goto_69
    return-void
.end method

.method public final getAnalogousCards()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/card/seed/ExtraDataRuleSource;->analogousCards:Ljava/util/List;

    return-object p0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/seed/ExtraDataRuleSource;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final registerObserver$OplusLauncher_OPPOPallExportAallRelease()V
    .registers 4

    const-string v0, "ExtraDataRuleSource"

    const-string/jumbo v1, "registerObserver"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/seed/ExtraDataRuleSource;->context:Landroid/content/Context;

    if-nez v0, :cond_d

    goto :goto_1c

    :cond_d
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_1c

    :cond_14
    sget-object v1, Lcom/android/launcher3/card/seed/ExtraDataRuleSource;->DUPLICATE_CARD_LIST_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/launcher3/card/seed/ExtraDataRuleSource;->dataRuleResObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :goto_1c
    return-void
.end method

.method public final unregisterObserver$OplusLauncher_OPPOPallExportAallRelease()V
    .registers 3

    const-string v0, "ExtraDataRuleSource"

    const-string/jumbo v1, "unregisterObserver"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/seed/ExtraDataRuleSource;->context:Landroid/content/Context;

    if-nez v0, :cond_d

    goto :goto_19

    :cond_d
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_19

    :cond_14
    iget-object p0, p0, Lcom/android/launcher3/card/seed/ExtraDataRuleSource;->dataRuleResObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_19
    return-void
.end method
