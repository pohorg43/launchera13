.class public final Lcom/android/launcher3/card/LauncherCardAppFilter;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/card/LauncherCardAppFilter;

.field private static final KEY_CARD_ID:Ljava/lang/String; = "cardId"

.field private static final KEY_CARD_TYPE:Ljava/lang/String; = "cardType"

.field private static final MIN_REFRESH_INTERVAL:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "LauncherCardAppFilter"

.field private static final notifyRunnable:Ljava/lang/Runnable;

.field private static sLastRefresh:J


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/card/LauncherCardAppFilter;

    invoke-direct {v0}, Lcom/android/launcher3/card/LauncherCardAppFilter;-><init>()V

    sput-object v0, Lcom/android/launcher3/card/LauncherCardAppFilter;->INSTANCE:Lcom/android/launcher3/card/LauncherCardAppFilter;

    sget-object v0, Lcom/android/common/util/f0;->c:Lcom/android/common/util/f0;

    sput-object v0, Lcom/android/launcher3/card/LauncherCardAppFilter;->notifyRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .registers 0

    invoke-static {}, Lcom/android/launcher3/card/LauncherCardAppFilter;->notifyRunnable$lambda-1()V

    return-void
.end method

.method private final getLauncher()Lcom/android/launcher/Launcher;
    .registers 3

    sget-object p0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {p0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/Launcher;

    if-nez p0, :cond_1b

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, " getLauncher: launcher is null,caller: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherCardAppFilter"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    return-object p0
.end method

.method private final getScreenId(Ljava/lang/String;)I
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_d

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_b

    goto :goto_d

    :cond_b
    move v2, v0

    goto :goto_e

    :cond_d
    :goto_d
    move v2, v1

    :goto_e
    const/4 v3, -0x1

    if-eqz v2, :cond_13

    move v2, v3

    goto :goto_1e

    :cond_13
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "cardId"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    :goto_1e
    if-eqz p1, :cond_26

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_27

    :cond_26
    move v0, v1

    :cond_27
    if-eqz v0, :cond_2b

    move p1, v3

    goto :goto_36

    :cond_2b
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "cardType"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    :goto_36
    if-lez v2, :cond_42

    if-lez p1, :cond_42

    invoke-direct {p0}, Lcom/android/launcher3/card/LauncherCardAppFilter;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p0

    invoke-static {p0, p1, v2}, Lcom/android/launcher3/card/LauncherCardUtil;->getScreenId(Lcom/android/launcher3/Launcher;II)I

    move-result v3

    :cond_42
    const-string p0, "getScreenId cardId:"

    const-string v0, ", cardType:"

    const-string v1, ", screen:"

    invoke-static {p0, v2, v0, p1, v1}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LauncherCardAppFilter"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method private static final notifyRunnable$lambda-1()V
    .registers 10

    sget-object v0, Lcom/android/launcher3/card/LauncherCardAppFilter;->INSTANCE:Lcom/android/launcher3/card/LauncherCardAppFilter;

    invoke-direct {v0}, Lcom/android/launcher3/card/LauncherCardAppFilter;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    move-object v0, v1

    goto :goto_f

    :cond_b
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    :goto_f
    if-nez v0, :cond_12

    return-void

    :cond_12
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "event"

    const-string v4, "LAUNCHER_SCREEN_CHANGE"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_80

    :goto_25
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v7, v6, Lcom/android/launcher3/CellLayout;

    if-eqz v7, :cond_32

    check-cast v6, Lcom/android/launcher3/CellLayout;

    goto :goto_33

    :cond_32
    move-object v6, v1

    :goto_33
    if-nez v6, :cond_36

    goto :goto_7b

    :cond_36
    sget-object v7, Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;->CARD:Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/CellLayout;->getAreaWidgets(Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;)Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_3f

    goto :goto_7b

    :cond_3f
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_43
    :goto_43
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/card/LauncherCardView;

    invoke-interface {v7}, Lcom/oplus/card/manager/domain/ICardView;->needSameScreenData()Z

    move-result v8

    if-eqz v8, :cond_43

    const-string v8, "getAllAppSuggestCard card:"

    invoke-static {v8}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/launcher3/card/LauncherCardView;->logCardInfo()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", child:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "LauncherCardAppFilter"

    invoke-static {v9, v8}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/oplus/card/manager/domain/ICardView;->sendMessage(Ljava/lang/String;)V

    goto :goto_43

    :cond_7b
    :goto_7b
    if-lt v5, v4, :cond_7e

    goto :goto_80

    :cond_7e
    move v3, v5

    goto :goto_25

    :cond_80
    :goto_80
    return-void
.end method

.method private final queryScreenData(ZI)Lorg/json/JSONArray;
    .registers 19

    move/from16 v0, p1

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/card/LauncherCardAppFilter;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_b

    :goto_9
    move-object v3, v2

    goto :goto_1c

    :cond_b
    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-nez v3, :cond_12

    goto :goto_9

    :cond_12
    sget-object v4, Lcom/android/launcher/OplusFavoritesProvider;->AUTHORITY_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    :goto_1c
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const/4 v6, 0x1

    if-nez v3, :cond_26

    :cond_24
    const/4 v7, 0x0

    goto :goto_2d

    :cond_26
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-ne v7, v6, :cond_24

    move v7, v6

    :goto_2d
    const-string v8, "LauncherCardAppFilter"

    if-eqz v7, :cond_ed

    invoke-static {v1}, Lcom/android/launcher3/folder/OplusFolderUtil;->getScreenInfoOfFolder(Lcom/android/launcher/Launcher;)Ljava/util/Map;

    move-result-object v7

    new-instance v9, Ljava/util/LinkedHashSet;

    invoke-direct {v9}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    if-nez v1, :cond_48

    goto :goto_55

    :cond_48
    move/from16 v10, p2

    invoke-virtual {v1, v10}, Lcom/android/launcher3/OplusWorkspace;->getScreenPair(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "queryScreenData allScreens:"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", skipScreens:"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", folder:"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p0

    :cond_7c
    invoke-direct {v1, v3, v0, v9, v7}, Lcom/android/launcher3/card/LauncherCardAppFilter;->shouldSkip(Landroid/database/Cursor;ZLjava/util/Set;Ljava/util/Map;)Z

    move-result v10

    if-eqz v10, :cond_83

    goto :goto_e7

    :cond_83
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v3}, Landroid/database/Cursor;->getColumnCount()I

    move-result v11

    if-lez v11, :cond_e4

    const/4 v12, 0x0

    :goto_8f
    add-int/lit8 v13, v12, 0x1

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getType(I)I

    move-result v14

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v15

    if-eqz v14, :cond_dc

    if-eq v14, v6, :cond_d4

    const/4 v5, 0x2

    if-eq v14, v5, :cond_c8

    const/4 v5, 0x3

    if-eq v14, v5, :cond_c0

    const/4 v5, 0x4

    if-eq v14, v5, :cond_b8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v12, "queryScreenData unknown type:"

    invoke-static {v12, v5}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v15, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_df

    :cond_b8
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-virtual {v10, v15, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_df

    :cond_c0
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v15, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_df

    :cond_c8
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getFloat(I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v10, v15, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_df

    :cond_d4
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v10, v15, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_df

    :cond_dc
    invoke-virtual {v10, v15, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_df
    if-lt v13, v11, :cond_e2

    goto :goto_e4

    :cond_e2
    move v12, v13

    goto :goto_8f

    :cond_e4
    :goto_e4
    invoke-virtual {v4, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_e7
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_7c

    :cond_ed
    invoke-static {v3}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "queryScreenData jsonArray:"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method public static synthetic queryScreenData$default(Lcom/android/launcher3/card/LauncherCardAppFilter;ZIILjava/lang/Object;)Lorg/json/JSONArray;
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, -0x1

    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/card/LauncherCardAppFilter;->queryScreenData(ZI)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method private final shouldSkip(Landroid/database/Cursor;ZLjava/util/Set;Ljava/util/Map;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Z",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p2, :cond_4

    return p0

    :cond_4
    const-string p2, "container"

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    const/4 v0, 0x1

    const/16 v1, -0x64

    if-ne p2, v1, :cond_29

    const-string/jumbo v2, "screen"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    return v0

    :cond_29
    if-eq p2, v1, :cond_48

    const/16 p1, -0x65

    if-eq p2, p1, :cond_48

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_48

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p3, p1}, Lz2/r;->x(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_48

    return v0

    :cond_48
    return p0
.end method


# virtual methods
.method public final notifyScreenDataChange()V
    .registers 5

    sget-object p0, Lcom/oplus/util/OplusExecutors;->UTILS_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/card/LauncherCardAppFilter;->notifyRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    :cond_f
    const-string v0, "LauncherCardAppFilter"

    const-string/jumbo v2, "notifyScreenDataChange"

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/launcher3/util/LooperExecutor;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final queryScreenData(ILjava/lang/String;)Lorg/json/JSONArray;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "replyScreenData code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", data:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LauncherCardAppFilter"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_2c

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2a

    goto :goto_2c

    :cond_2a
    move v1, v0

    goto :goto_2d

    :cond_2c
    :goto_2c
    move v1, p1

    :goto_2d
    if-eqz v1, :cond_36

    const/4 p2, 0x2

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, p2, v1}, Lcom/android/launcher3/card/LauncherCardAppFilter;->queryScreenData$default(Lcom/android/launcher3/card/LauncherCardAppFilter;ZIILjava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p0

    goto :goto_3e

    :cond_36
    invoke-direct {p0, p2}, Lcom/android/launcher3/card/LauncherCardAppFilter;->getScreenId(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/card/LauncherCardAppFilter;->queryScreenData(ZI)Lorg/json/JSONArray;

    move-result-object p0

    :goto_3e
    return-object p0
.end method
