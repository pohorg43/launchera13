.class public Lcom/android/launcher3/card/cache/CardCache;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/cache/CardCache$OnCacheLoadedCallback;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "CardCache"


# instance fields
.field public final mCallbackHandler:Landroid/os/Handler;

.field private final mDbHelper:Lcom/android/launcher3/card/cache/CardSQLiteCacheHelper;

.field private final mUpdateHandler:Lcom/android/launcher3/card/cache/CardCacheUpdateHandler;

.field public final mWorkerHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperExecutor;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/launcher3/card/cache/CardCache;->mWorkerHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/launcher3/card/cache/CardCache;->mCallbackHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/launcher3/card/cache/CardCacheUpdateHandler;

    invoke-direct {v0, p0}, Lcom/android/launcher3/card/cache/CardCacheUpdateHandler;-><init>(Lcom/android/launcher3/card/cache/CardCache;)V

    iput-object v0, p0, Lcom/android/launcher3/card/cache/CardCache;->mUpdateHandler:Lcom/android/launcher3/card/cache/CardCacheUpdateHandler;

    new-instance v0, Lcom/android/launcher3/card/cache/CardSQLiteCacheHelper;

    invoke-direct {v0, p1}, Lcom/android/launcher3/card/cache/CardSQLiteCacheHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/card/cache/CardCache;->mDbHelper:Lcom/android/launcher3/card/cache/CardSQLiteCacheHelper;

    return-void
.end method

.method private static generateCacheEntryPrimaryKey(II)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "CardCache"

    invoke-static {p2, p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/card/cache/CardCacheUpdateHandler;

    invoke-direct {v0, p0}, Lcom/android/launcher3/card/cache/CardCacheUpdateHandler;-><init>(Lcom/android/launcher3/card/cache/CardCache;)V

    iget-object p0, p0, Lcom/android/launcher3/card/cache/CardCache;->mDbHelper:Lcom/android/launcher3/card/cache/CardSQLiteCacheHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/util/SQLiteCacheHelper;->close()V

    return-void
.end method

.method public getCardCachedEntry(IILcom/android/launcher3/card/cache/CardCache$OnCacheLoadedCallback;)V
    .registers 4

    iget-object p0, p0, Lcom/android/launcher3/card/cache/CardCache;->mUpdateHandler:Lcom/android/launcher3/card/cache/CardCacheUpdateHandler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/card/cache/CardCacheUpdateHandler;->getCardCachedEntry(IILcom/android/launcher3/card/cache/CardCache$OnCacheLoadedCallback;)V

    return-void
.end method

.method public declared-synchronized getCardFromDBCache(II)Lcom/android/launcher3/card/cache/CachedEntry;
    .registers 11
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_4
    iget-object v3, p0, Lcom/android/launcher3/card/cache/CardCache;->mDbHelper:Lcom/android/launcher3/card/cache/CardSQLiteCacheHelper;

    sget-object v4, Lcom/android/launcher3/card/cache/CardSQLiteCacheHelper;->DEFAULT_QUERY_COLUMNS:[Ljava/lang/String;

    const-string v5, "_id = ? "

    new-array v6, v2, [Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/android/launcher3/card/cache/CardCache;->generateCacheEntryPrimaryKey(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/launcher3/util/SQLiteCacheHelper;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_16} :catch_70
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_16} :catch_70
    .catchall {:try_start_4 .. :try_end_16} :catchall_6e

    :try_start_16
    const-string/jumbo v4, "uidata"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_68

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x2

    if-eqz v5, :cond_44

    const-string v4, "CardCache"

    const-string v5, "getCardFromDBCache failed, uiData is empty, cardId=%d,type=%d"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v2

    invoke-static {v4, v5, v6}, Lcom/android/launcher3/card/cache/CardCache;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_68

    :cond_44
    sget-object v5, Lcom/oplus/card/manager/domain/model/UIData;->Companion:Lcom/oplus/card/manager/domain/model/UIData$Companion;

    invoke-virtual {v5, v4}, Lcom/oplus/card/manager/domain/model/UIData$Companion;->convertUIData(Ljava/lang/String;)Lcom/oplus/card/manager/domain/model/UIData;

    move-result-object v4

    if-eqz v4, :cond_53

    new-instance v5, Lcom/android/launcher3/card/cache/CachedEntry;

    invoke-direct {v5, p1, p2, v4}, Lcom/android/launcher3/card/cache/CachedEntry;-><init>(IILcom/oplus/card/manager/domain/model/UIData;)V

    move-object v0, v5

    goto :goto_68

    :cond_53
    const-string v4, "CardCache"

    const-string v5, "getCardFromDBCache failed,uiData parse failed!, cardId=%d,type=%d"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v2

    invoke-static {v4, v5, v6}, Lcom/android/launcher3/card/cache/CardCache;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_68
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_68} :catch_6c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_68} :catch_6c
    .catchall {:try_start_16 .. :try_end_68} :catchall_82

    :cond_68
    :goto_68
    :try_start_68
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_8a

    goto :goto_80

    :catch_6c
    move-exception p1

    goto :goto_72

    :catchall_6e
    move-exception p1

    goto :goto_84

    :catch_70
    move-exception p1

    move-object v3, v0

    :goto_72
    :try_start_72
    const-string p2, "CardCache"

    const-string v4, "Error reading card cache. e:%s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {p2, v4, v2}, Lcom/android/launcher3/card/cache/CardCache;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7d
    .catchall {:try_start_72 .. :try_end_7d} :catchall_82

    if-eqz v3, :cond_80

    goto :goto_68

    :cond_80
    :goto_80
    monitor-exit p0

    return-object v0

    :catchall_82
    move-exception p1

    move-object v0, v3

    :goto_84
    if-eqz v0, :cond_89

    :try_start_86
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_89
    throw p1
    :try_end_8a
    .catchall {:try_start_86 .. :try_end_8a} :catchall_8a

    :catchall_8a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeCardCache(II)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/card/cache/CardCache;->mUpdateHandler:Lcom/android/launcher3/card/cache/CardCacheUpdateHandler;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/cache/CardCacheUpdateHandler;->removeCardCache(II)V

    return-void
