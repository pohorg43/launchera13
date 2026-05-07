.class public final Lcom/oplus/card/manager/data/CardIdDao;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/card/manager/data/CardIdDao$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/card/manager/data/CardIdDao$Companion;

.field private static final TAG:Ljava/lang/String; = "CardIdDao"


# instance fields
.field private final context$delegate:Ly2/e;

.field private final databaseHelper$delegate:Ly2/e;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/card/manager/data/CardIdDao$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/card/manager/data/CardIdDao$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/card/manager/data/CardIdDao;->Companion:Lcom/oplus/card/manager/data/CardIdDao$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/oplus/card/di/GlobalDI;->INSTANCE:Lcom/oplus/card/di/GlobalDI;

    invoke-virtual {v0}, Lcom/oplus/card/di/GlobalDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    const-class v2, Landroid/content/Context;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Ln3/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_38

    invoke-virtual {v0}, Lcom/oplus/card/di/GlobalDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Ln3/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Lazy<T of com.oplus.card.di.GlobalDI.injectSingle>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ly2/e;

    iput-object v0, p0, Lcom/oplus/card/manager/data/CardIdDao;->context$delegate:Ly2/e;

    new-instance v0, Lcom/oplus/card/manager/data/CardIdDao$databaseHelper$2;

    invoke-direct {v0, p0}, Lcom/oplus/card/manager/data/CardIdDao$databaseHelper$2;-><init>(Lcom/oplus/card/manager/data/CardIdDao;)V

    invoke-static {v0}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/card/manager/data/CardIdDao;->databaseHelper$delegate:Ly2/e;

    return-void

    :cond_38
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "the class are not injected"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic access$getContext(Lcom/oplus/card/manager/data/CardIdDao;)Landroid/content/Context;
    .registers 1

    invoke-direct {p0}, Lcom/oplus/card/manager/data/CardIdDao;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private final getContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/manager/data/CardIdDao;->context$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    return-object p0
.end method

.method private final getDatabaseHelper()Lcom/oplus/card/manager/data/DatabaseHelper;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/manager/data/CardIdDao;->databaseHelper$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/card/manager/data/DatabaseHelper;

    return-object p0
.end method

.method private final queryMaxCardIdAsCardType(Landroid/database/sqlite/SQLiteDatabase;I)I
    .registers 13

    const/4 p0, -0x1

    if-nez p1, :cond_4

    goto :goto_53

    :cond_4
    const-string v0, "card_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v2, "card_id"

    const-string v4, "card_type=?"

    move-object v1, p1

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_24

    goto :goto_53

    :cond_24
    :goto_24
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_36

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    if-ge p0, p2, :cond_24

    move p0, p2

    goto :goto_24

    :cond_36
    :try_start_36
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    sget-object p1, Ly2/p;->a:Ly2/p;
    :try_end_3b
    .catchall {:try_start_36 .. :try_end_3b} :catchall_3c

    goto :goto_41

    :catchall_3c
    move-exception p1

    invoke-static {p1}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_41
    invoke-static {p1}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_48

    goto :goto_53

    :cond_48
    const-string p2, "queryMaxCardIdAsCardType, cursor close error: "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "CardIdDao"

    invoke-static {p2, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_53
    return p0
.end method


# virtual methods
.method public final deleteCardIds(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/card/manager/domain/model/CardIdInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "CardIdDao"

    const-string v1, "list"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_8
    invoke-direct {p0}, Lcom/oplus/card/manager/data/CardIdDao;->getDatabaseHelper()Lcom/oplus/card/manager/data/DatabaseHelper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_10} :catch_92
    .catchall {:try_start_8 .. :try_end_10} :catchall_90

    if-nez p0, :cond_13

    goto :goto_16

    :cond_13
    :try_start_13
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :goto_16
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1a
    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/card/manager/domain/model/CardIdInfo;

    if-nez p0, :cond_2a

    move-object v3, v1

    goto :goto_4f

    :cond_2a
    const-string v3, "card_id"

    const-string v4, "card_type=? AND card_id=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v2}, Lcom/oplus/card/manager/domain/model/CardIdInfo;->getType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v2}, Lcom/oplus/card/manager/domain/model/CardIdInfo;->getCardId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_4f
    if-nez v3, :cond_52

    goto :goto_1a

    :cond_52
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_1a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete error: type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/oplus/card/manager/domain/model/CardIdInfo;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", cardId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/oplus/card/manager/domain/model/CardIdInfo;->getCardId()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    :cond_7d
    if-nez p0, :cond_80

    goto :goto_83

    :cond_80
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_83
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_83} :catch_8d
    .catchall {:try_start_13 .. :try_end_83} :catchall_8a

    :goto_83
    if-nez p0, :cond_86

    goto :goto_a6

    :cond_86
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_a6

    :catchall_8a
    move-exception p1

    move-object v1, p0

    goto :goto_a7

    :catch_8d
    move-exception p1

    move-object v1, p0

    goto :goto_93

    :catchall_90
    move-exception p1

    goto :goto_a7

    :catch_92
    move-exception p1

    :goto_93
    :try_start_93
    const-string p0, "deleteCardIds error: "

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a0
    .catchall {:try_start_93 .. :try_end_a0} :catchall_90

    if-nez v1, :cond_a3

    goto :goto_a6

    :cond_a3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_a6
    return-void

    :goto_a7
    if-nez v1, :cond_aa

    goto :goto_ad

    :cond_aa
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_ad
    throw p1
