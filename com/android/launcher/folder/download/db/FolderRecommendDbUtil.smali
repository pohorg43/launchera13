.class public final Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil$Companion;,
        Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil$WhenMappings;
    }
.end annotation


# static fields
.field public static final COL_APP_NAME:Ljava/lang/String; = "appName"

.field public static final COL_ICON:Ljava/lang/String; = "icon"

.field public static final COL_ICONURI:Ljava/lang/String; = "iconUri"

.field public static final COL_ID:Ljava/lang/String; = "_id"

.field public static final COL_JUMPURL:Ljava/lang/String; = "jumpUrl"

.field public static final COL_LAUNCHERMODE:Ljava/lang/String; = "launchermode"

.field public static final COL_MODIFIED:Ljava/lang/String; = "modified"

.field public static final COL_PKGNAME:Ljava/lang/String; = "pkgName"

.field public static final COL_RECOMMENDID:Ljava/lang/String; = "recommendId"

.field public static final COL_REQID:Ljava/lang/String; = "reqid"

.field public static final COL_STATUS:Ljava/lang/String; = "status"

.field private static final CONTENT_URI:Landroid/net/Uri;

.field public static final CREATE_MARKETRECOMMENDINFO_TABLE_SQL:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS recommendmarketinfo (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, appName TEXT, pkgName TEXT, icon BLOB, iconUri TEXT, jumpUrl TEXT, recommendId TEXT, launchermode INTEGER DEFAULT 0, reqid TEXT, status INTEGER DEFAULT 1, modified TEXT)"

.field public static final Companion:Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil$Companion;

.field public static final RECOMMENDMARKETINFO_TABLE_NAME:Ljava/lang/String; = "recommendmarketinfo"

.field public static final URI_STRING:Ljava/lang/String; = "content://com.android.launcher.settings/recommendmarketinfo"

