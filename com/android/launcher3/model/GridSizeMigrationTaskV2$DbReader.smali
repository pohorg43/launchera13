.class public Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/model/GridSizeMigrationTaskV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DbReader"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private final mHotseatEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mLastScreenId:I

.field private final mTableName:Ljava/lang/String;

.field private final mValidPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mWorkspaceEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mWorkspaceEntriesByScreenId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/Context;Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->mLastScreenId:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->mHotseatEntries:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->mWorkspaceEntries:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->mWorkspaceEntriesByScreenId:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p2, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->mTableName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->mValidPackages:Ljava/util/Set;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->mLastScreenId:I

    return p0
.end method

.method public static synthetic access$300(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->mWorkspaceEntriesByScreenId:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->mTableName:Ljava/lang/String;

    return-object p0
.end method

.method private getFolderItemsCount(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;)I
    .registers 10

    const-string v0, "_id"

    const-string v1, "intent"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "container = "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->queryWorkspace([Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_1d
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6d

    const/4 v3, 0x1

    :try_start_24
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->verifyIntent(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    invoke-static {p1}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->access$200(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_47

    invoke-static {p1}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->access$200(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;)Ljava/util/Map;

    move-result-object v6

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_47
    invoke-static {p1}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->access$200(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_58} :catch_59

    goto :goto_1d

    :catch_59
    iget-object v4, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v5, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->mTableName:Ljava/lang/String;

    new-array v3, v3, [I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    aput v6, v3, v1

    invoke-static {v3}, Lcom/android/launcher3/util/IntArray;->wrap([I)Lcom/android/launcher3/util/IntArray;

    move-result-object v3

    invoke-static {v4, v5, v3}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->access$900(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/launcher3/util/IntArray;)V

    goto :goto_1d

    :cond_6d
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v2
.end method

.method private loadWorkspaceEntries(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "itemType"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "screen"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "cellX"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "cellY"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string/jumbo v7, "spanX"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v8, "spanY"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "intent"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "appWidgetProvider"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "appWidgetId"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    new-instance v12, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v12}, Lcom/android/launcher3/util/IntArray;-><init>()V

    new-instance v13, Lcom/android/launcher3/widget/WidgetManagerHelper;

    iget-object v14, v0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->mContext:Landroid/content/Context;

    invoke-direct {v13, v14}, Lcom/android/launcher3/widget/WidgetManagerHelper;-><init>(Landroid/content/Context;)V

    :goto_4e
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_143

    new-instance v14, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;

    invoke-direct {v14}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;-><init>()V

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    iput v15, v14, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    iput v15, v14, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    iput v15, v14, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    move/from16 v16, v2

    iget v2, v0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->mLastScreenId:I

    invoke-static {v2, v15}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->mLastScreenId:I

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v14, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v14, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v14, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v14, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    :try_start_8d
    iget v2, v14, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eqz v2, :cond_f5

    const/4 v15, 0x1

    if-eq v2, v15, :cond_f5

    const/4 v15, 0x3

    if-eq v2, v15, :cond_e6

    const/4 v15, 0x5

    if-eq v2, v15, :cond_a6

    const/4 v15, 0x6

    if-ne v2, v15, :cond_9e

    goto :goto_f5

    :cond_9e
    new-instance v2, Ljava/lang/Exception;

    const-string v15, "Invalid item type"

    invoke-direct {v2, v15}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a6
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->access$1002(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v14}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->access$1000(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->verifyPackage(Ljava/lang/String;)V

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v13, v2}, Lcom/android/launcher3/widget/WidgetManagerHelper;->getLauncherAppWidgetInfo(I)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v2

    const/4 v15, 0x0

    if-eqz v2, :cond_cb

    invoke-virtual {v2}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getMinSpans()Landroid/graphics/Point;

    move-result-object v15

    :cond_cb
    if-eqz v15, :cond_e0

    iget v2, v15, Landroid/graphics/Point;->x:I

    if-lez v2, :cond_d2

    goto :goto_d4

    :cond_d2
    iget v2, v14, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    :goto_d4
    iput v2, v14, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iget v2, v15, Landroid/graphics/Point;->y:I

    if-lez v2, :cond_db

    goto :goto_dd

    :cond_db
    iget v2, v14, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    :goto_dd
    iput v2, v14, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    goto :goto_103

    :cond_e0
    const/4 v2, 0x2

    iput v2, v14, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    iput v2, v14, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    goto :goto_103

    :cond_e6
    invoke-direct {v0, v14}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->getFolderItemsCount(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;)I

    move-result v2

    if-eqz v2, :cond_ed

    goto :goto_103

    :cond_ed
    new-instance v2, Ljava/lang/Exception;

    const-string v15, "Folder is empty"

    invoke-direct {v2, v15}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_f5
    :goto_f5
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->access$102(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v14}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->access$100(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->verifyIntent(Ljava/lang/String;)V
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_103} :catch_138

    :goto_103
    iget-object v2, v0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->mWorkspaceEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->mWorkspaceEntriesByScreenId:Ljava/util/Map;

    iget v15, v14, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v2, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_126

    iget-object v2, v0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->mWorkspaceEntriesByScreenId:Ljava/util/Map;

    iget v15, v14, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_126
    iget-object v1, v0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->mWorkspaceEntriesByScreenId:Ljava/util/Map;

    iget v2, v14, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13d

    :catch_138
    iget v1, v14, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v12, v1}, Lcom/android/launcher3/util/IntArray;->add(I)V

    :goto_13d
    move-object/from16 v1, p1

    move/from16 v2, v16

    goto/16 :goto_4e

    :cond_143
    iget-object v1, v0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, v0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->mTableName:Ljava/lang/String;

    invoke-static {v1, v2, v12}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->access$900(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/launcher3/util/IntArray;)V

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    iget-object v0, v0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->mWorkspaceEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method private queryWorkspace([Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11

    iget-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->mTableName:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method private verifyIntent(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->verifyPackage(Ljava/lang/String;)V

    goto :goto_24

    :cond_17
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->verifyPackage(Ljava/lang/String;)V

    :cond_24
    :goto_24
    return-void
.end method

.method private verifyPackage(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->mValidPackages:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    return-void

    :cond_9
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Package not available"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public loadAllWorkspaceEntries()Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;",
            ">;"
        }
    .end annotation

    const-string v0, "_id"

    const-string v1, "itemType"

    const-string v2, "screen"

    const-string v3, "cellX"

    const-string v4, "cellY"

    const-string/jumbo v5, "spanX"

    const-string/jumbo v6, "spanY"

    const-string v7, "intent"

    const-string v8, "appWidgetProvider"

    const-string v9, "appWidgetId"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "container = -100"

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->queryWorkspace([Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->loadWorkspaceEntries(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public loadHotseatEntries()Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;",
            ">;"
        }
    .end annotation

    const-string v0, "_id"

    const-string v1, "itemType"

    const-string v2, "intent"

    const-string v3, "screen"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "container = -101"

    invoke-direct {p0, v4, v5}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->queryWorkspace([Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    new-instance v5, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v5}, Lcom/android/launcher3/util/IntArray;-><init>()V

    :goto_27
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_83

    new-instance v6, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;

    invoke-direct {v6}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;-><init>()V

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v6, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v6, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v6, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    :try_start_44
    iget v7, v6, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eqz v7, :cond_69

    const/4 v8, 0x1

    if-eq v7, v8, :cond_69

    const/4 v8, 0x3

    if-eq v7, v8, :cond_5a

    const/4 v8, 0x6

    if-ne v7, v8, :cond_52

    goto :goto_69

    :cond_52
    new-instance v7, Ljava/lang/Exception;

    const-string v8, "Invalid item type"

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_5a
    invoke-direct {p0, v6}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->getFolderItemsCount(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;)I

    move-result v7

    if-eqz v7, :cond_61

    goto :goto_77

    :cond_61
    new-instance v7, Ljava/lang/Exception;

    const-string v8, "Folder is empty"

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_69
    :goto_69
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->access$102(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;Ljava/lang/String;)Ljava/lang/String;

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->verifyIntent(Ljava/lang/String;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_77} :catch_7d

    :goto_77
    iget-object v7, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->mHotseatEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :catch_7d
    iget v6, v6, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v5, v6}, Lcom/android/launcher3/util/IntArray;->add(I)V

    goto :goto_27

    :cond_83
    iget-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->mTableName:Ljava/lang/String;

    invoke-static {v0, v1, v5}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->access$900(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/launcher3/util/IntArray;)V

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    iget-object p0, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->mHotseatEntries:Ljava/util/ArrayList;

    return-object p0
.end method