.end method

.method public final loadAllCardId()Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/card/manager/domain/model/CardIdInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "card_id"

    const-string v1, "card_type"

    const-string v2, "CardIdDao"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :try_start_c
    invoke-direct {p0}, Lcom/oplus/card/manager/data/CardIdDao;->getDatabaseHelper()Lcom/oplus/card/manager/data/DatabaseHelper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "card_id"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_2b

    const-string p0, "loadAllCardId error: cursor is null"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_2a} :catch_58
    .catchall {:try_start_c .. :try_end_2a} :catchall_56

    return-object v3

    :cond_2b
    :try_start_2b
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    :goto_33
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4a

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    new-instance v6, Lcom/oplus/card/manager/domain/model/CardIdInfo;

    invoke-direct {v6, v4, v5}, Lcom/oplus/card/manager/domain/model/CardIdInfo;-><init>(II)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_49
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2b .. :try_end_49} :catch_52
    .catchall {:try_start_2b .. :try_end_49} :catchall_4e

    goto :goto_33

    :cond_4a
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_6c

    :catchall_4e
    move-exception v0

    move-object v4, p0

    move-object p0, v0

    goto :goto_6d

    :catch_52
    move-exception v0

    move-object v4, p0

    move-object p0, v0

    goto :goto_59

    :catchall_56
    move-exception p0

    goto :goto_6d

    :catch_58
    move-exception p0

    :goto_59
    :try_start_59
    const-string v0, "loadAllCardId error: "

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_66
    .catchall {:try_start_59 .. :try_end_66} :catchall_56

    if-nez v4, :cond_69

    goto :goto_6c

    :cond_69
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :goto_6c
    return-object v3

    :goto_6d
    if-nez v4, :cond_70

    goto :goto_73

    :cond_70
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :goto_73
    throw p0
.end method

