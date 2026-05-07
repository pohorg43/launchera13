.class public Lcom/android/launcher/BadgeProvider$BadgeHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/BadgeProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BadgeHelper"
.end annotation


# static fields
.field private static final DATABASE_VERSION:I = 0x5

.field private static final DATABASE_VERSION_3:I = 0x3

.field private static final DATABASE_VERSION_4:I = 0x4

.field private static final DATABASE_VERSION_5:I = 0x5

.field private static volatile sInstance:Lcom/android/launcher/BadgeProvider$BadgeHelper;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mMaxId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "badge.db"

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher/BadgeProvider$BadgeHelper;->mMaxId:J

    iput-object p1, p0, Lcom/android/launcher/BadgeProvider$BadgeHelper;->mContext:Landroid/content/Context;

    cmp-long p1, v0, v0

    if-nez p1, :cond_33

    :try_start_11
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/launcher/BadgeProvider$BadgeHelper;->initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher/BadgeProvider$BadgeHelper;->mMaxId:J
    :try_end_1b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_1b} :catch_1c

    goto :goto_33

    :catch_1c
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BadgeHelper ex = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BadgeProvider"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    :goto_33
    return-void
.end method

.method private addDownloadInfoTable(Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 5

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE  IF NOT EXISTS downloadinfos (_id INTEGER PRIMARY KEY AUTOINCREMENT,packageName TEXT,title TEXT,installState INTEGER,installSource TEXT,downloadProgress INTEGER,iconPath TEXT, profileId INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/launcher/BadgeProvider$BadgeHelper;->getDefaultUserSerial()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ");"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1f

    const/4 p0, 0x1

    return p0

    :catch_1f
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method private addProfileIdColumn(Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 7

    const-string v0, "addProfileIdColumn e = "

    const-string v1, "BadgeProvider"

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_7
    iget-object p0, p0, Lcom/android/launcher/BadgeProvider$BadgeHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher/BadgeProvider;->myUserSerialNumber(Landroid/content/Context;)J

    move-result-wide v2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ALTER TABLE badge ADD COLUMN profileId INTEGER DEFAULT "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_29} :catch_35
    .catchall {:try_start_7 .. :try_end_29} :catchall_33

    const/4 p0, 0x1

    :try_start_2a
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_2e

    goto :goto_32

    :catch_2e
    move-exception p1

    invoke-static {v0, p1, v1}, Lcom/android/launcher/e;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_32
    return p0

    :catchall_33
    move-exception p0

    goto :goto_47

    :catch_35
    move-exception p0

    :try_start_36
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_33

    const/4 p0, 0x0

    :try_start_3e
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_46

    :catch_42
    move-exception p1

    invoke-static {v0, p1, v1}, Lcom/android/launcher/e;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_46
    return p0

    :goto_47
    :try_start_47
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4a} :catch_4b

    goto :goto_4f

    :catch_4b
    move-exception p1

    invoke-static {v0, p1, v1}, Lcom/android/launcher/e;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_4f
    throw p0
.end method

.method private addUserIdColumn(Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 4

    const-string p0, "addUserIdColumn e = "

    const-string v0, "BadgeProvider"

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_7
    const-string v1, "ALTER TABLE badge ADD COLUMN user_id INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_1b
    .catchall {:try_start_7 .. :try_end_f} :catchall_19

    const/4 v1, 0x1

    :try_start_10
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_13} :catch_14

    goto :goto_18

    :catch_14
    move-exception p1

    invoke-static {p0, p1, v0}, Lcom/android/launcher/e;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_18
    return v1

    :catchall_19
    move-exception v1

    goto :goto_2d

    :catch_1b
    move-exception v1

    :try_start_1c
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_19

    const/4 v1, 0x0

    :try_start_24
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_28

    goto :goto_2c

    :catch_28
    move-exception p1

    invoke-static {p0, p1, v0}, Lcom/android/launcher/e;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_2c
    return v1

    :goto_2d
    :try_start_2d
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_35

    :catch_31
    move-exception p1

    invoke-static {p0, p1, v0}, Lcom/android/launcher/e;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_35
    throw v1
.end method

.method private getDefaultUserSerial()J
    .registers 3

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher/BadgeProvider$BadgeHelper;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/launcher/BadgeProvider$BadgeHelper;
    .registers 3

    sget-object v0, Lcom/android/launcher/BadgeProvider$BadgeHelper;->sInstance:Lcom/android/launcher/BadgeProvider$BadgeHelper;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/launcher/BadgeProvider$BadgeHelper;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/launcher/BadgeProvider$BadgeHelper;->sInstance:Lcom/android/launcher/BadgeProvider$BadgeHelper;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/launcher/BadgeProvider$BadgeHelper;

    invoke-direct {v1, p0}, Lcom/android/launcher/BadgeProvider$BadgeHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/launcher/BadgeProvider$BadgeHelper;->sInstance:Lcom/android/launcher/BadgeProvider$BadgeHelper;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    sget-object p0, Lcom/android/launcher/BadgeProvider$BadgeHelper;->sInstance:Lcom/android/launcher/BadgeProvider$BadgeHelper;

    return-object p0
.end method

.method private getSerialNumberForUser(Landroid/os/UserHandle;)J
    .registers 3

    sget-object v0, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/launcher/BadgeProvider$BadgeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/pm/UserCache;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide p0

    return-wide p0
.end method

.method private initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;)J
    .registers 7

    const-wide/16 v0, -0x1

    const/4 p0, 0x0

    :try_start_3
    const-string v2, "SELECT MAX(_id) FROM badge"

    invoke-virtual {p1, v2, p0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_17

    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_17

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_16} :catch_2f
    .catchall {:try_start_3 .. :try_end_16} :catchall_2d

    goto :goto_18

    :cond_17
    move-wide v2, v0

    :goto_18
    cmp-long p1, v2, v0

    if-eqz p1, :cond_22

    if-eqz p0, :cond_4c

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_4c

    :cond_22
    :try_start_22
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Error: could not query max id"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2a} :catch_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_2d

    :catch_2a
    move-exception p1

    move-wide v0, v2

    goto :goto_30

    :catchall_2d
    move-exception p1

    goto :goto_4d

    :catch_2f
    move-exception p1

    :goto_30
    :try_start_30
    const-string v2, "BadgeProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initializeMaxId --- e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_46
    .catchall {:try_start_30 .. :try_end_46} :catchall_2d

    if-eqz p0, :cond_4b

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_4b
    move-wide v2, v0

    :cond_4c
    :goto_4c
    return-wide v2

    :goto_4d
    if-eqz p0, :cond_52

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_52
    throw p1
.end method

.method private recreateDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/BadgeProvider$BadgeHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_a

    const-string v1, "badge.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    goto :goto_12

    :cond_a
    const-string v0, "BadgeProvider"

    const-string/jumbo v1, "onDowngrade mContext = null"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_12
    invoke-virtual {p0, p1}, Lcom/android/launcher/BadgeProvider$BadgeHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


# virtual methods
.method public generateNewId()J
    .registers 5

    iget-wide v0, p0, Lcom/android/launcher/BadgeProvider$BadgeHelper;->mMaxId:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_e

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/launcher/BadgeProvider$BadgeHelper;->mMaxId:J

    return-wide v0

    :cond_e
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Error: max id was not initialized"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6

    const-string v0, "BadgeProvider"

    const-string v1, "create badge table"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/BadgeProvider$BadgeHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/BadgeProvider;->myUserSerialNumber(Landroid/content/Context;)J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CREATE TABLE IF NOT EXISTS badge(_id INTEGER PRIMARY KEY AUTOINCREMENT, app_package_name TEXT, app_badge_count INTEGER, user_id INTEGER NOT NULL DEFAULT 0, profileId INTEGER NOT NULL DEFAULT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/android/launcher/BadgeProvider$BadgeHelper;->mMaxId:J

    invoke-direct {p0, p1}, Lcom/android/launcher/BadgeProvider$BadgeHelper;->addDownloadInfoTable(Landroid/database/sqlite/SQLiteDatabase;)Z

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    const-string p2, "BadgeProvider"

    const-string/jumbo p3, "onDowngrade: Database will be recreated!"

    invoke-static {p2, p3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/BadgeProvider$BadgeHelper;->recreateDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7

    const-string/jumbo v0, "onUpgrade: oldVersion = "

    const-string v1, ", newVersion = "

    const-string v2, "BadgeProvider"

    invoke-static {v0, p2, v1, p3, v2}, Lcom/android/common/config/g;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x3

    if-ge p2, v0, :cond_1e

    :try_start_d
    invoke-direct {p0, p1}, Lcom/android/launcher/BadgeProvider$BadgeHelper;->addUserIdColumn(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-eqz v1, :cond_15

    move p2, v0

    goto :goto_1e

    :cond_15
    const-string/jumbo v0, "onUpgrade: addUserIdColumn failed!"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    :catch_1c
    move-exception v0

    goto :goto_40

    :cond_1e
    :goto_1e
    const/4 v0, 0x4

    if-ge p2, v0, :cond_2f

    invoke-direct {p0, p1}, Lcom/android/launcher/BadgeProvider$BadgeHelper;->addProfileIdColumn(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-eqz v1, :cond_29

    move p2, v0

    goto :goto_2f

    :cond_29
    const-string/jumbo v0, "onUpgrade: addProfileIdColumn failed!"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    :goto_2f
    const/4 v0, 0x5

    if-ge p2, v0, :cond_4e

    invoke-direct {p0, p1}, Lcom/android/launcher/BadgeProvider$BadgeHelper;->addDownloadInfoTable(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-eqz v0, :cond_39

    goto :goto_4e

    :cond_39
    const-string/jumbo v0, "onUpgrade: addDownloadInfoTable failed!"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_3f} :catch_1c

    goto :goto_4e

    :goto_40
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    if-eq p2, p3, :cond_4e

    const-string/jumbo p2, "onUpgrade failed, Database will be recreated!"

    invoke-static {v2, p2}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/BadgeProvider$BadgeHelper;->recreateDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_4e
    :goto_4e
    return-void
.end method
