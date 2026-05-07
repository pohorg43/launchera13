.class public Lcom/android/launcher3/model/GridBackupTable;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/model/GridBackupTable$BackupState;
    }
.end annotation


# static fields
.field private static final ID_PROPERTY:I = -0x1

.field private static final KEY_DB_VERSION:Ljava/lang/String; = "rank"

.field private static final KEY_GRID_X_SIZE:Ljava/lang/String; = "spanX"

.field private static final KEY_GRID_Y_SIZE:Ljava/lang/String; = "spanY"

.field private static final KEY_HOTSEAT_SIZE:Ljava/lang/String; = "screen"

.field public static final OPTION_REQUIRES_SANITIZATION:I = 0x1

.field private static final STATE_NOT_FOUND:I = 0x0

.field private static final STATE_RAW:I = 0x1

.field private static final STATE_SANITIZED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GridBackupTable"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private final mOldGridX:I

.field private final mOldGridY:I

.field private final mOldHotseatSize:I

.field private mRestoredGridX:I

.field private mRestoredGridY:I

.field private mRestoredHotseatSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;III)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/GridBackupTable;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/launcher3/model/GridBackupTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iput p3, p0, Lcom/android/launcher3/model/GridBackupTable;->mOldHotseatSize:I

    iput p4, p0, Lcom/android/launcher3/model/GridBackupTable;->mOldGridX:I

    iput p5, p0, Lcom/android/launcher3/model/GridBackupTable;->mOldGridY:I

    return-void
.end method

.method private static copyTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 6

    invoke-static {p0, p2}, Lcom/android/launcher3/provider/LauncherDbUtils;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, p3, p4, v0, p2}, Lcom/android/launcher3/LauncherSettings$Favorites;->addTableToDb(Landroid/database/sqlite/SQLiteDatabase;JZLjava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "INSERT INTO "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " SELECT * FROM "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " where _id > "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, -0x1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private encodeDBProperties(I)V
    .registers 5

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/launcher3/model/GridBackupTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rank"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v1, p0, Lcom/android/launcher3/model/GridBackupTable;->mOldGridX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "spanX"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v1, p0, Lcom/android/launcher3/model/GridBackupTable;->mOldGridY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "spanY"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v1, p0, Lcom/android/launcher3/model/GridBackupTable;->mOldHotseatSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "screen"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "options"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p0, p0, Lcom/android/launcher3/model/GridBackupTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo p1, "singledesktopitems_bakup"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method private static validateDBVersion(II)Z
    .registers 5

    const/4 v0, 0x1

    if-eq p0, p1, :cond_1f

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v0

    const-string p0, "Launcher.db version mismatch, expecting %d but %d was found"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "GridBackupTable"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1f
    return v0
.end method


# virtual methods
.method public createCustomBackupTable(Ljava/lang/String;)V
    .registers 6

    sget-object v0, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/model/GridBackupTable;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pm/UserCache;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/pm/UserCache;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/launcher3/model/GridBackupTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "singledesktopitems"

    invoke-static {v2, v3, p1, v0, v1}, Lcom/android/launcher3/model/GridBackupTable;->copyTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;J)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/GridBackupTable;->encodeDBProperties(I)V

    return-void
.end method

.method public doBackup(JI)V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/model/GridBackupTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "singledesktopitems"

    const-string/jumbo v2, "singledesktopitems_bakup"

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/launcher3/model/GridBackupTable;->copyTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-direct {p0, p3}, Lcom/android/launcher3/model/GridBackupTable;->encodeDBProperties(I)V

    return-void
.end method

.method public loadDBProperties()I
    .registers 9
    .annotation build Lcom/android/launcher3/model/GridBackupTable$BackupState;
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/model/GridBackupTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "rank"

    const-string/jumbo v2, "spanX"

    const-string/jumbo v3, "spanY"

    const-string v4, "screen"

    const-string v5, "options"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v1, "singledesktopitems_bakup"

    const-string v3, "_id=-1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_1f
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_31

    const-string p0, "GridBackupTable"

    const-string v1, "Meta data not found in backup table"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_1f .. :try_end_2d} :catchall_6a

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v2

    :cond_31
    :try_start_31
    iget-object v1, p0, Lcom/android/launcher3/model/GridBackupTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/launcher3/model/GridBackupTable;->validateDBVersion(II)Z

    move-result v1
    :try_end_3f
    .catchall {:try_start_31 .. :try_end_3f} :catchall_6a

    if-nez v1, :cond_45

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v2

    :cond_45
    const/4 v1, 0x1

    :try_start_46
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/model/GridBackupTable;->mRestoredGridX:I

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/model/GridBackupTable;->mRestoredGridY:I

    const/4 v4, 0x3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/model/GridBackupTable;->mRestoredHotseatSize:I

    const/4 p0, 0x4

    invoke-interface {v0, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_5f
    .catchall {:try_start_46 .. :try_end_5f} :catchall_6a

    and-int/2addr p0, v1

    if-nez p0, :cond_63

    move v2, v1

    :cond_63
    if-eqz v2, :cond_66

    move v1, v3

    :cond_66
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v1

    :catchall_6a
    move-exception p0

    if-eqz v0, :cond_75

    :try_start_6d
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_71

    goto :goto_75

    :catchall_71
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_75
    :goto_75
    throw p0
.end method

.method public restoreFromCustomBackupTable(Ljava/lang/String;Z)V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/model/GridBackupTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p1}, Lcom/android/launcher3/provider/LauncherDbUtils;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    sget-object v0, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/model/GridBackupTable;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pm/UserCache;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/pm/UserCache;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/launcher3/model/GridBackupTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "singledesktopitems"

    invoke-static {v2, p1, v3, v0, v1}, Lcom/android/launcher3/model/GridBackupTable;->copyTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;J)V

    if-eqz p2, :cond_2a

    iget-object p0, p0, Lcom/android/launcher3/model/GridBackupTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p0, p1}, Lcom/android/launcher3/provider/LauncherDbUtils;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    :cond_2a
    return-void
.end method

.method public restoreFromRawBackupIfAvailable(J)Z
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/model/GridBackupTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "singledesktopitems_bakup"

    invoke-static {v0, v1}, Lcom/android/launcher3/provider/LauncherDbUtils;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {p0}, Lcom/android/launcher3/model/GridBackupTable;->loadDBProperties()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_35

    iget v0, p0, Lcom/android/launcher3/model/GridBackupTable;->mOldHotseatSize:I

    iget v3, p0, Lcom/android/launcher3/model/GridBackupTable;->mRestoredHotseatSize:I

    if-ne v0, v3, :cond_35

    iget v0, p0, Lcom/android/launcher3/model/GridBackupTable;->mOldGridX:I

    iget v3, p0, Lcom/android/launcher3/model/GridBackupTable;->mRestoredGridX:I

    if-ne v0, v3, :cond_35

    iget v0, p0, Lcom/android/launcher3/model/GridBackupTable;->mOldGridY:I

    iget v3, p0, Lcom/android/launcher3/model/GridBackupTable;->mRestoredGridY:I

    if-eq v0, v3, :cond_25

    goto :goto_35

    :cond_25
    iget-object p0, p0, Lcom/android/launcher3/model/GridBackupTable;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v0, "singledesktopitems"

    invoke-static {p0, v1, v0, p1, p2}, Lcom/android/launcher3/model/GridBackupTable;->copyTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;J)V

    const-string p0, "GridBackupTable"

    const-string p1, "Backup restored"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_35
    :goto_35
    const/4 p0, 0x0

    return p0
.end method