.method public final saveCardIds(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/card/manager/domain/model/CardIdInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "CardIdDao"

    const-string v1, "list"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_8
    invoke-direct {p0}, Lcom/oplus/card/manager/data/CardIdDao;->getDatabaseHelper()Lcom/oplus/card/manager/data/DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_10} :catch_12d
    .catchall {:try_start_8 .. :try_end_10} :catchall_12b

    if-nez v2, :cond_13

    goto :goto_16

    :cond_13
    :try_start_13
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :goto_16
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1f
    :goto_1f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/card/manager/domain/model/CardIdInfo;

    invoke-virtual {v4}, Lcom/oplus/card/manager/domain/model/CardIdInfo;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/card/manager/domain/model/CardIdInfo;

    if-nez v5, :cond_3d

    move-object v5, v1

    goto :goto_45

    :cond_3d
    invoke-virtual {v5}, Lcom/oplus/card/manager/domain/model/CardIdInfo;->getCardId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_45
    if-eqz v5, :cond_51

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4}, Lcom/oplus/card/manager/domain/model/CardIdInfo;->getCardId()I

    move-result v6

    if-ge v5, v6, :cond_1f

    :cond_51
    invoke-virtual {v4}, Lcom/oplus/card/manager/domain/model/CardIdInfo;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    :cond_5d
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    const-string v3, "map.values"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6a
    :goto_6a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_118

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/card/manager/domain/model/CardIdInfo;

    invoke-virtual {v3}, Lcom/oplus/card/manager/domain/model/CardIdInfo;->getType()I

    move-result v4

    invoke-direct {p0, v2, v4}, Lcom/oplus/card/manager/data/CardIdDao;->queryMaxCardIdAsCardType(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v4

    invoke-virtual {v3}, Lcom/oplus/card/manager/domain/model/CardIdInfo;->getCardId()I

    move-result v5
    :try_end_82
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_82} :catch_128
    .catchall {:try_start_13 .. :try_end_82} :catchall_125

    if-ge v4, v5, :cond_6a

    const-string v4, "card_id"

    if-nez v2, :cond_8a

    move-object v5, v1

    goto :goto_a2

    :cond_8a
    :try_start_8a
    const-string v5, "card_type=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v3}, Lcom/oplus/card/manager/domain/model/CardIdInfo;->getType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_a2
    if-nez v5, :cond_a5

    goto :goto_bc

    :cond_a5
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_bc

    const-string v5, "delete error: type = "

    invoke-virtual {v3}, Lcom/oplus/card/manager/domain/model/CardIdInfo;->getType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_bc
    :goto_bc
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "card_type"

    invoke-virtual {v3}, Lcom/oplus/card/manager/domain/model/CardIdInfo;->getType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v3}, Lcom/oplus/card/manager/domain/model/CardIdInfo;->getCardId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-nez v2, :cond_dd

    move-object v4, v1

    goto :goto_e5

    :cond_dd
    invoke-virtual {v2, v4, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :goto_e5
    const-wide/16 v5, -0x1

    if-nez v4, :cond_ea

    goto :goto_6a

    :cond_ea
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v4, v7, v5

    if-nez v4, :cond_6a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert error: type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/oplus/card/manager/domain/model/CardIdInfo;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", cardId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/oplus/card/manager/domain/model/CardIdInfo;->getCardId()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6a

    :cond_118
    if-nez v2, :cond_11b

    goto :goto_11e

    :cond_11b
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_11e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8a .. :try_end_11e} :catch_128
    .catchall {:try_start_8a .. :try_end_11e} :catchall_125

    :goto_11e
    if-nez v2, :cond_121

    goto :goto_141

    :cond_121
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_141

    :catchall_125
    move-exception p0

    move-object v1, v2

    goto :goto_142

    :catch_128
    move-exception p0

    move-object v1, v2

    goto :goto_12e

    :catchall_12b
    move-exception p0

    goto :goto_142

    :catch_12d
    move-exception p0

    :goto_12e
    :try_start_12e
    const-string p1, "saveCardIds error: "

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13b
    .catchall {:try_start_12e .. :try_end_13b} :catchall_12b

    if-nez v1, :cond_13e

    goto :goto_141

    :cond_13e
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_141
    return-void

    :goto_142
    if-nez v1, :cond_145

    goto :goto_148

    :cond_145
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_148
    throw p0
.end method