.field public static maxId:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private static final sInstance$delegate:Ly2/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly2/e<",
            "Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->Companion:Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil$Companion;

    const-string v0, "content://com.android.launcher.settings/recommendmarketinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->CONTENT_URI:Landroid/net/Uri;

    sget-object v0, Ly2/g;->a:Ly2/g;

    sget-object v1, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil$Companion$sInstance$2;->INSTANCE:Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil$Companion$sInstance$2;

    invoke-static {v0, v1}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->sInstance$delegate:Ly2/e;

    const/4 v0, -0x1

    sput v0, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->maxId:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "FolderRecommendDbUtil"

    iput-object v0, p0, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;Ljava/util/List;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->insertMarketInfoList$lambda-3(Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$getCONTENT_URI$cp()Landroid/net/Uri;
    .registers 1

    sget-object v0, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static final synthetic access$getSInstance$delegate$cp()Ly2/e;
    .registers 1

    sget-object v0, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->sInstance$delegate:Ly2/e;

    return-object v0
.end method

.method public static synthetic b(Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->deleteAllMarketInfo$lambda-4(Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    return-void
.end method

.method private final buildDeleteByLauncherMode()Landroid/content/ContentProviderOperation;
    .registers 3

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->getCurrentLauncherModeType()I

    move-result p0

    sget-object v0, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "launchermode = "

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p0

    const-string v0, "builder.build()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final buildInsertOperations(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-virtual {v1}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->toContentValues()Landroid/content/ContentValues;

    move-result-object v1

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "getAppContext()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->dbMaxId(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_40
    return-object v0
.end method

.method private static final deleteAllMarketInfo$lambda-4(Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .registers 5

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$success"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_b
    iget-object v0, p0, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->TAG:Ljava/lang/String;

    const-string v1, "deleteAllMarketInfo"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->TAG:Ljava/lang/String;

    const-string v2, "deleteAllMarketInfo count:"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_30} :catch_31

    goto :goto_40

    :catch_31
    move-exception v0

    const/4 v1, 0x0

    iput-boolean v1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object p0, p0, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->TAG:Ljava/lang/String;

    const-string p1, "deleteAllMarketInfo exception: "

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_40
    return-void
.end method

.method private final getOtherMode()Lcom/android/launcher/mode/LauncherMode;
    .registers 2

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object p0

    if-nez p0, :cond_c

    const/4 p0, -0x1

    goto :goto_14

    :cond_c
    sget-object v0, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    :goto_14
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1f

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1c

    const/4 p0, 0x0

    goto :goto_21

    :cond_1c
    sget-object p0, Lcom/android/launcher/mode/LauncherMode;->Standard:Lcom/android/launcher/mode/LauncherMode;

    goto :goto_21

    :cond_1f
    sget-object p0, Lcom/android/launcher/mode/LauncherMode;->Drawer:Lcom/android/launcher/mode/LauncherMode;

    :goto_21
    return-object p0
.end method

.method private static final insertMarketInfoList$lambda-3(Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;Ljava/util/List;)V
    .registers 5

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$itemInfos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->buildDeleteByLauncherMode()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->TAG:Ljava/lang/String;

    const-string v2, "insertMarketInfoList:delete current mode data"

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, v1}, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->buildInsertOperations(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "com.android.launcher.settings"

    invoke-static {p1, v1, v0}, Lcom/android/common/util/OplusLauncherDbUtils;->applyBatch(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result p1

    iget-object v0, p0, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->TAG:Ljava/lang/String;

    const-string v1, "insertMarketInfoList:success:"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_46} :catch_47

    goto :goto_57

    :catch_47
    move-exception p1

    iget-object p0, p0, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "insertMarketInfoList error: "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_57
    return-void
.end method


# virtual methods
.method public final checkAndInitMaxItemId(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4

    sget v0, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->maxId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    invoke-virtual {p0, p1}, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->initializeMaxRecommendMarketId(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result p0

    sput p0, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->maxId:I

    :cond_b
    return-void
.end method

.method public final dbCreateMarketRecommendTable(Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 6

    const-string v0, "dbCreateMarketRecommendTable e = "

    const-string v1, "db"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_a
    const-string v1, "CREATE TABLE IF NOT EXISTS recommendmarketinfo (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, appName TEXT, pkgName TEXT, icon BLOB, iconUri TEXT, jumpUrl TEXT, recommendId TEXT, launchermode INTEGER DEFAULT 0, reqid TEXT, status INTEGER DEFAULT 1, modified TEXT)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->TAG:Ljava/lang/String;

    const-string v2, "dbCreateMarketRecommendTable, sql =  CREATE TABLE IF NOT EXISTS recommendmarketinfo (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, appName TEXT, pkgName TEXT, icon BLOB, iconUri TEXT, jumpUrl TEXT, recommendId TEXT, launchermode INTEGER DEFAULT 0, reqid TEXT, status INTEGER DEFAULT 1, modified TEXT)"

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_1f} :catch_31
    .catchall {:try_start_a .. :try_end_1f} :catchall_2f

    const/4 v1, 0x1

    :try_start_20
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_24

    goto :goto_2e

    :catch_24
    move-exception p1

    iget-object p0, p0, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2e
    return v1

    :catchall_2f
    move-exception v1

    goto :goto_4d

    :catch_31
    move-exception v1

    :try_start_32
    iget-object v2, p0, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->TAG:Ljava/lang/String;

    const-string v3, " dbCreateMarketRecommendTable SQLiteException e: "

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_2f

    const/4 v1, 0x0

    :try_start_3e
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_4c

    :catch_42
    move-exception p1

    iget-object p0, p0, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4c
    return v1

    :goto_4d
    :try_start_4d
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_50} :catch_51

    goto :goto_5b

    :catch_51
    move-exception p1

    iget-object p0, p0, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5b
    throw v1
.end method

.method public final dbMaxId(Landroid/content/Context;)I
    .registers 2

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "recommend_market_info_id"

    invoke-static {p0, p1}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final deleteAllMarketInfo()Z
    .registers 4

    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    sget-object v1, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Landroidx/constraintlayout/motion/widget/a;

    invoke-direct {v2, p0, v0}, Landroidx/constraintlayout/motion/widget/a;-><init>(Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    iget-boolean p0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return p0
.end method

.method public final deleteMarketInfoByPkg(Ljava/lang/String;Z)Z
    .registers 9

    const-string/jumbo v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    iget-object p0, p0, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->TAG:Ljava/lang/String;

    const-string p1, "deleteMarketInfoByPkg packageName is empty"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_15
    iget-object v0, p0, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteMarketInfoByPkg packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " deleteAllMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p2, :cond_4b

    :try_start_36
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object v2, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "pkgName = ?"

    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v1

    invoke-virtual {p2, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_6e

    :cond_4b
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher/mode/LauncherModeManager;->getCurrentLauncherModeType()I

    move-result p2

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v4, "pkgName = ? and launchermode = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    aput-object p1, v5, v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_6e} :catch_70

    :goto_6e
    move v1, v0

    goto :goto_7c

    :catch_70
    move-exception p1

    iget-object p0, p0, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->TAG:Ljava/lang/String;

    const-string p2, "deleteMarketInfoByPkg exception: "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7c
    return v1
.end method

.method public final deleteMarketInfoByRecommendId(I)Z
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/mode/LauncherModeManager;->getCurrentLauncherModeType()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->TAG:Ljava/lang/String;

    const-string v4, "deleteMarketInfoByRecommendId recommendId = "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v5, "recommendId = ? and launchermode = ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_38} :catch_3a

    move v0, v1

    goto :goto_46

    :catch_3a
    move-exception p1

    iget-object p0, p0, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->TAG:Ljava/lang/String;

    const-string v1, "deleteMarketInfoByRecommendId exception: "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_46
    return v0
.end method

.method public final deleteOtherModeData()V
    .registers 5

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->getOtherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v1

    if-nez v1, :cond_b

    return-void

    :cond_b
    :try_start_b
    const-string v2, "itemType=0 AND restored=536870912 AND container>0 AND intent like \'%MarketRecommendAppClassName%\'"

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v0, v1}, Lcom/android/launcher/mode/LauncherModeManager;->getItemContentUri(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v2, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->TAG:Ljava/lang/String;

    const-string v2, "deleteOtherModeData:count:"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_29} :catch_2a

    goto :goto_3a

    :catch_2a
    move-exception v0

    iget-object p0, p0, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "deleteOtherModeData failed  e = "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3a
    return-void
.end method

.method public final generateNewItemId()I
    .registers 3

    sget v0, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->maxId:I

    if-gez v0, :cond_b

    iget-object v0, p0, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->TAG:Ljava/lang/String;

    const-string v1, "generateNewItemId Error: max item id was not initialized"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    sget v0, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->maxId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->maxId:I

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object p0, p0, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->TAG:Ljava/lang/String;

    sget v0, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->maxId:I

    const-string v1, "generateNewItemId:maxId:"

    invoke-static {v0, v1, p0}, Lcom/android/common/config/f;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_20
    sget p0, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->maxId:I

    return p0
.end method

.method public final getBitmapData(Landroid/content/Context;Ljava/lang/String;)[B
    .registers 11

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "pkg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    iget-object p0, p0, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->TAG:Ljava/lang/String;

    const-string p1, "getBitmapData pkg is empty"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1a
    :try_start_1a
    sget-object v3, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string p1, "icon"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "pkgName = ?"

    const/4 p1, 0x1

    new-array v6, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    aput-object p2, v6, p1

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_34} :catch_46
    .catchall {:try_start_1a .. :try_end_34} :catchall_44

    if-eqz p2, :cond_53

    :try_start_36
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p0
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_40} :catch_42
    .catchall {:try_start_36 .. :try_end_40} :catchall_57

    move-object v1, p0

    goto :goto_53

    :catch_42
    move-exception p1

    goto :goto_48

    :catchall_44
    move-exception p0

    goto :goto_59

    :catch_46
    move-exception p1

    move-object p2, v1

    :goto_48
    :try_start_48
    iget-object p0, p0, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->TAG:Ljava/lang/String;

    const-string v0, "getBitmapData:e:"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_53
    .catchall {:try_start_48 .. :try_end_53} :catchall_57

    :cond_53
    :goto_53
    invoke-static {p2}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return-object v1

    :catchall_57
    move-exception p0

    move-object v1, p2

    :goto_59
    invoke-static {v1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw p0
.end method

.method public final initializeMaxRecommendMarketId(Landroid/database/sqlite/SQLiteDatabase;)I
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "recommendmarketinfo"

    aput-object v2, v0, v1

    const-string v1, "SELECT MAX(%1$s) FROM %2$s"

    invoke-static {p1, v1, v0}, Lcom/android/launcher3/LauncherProvider;->getMaxId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p1

    sput p1, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->maxId:I

    iget-object p0, p0, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->TAG:Ljava/lang/String;

    const-string v0, "initializeMaxRecommendMarketId:maxId:"

    invoke-static {p1, v0, p0}, Lcom/android/common/config/f;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget p0, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->maxId:I

    return p0
.end method

.method public final insertMarketInfoList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "itemInfos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p1}, Ljava/util/List;->size()I

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " \n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    :cond_2c
    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Landroidx/constraintlayout/motion/widget/a;

    invoke-direct {v1, p0, p1}, Landroidx/constraintlayout/motion/widget/a;-><init>(Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final queryMarketInfoByLauncherMode(Landroid/content/Context;I)Ljava/util/List;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "jumpUrl"

    const-string v1, "iconUri"

    const-string/jumbo v2, "pkgName"

    const-string v3, "appName"

    const-string v4, "context"

    move-object/from16 v5, p1

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :try_start_15
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "appName"

    const-string/jumbo v8, "pkgName"

    const-string v9, "icon"

    const-string v10, "iconUri"

    const-string v11, "jumpUrl"

    const-string/jumbo v12, "recommendId"

    const-string v13, "launchermode"

    const-string/jumbo v14, "reqid"

    const-string/jumbo v15, "status"

    filled-new-array/range {v7 .. v15}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "launchermode = ?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const-string/jumbo v10, "modified"

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_48} :catch_104

    if-eqz v5, :cond_ff

    :goto_4a
    :try_start_4a
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_ff

    new-instance v7, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-direct {v7}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;-><init>()V

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "icon"

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    array-length v12, v10

    invoke-static {v10, v11, v12}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    array-length v12, v10

    invoke-static {v10, v11, v12}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "recommendId"

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const-string v15, "launchermode"

    invoke-interface {v5, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v5, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const-string/jumbo v11, "reqid"

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v6, "status"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->setMAppName(Ljava/lang/String;)V

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->setMPkgName(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMBitmapInfo()Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v8

    iget v8, v8, Lcom/android/launcher3/icons/BitmapInfo;->color:I

    invoke-static {v10, v8}, Lcom/android/launcher3/icons/BitmapInfo;->of(Landroid/graphics/Bitmap;I)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v8

    const-string/jumbo v9, "of(bitmap, mBitmapInfo.color)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->setMBitmapInfo(Lcom/android/launcher3/icons/BitmapInfo;)V

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->setMIconUri(Ljava/lang/String;)V

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v13}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->setMJumpUrl(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->setMRecommendId(I)V

    invoke-virtual {v7, v15}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->setMLauncherMode(I)V

    const-string/jumbo v8, "reqId"

    invoke-static {v11, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->setMReqId(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->setMStatus(I)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_f3
    .catchall {:try_start_4a .. :try_end_f3} :catchall_f6

    const/4 v11, 0x0

    goto/16 :goto_4a

    :catchall_f6
    move-exception v0

    move-object v1, v0

    :try_start_f8
    throw v1
    :try_end_f9
    .catchall {:try_start_f8 .. :try_end_f9} :catchall_f9

    :catchall_f9
    move-exception v0

    move-object v2, v0

    :try_start_fb
    invoke-static {v5, v1}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :cond_ff
    const/4 v0, 0x0

    invoke-static {v5, v0}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_fb .. :try_end_103} :catch_104

    goto :goto_113

    :catch_104
    move-exception v0

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "queryMarketInfoByLauncherMode --- e = "

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_113
    return-object v4
.end method
