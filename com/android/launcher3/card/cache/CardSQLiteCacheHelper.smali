.class Lcom/android/launcher3/card/cache/CardSQLiteCacheHelper;
.super Lcom/android/launcher3/util/SQLiteCacheHelper;
.source ""


# static fields
.field private static final CARD_CACHE_DB:Ljava/lang/String; = "card_cache.db"

.field private static final CARD_CACHE_TABLE_CACHES:Ljava/lang/String; = "caches"

.field public static final COLUMN_CARDID:Ljava/lang/String; = "cardid"

.field public static final COLUMN_CARDTYPE:Ljava/lang/String; = "cardtype"

.field public static final COLUMN_CARD_INDEX_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_UIDATA:Ljava/lang/String; = "uidata"

.field private static final DB_VERSION:I = 0x2

.field public static final DEFAULT_QUERY_COLUMNS:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-string v0, "cardid"

    const-string v1, "cardtype"

    const-string/jumbo v2, "uidata"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/card/cache/CardSQLiteCacheHelper;->DEFAULT_QUERY_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "card_cache.db"

    const/4 v1, 0x2

    const-string v2, "caches"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/launcher3/util/SQLiteCacheHelper;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreateTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4

    const/4 p0, 0x5

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "caches"

    aput-object v1, p0, v0

    const/4 v0, 0x1

    const-string v1, "_id"

    aput-object v1, p0, v0

    const/4 v0, 0x2

    const-string v1, "cardid"

    aput-object v1, p0, v0

    const/4 v0, 0x3

    const-string v1, "cardtype"

    aput-object v1, p0, v0

    const/4 v0, 0x4

    const-string/jumbo v1, "uidata"

    aput-object v1, p0, v0

    const-string v0, "CREATE TABLE IF NOT EXISTS %s (  %s TEXT PRIMARY KEY, %s INTEGER NOT NULL, %s INTEGER NOT NULL, %s TEXT);"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
