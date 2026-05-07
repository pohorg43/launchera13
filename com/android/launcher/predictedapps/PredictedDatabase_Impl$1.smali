.class Lcom/android/launcher/predictedapps/PredictedDatabase_Impl$1;
.super Landroidx/room/RoomOpenHelper$Delegate;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/predictedapps/PredictedDatabase_Impl;->createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/predictedapps/PredictedDatabase_Impl;


# direct methods
.method public constructor <init>(Lcom/android/launcher/predictedapps/PredictedDatabase_Impl;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/predictedapps/PredictedDatabase_Impl$1;->this$0:Lcom/android/launcher/predictedapps/PredictedDatabase_Impl;

    invoke-direct {p0, p2}, Landroidx/room/RoomOpenHelper$Delegate;-><init>(I)V

    return-void
.end method


# virtual methods
.method public createAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .registers 2

    const-string p0, "CREATE TABLE IF NOT EXISTS `predicted_info` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `component` TEXT, `launch_count` INTEGER NOT NULL, `disable` INTEGER NOT NULL, `disable_time` INTEGER NOT NULL)"

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'2182566b44301c7a7a1c2396804ef64d\')"

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public dropAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .registers 5

    const-string v0, "DROP TABLE IF EXISTS `predicted_info`"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/predictedapps/PredictedDatabase_Impl$1;->this$0:Lcom/android/launcher/predictedapps/PredictedDatabase_Impl;

    invoke-static {v0}, Lcom/android/launcher/predictedapps/PredictedDatabase_Impl;->access$000(Lcom/android/launcher/predictedapps/PredictedDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher/predictedapps/PredictedDatabase_Impl$1;->this$0:Lcom/android/launcher/predictedapps/PredictedDatabase_Impl;

    invoke-static {v1}, Lcom/android/launcher/predictedapps/PredictedDatabase_Impl;->access$100(Lcom/android/launcher/predictedapps/PredictedDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_18
    if-ge v0, v1, :cond_2c

    iget-object v2, p0, Lcom/android/launcher/predictedapps/PredictedDatabase_Impl$1;->this$0:Lcom/android/launcher/predictedapps/PredictedDatabase_Impl;

    invoke-static {v2}, Lcom/android/launcher/predictedapps/PredictedDatabase_Impl;->access$200(Lcom/android/launcher/predictedapps/PredictedDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onDestructiveMigration(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_2c
    return-void
.end method

.method public onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/predictedapps/PredictedDatabase_Impl$1;->this$0:Lcom/android/launcher/predictedapps/PredictedDatabase_Impl;

    invoke-static {v0}, Lcom/android/launcher/predictedapps/PredictedDatabase_Impl;->access$300(Lcom/android/launcher/predictedapps/PredictedDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher/predictedapps/PredictedDatabase_Impl$1;->this$0:Lcom/android/launcher/predictedapps/PredictedDatabase_Impl;

    invoke-static {v1}, Lcom/android/launcher/predictedapps/PredictedDatabase_Impl;->access$400(Lcom/android/launcher/predictedapps/PredictedDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_13
    if-ge v0, v1, :cond_27

    iget-object v2, p0, Lcom/android/launcher/predictedapps/PredictedDatabase_Impl$1;->this$0:Lcom/android/launcher/predictedapps/PredictedDatabase_Impl;

    invoke-static {v2}, Lcom/android/launcher/predictedapps/PredictedDatabase_Impl;->access$500(Lcom/android/launcher/predictedapps/PredictedDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_27
    return-void
.end method

.method public onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/predictedapps/PredictedDatabase_Impl$1;->this$0:Lcom/android/launcher/predictedapps/PredictedDatabase_Impl;

    invoke-static {v0, p1}, Lcom/android/launcher/predictedapps/PredictedDatabase_Impl;->access$602(Lcom/android/launcher/predictedapps/PredictedDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;

    iget-object v0, p0, Lcom/android/launcher/predictedapps/PredictedDatabase_Impl$1;->this$0:Lcom/android/launcher/predictedapps/PredictedDatabase_Impl;

    invoke-static {v0, p1}, Lcom/android/launcher/predictedapps/PredictedDatabase_Impl;->access$700(Lcom/android/launcher/predictedapps/PredictedDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    iget-object v0, p0, Lcom/android/launcher/predictedapps/PredictedDatabase_Impl$1;->this$0:Lcom/android/launcher/predictedapps/PredictedDatabase_Impl;

    invoke-static {v0}, Lcom/android/launcher/predictedapps/PredictedDatabase_Impl;->access$800(Lcom/android/launcher/predictedapps/PredictedDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_31

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher/predictedapps/PredictedDatabase_Impl$1;->this$0:Lcom/android/launcher/predictedapps/PredictedDatabase_Impl;

    invoke-static {v1}, Lcom/android/launcher/predictedapps/PredictedDatabase_Impl;->access$900(Lcom/android/launcher/predictedapps/PredictedDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_1d
    if-ge v0, v1, :cond_31

    iget-object v2, p0, Lcom/android/launcher/predictedapps/PredictedDatabase_Impl$1;->this$0:Lcom/android/launcher/predictedapps/PredictedDatabase_Impl;

    invoke-static {v2}, Lcom/android/launcher/predictedapps/PredictedDatabase_Impl;->access$1000(Lcom/android/launcher/predictedapps/PredictedDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_31
    return-void
.end method

.method public onPostMigrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .registers 2

    return-void
.end method

.method public onPreMigrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .registers 2

    invoke-static {p1}, Landroidx/room/util/DBUtil;->dropFtsSyncTriggers(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method public onValidateSchema(Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/room/RoomOpenHelper$ValidationResult;
    .registers 11

    new-instance p0, Ljava/util/HashMap;

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V

    new-instance v0, Landroidx/room/util/TableInfo$Column;

    const-string v2, "_id"

    const-string v3, "INTEGER"

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v1, "_id"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/room/util/TableInfo$Column;

    const-string v3, "component"

    const-string v4, "TEXT"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v1, "component"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/room/util/TableInfo$Column;

    const-string v3, "launch_count"

    const-string v4, "INTEGER"

    const/4 v5, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v1, "launch_count"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/room/util/TableInfo$Column;

    const-string v3, "disable"

    const-string v4, "INTEGER"

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v1, "disable"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/room/util/TableInfo$Column;

    const-string v3, "disable_time"

    const-string v4, "INTEGER"

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v1, "disable_time"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(I)V

    new-instance v3, Landroidx/room/util/TableInfo;

    const-string/jumbo v4, "predicted_info"

    invoke-direct {v3, v4, p0, v0, v2}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    invoke-static {p1, v4}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_97

    new-instance p1, Landroidx/room/RoomOpenHelper$ValidationResult;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "predicted_info(com.android.launcher.predictedapps.PredictedInfo).\n Expected:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n Found:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v1, p0}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(ZLjava/lang/String;)V

    return-object p1

    :cond_97
    new-instance p0, Landroidx/room/RoomOpenHelper$ValidationResult;

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(ZLjava/lang/String;)V

    return-object p0
.end method