.end method

.method public declared-synchronized removeCardFromDBCache(II)V
    .registers 9

    monitor-enter p0

    :try_start_1
    const-string v0, "CardCache"

    const-string/jumbo v1, "removeCardFromDBCache cardId=%d,type=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/card/cache/CardCache;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/launcher3/card/cache/CardCache;->mDbHelper:Lcom/android/launcher3/card/cache/CardSQLiteCacheHelper;

    const-string v1, "_id = ? "

    new-array v2, v5, [Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/android/launcher3/card/cache/CardCache;->generateCacheEntryPrimaryKey(II)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/SQLiteCacheHelper;->delete(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    monitor-exit p0

    return-void

    :catchall_2b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateCardCache(Lcom/oplus/card/manager/domain/model/CardModel;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/card/cache/CardCache;->mUpdateHandler:Lcom/android/launcher3/card/cache/CardCacheUpdateHandler;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/cache/CardCacheUpdateHandler;->updateCache(Lcom/oplus/card/manager/domain/model/CardModel;)V

    return-void
.end method

.method public declared-synchronized updateCardToDBCache(IILcom/oplus/card/manager/domain/model/UIData;)V
    .registers 9

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p3, :cond_10

    :try_start_4
    const-string p1, "CardCache"

    const-string/jumbo p2, "updateCardToDBCache but uiData is null!"

    new-array p3, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lcom/android/launcher3/card/cache/CardCache;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_5c

    monitor-exit p0

    return-void

    :cond_10
    :try_start_10
    const-string v1, "CardCache"

    const-string/jumbo v2, "updateCardToDBCache cardId=%d,cardType=%d,uiData=%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    aput-object p3, v3, v0

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/card/cache/CardCache;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p3}, Lcom/oplus/card/manager/domain/model/UIData;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "_id"

    invoke-static {p1, p2}, Lcom/android/launcher3/card/cache/CardCache;->generateCacheEntryPrimaryKey(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cardid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "cardtype"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo p1, "uidata"

    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/card/cache/CardCache;->mDbHelper:Lcom/android/launcher3/card/cache/CardSQLiteCacheHelper;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/SQLiteCacheHelper;->insertOrReplace(Landroid/content/ContentValues;)V
    :try_end_5a
    .catchall {:try_start_10 .. :try_end_5a} :catchall_5c

    monitor-exit p0

    return-void

    :catchall_5c
    move-exception p1

    monitor-exit p0

    throw p1
.end method
