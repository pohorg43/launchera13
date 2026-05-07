.class public Lcom/android/launcher3/ota/OpOtaManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/ota/OpOtaManager$OTARunnable;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "net.oneplus.launcher.backup.BackUpProvider"

.field public static final BACKUP_CONTENT_URI:Landroid/net/Uri;

.field public static final BACKUP_ENABLED:Ljava/lang/String; = "BACKUP_ENABLED"

.field private static final BACKUP_INPUT_DIR:Ljava/lang/String; = "old_data"

.field private static final BACKUP_OUTPUT_DIR:Ljava/lang/String; = "oneplus_ota"

.field public static final IS_BACKUPED:Ljava/lang/String; = "IS_BACKUPED"

.field public static final IS_BACKUPED_CONTENT_URI:Landroid/net/Uri;

.field private static final MAX_RETRY_COUNT:I = 0xa

.field private static final PREF_OP_OTA_DONE:Ljava/lang/String; = "oneplus_ota_done"

.field private static final RETRY_DURATION:I = 0x3e8

.field private static final RETRY_DURATION_SHORT:I = 0x1f4

.field private static final SPEED_RETRY_COUNT:I = 0x3

.field public static final TAG:Ljava/lang/String; = "OpOtaManager"

.field private static final isOnesOtaDebug:Z

.field private static volatile sInstance:Lcom/android/launcher3/ota/OpOtaManager;


# instance fields
.field private final mBackupInputDir:Ljava/lang/String;

.field private final mBackupOutputDir:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mOTARunnable:Lcom/android/launcher3/ota/OpOtaManager$OTARunnable;

.field private final mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "content://net.oneplus.launcher.backup.BackUpProvider/BACKUP_ENABLED"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/ota/OpOtaManager;->BACKUP_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://net.oneplus.launcher.backup.BackUpProvider/IS_BACKUPED"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/ota/OpOtaManager;->IS_BACKUPED_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/launcher3/ota/OpOtaManager;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/android/launcher3/ota/OpOtaManager;->mContext:Landroid/content/Context;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/launcher3/ota/OpOtaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v1, "oneplus_ota"

    invoke-static {p1, v0, v1}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/ota/OpOtaManager;->mBackupOutputDir:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/ota/OpOtaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "old_data"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/ota/OpOtaManager;->mBackupInputDir:Ljava/lang/String;

    sget-object p1, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/ota/OpOtaManager;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/android/launcher3/ota/OpOtaManager$OTARunnable;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/launcher3/ota/OpOtaManager$OTARunnable;-><init>(Lcom/android/launcher3/ota/OpOtaManager;Lcom/android/launcher3/ota/OpOtaManager$1;)V

    iput-object p1, p0, Lcom/android/launcher3/ota/OpOtaManager;->mOTARunnable:Lcom/android/launcher3/ota/OpOtaManager$OTARunnable;

    return-void
.end method

.method public static synthetic access$100(Lcom/android/launcher3/ota/OpOtaManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/ota/OpOtaManager;->runOTAIfNeededRetry(I)V

    return-void
.end method

.method private backup()V
    .registers 19

    move-object/from16 v0, p0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/android/launcher3/ota/OpOtaManager;->mBackupOutputDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v4, "Layout"

    invoke-static {v2, v3, v4}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_22

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_22
    iget-object v1, v0, Lcom/android/launcher3/ota/OpOtaManager;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/launcher3/ota/OpOtaManager;->mBackupInputDir:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/android/launcher3/ota/OpOtaManager;->mBackupOutputDir:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v0, "inputDir"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputDir"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ly3/h;

    invoke-direct {v4}, Ly3/h;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/launcher_layout_parameters.xml"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v2}, Ly3/h;->c(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ly3/h;->b(Landroid/content/Context;)V

    invoke-virtual {v4, v1, v0}, Ly3/h;->d(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Ly3/m;

    invoke-direct {v0}, Ly3/m;-><init>()V

    const/4 v5, 0x0

    iput-boolean v5, v0, Ly3/m;->e:Z

    iget-object v6, v4, Ly3/h;->b:Ljava/lang/String;

    iget-object v7, v4, Ly3/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Ly3/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v6, v4, Ly3/h;->l:Z

    iput-boolean v6, v0, Ly3/m;->g:Z

    const-string v6, "/databases/launcher.db"

    invoke-static {v2, v6}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/launcher_draw_layout.xml"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v7}, Ly3/m;->c(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ly3/m;->b(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v8}, Ly3/m;->e(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v7, Ly3/l;

    invoke-direct {v7}, Ly3/l;-><init>()V

    iput-boolean v5, v7, Ly3/m;->e:Z

    invoke-static {v2, v6}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_a6
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v0, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    :try_start_ac
    const-string v11, "favorites_simplify"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v10 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_cb

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v8
    :try_end_c0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ac .. :try_end_c0} :catch_cd

    if-lez v8, :cond_c4

    move v8, v9

    goto :goto_c5

    :cond_c4
    move v8, v5

    :goto_c5
    :try_start_c5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_c8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c5 .. :try_end_c8} :catch_c9

    goto :goto_e9

    :catch_c9
    move-exception v0

    goto :goto_cf

    :cond_cb
    move v8, v5

    goto :goto_e9

    :catch_cd
    move-exception v0

    move v8, v5

    :goto_cf
    const-string v10, "readData: table = "

    const-string v11, "favorites_simplify"

    const-string v12, ", exception = "

    invoke-static {v10, v11, v12}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "StandardLayoutConverter"

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e9
    const-string v0, "/launcher_layout.xml"

    if-eqz v8, :cond_11c

    iget-object v8, v4, Ly3/h;->b:Ljava/lang/String;

    iget-object v4, v4, Ly3/h;->a:Ljava/lang/String;

    invoke-virtual {v7, v8, v4}, Ly3/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v1, v4}, Ly3/m;->c(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ly3/m;->b(Landroid/content/Context;)V

    invoke-virtual {v7, v1, v0}, Ly3/m;->e(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_148

    :cond_11c
    new-instance v7, Ly3/m;

    invoke-direct {v7}, Ly3/m;-><init>()V

    iget-object v8, v4, Ly3/h;->b:Ljava/lang/String;

    iget-object v10, v4, Ly3/h;->a:Ljava/lang/String;

    invoke-virtual {v7, v8, v10}, Ly3/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v4, v4, Ly3/h;->l:Z

    iput-boolean v4, v7, Ly3/m;->g:Z

    invoke-static {v2, v6}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v1, v4}, Ly3/m;->c(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ly3/m;->b(Landroid/content/Context;)V

    invoke-virtual {v7, v1, v0}, Ly3/m;->e(Landroid/content/Context;Ljava/lang/String;)V

    :goto_148
    new-instance v0, Ly3/f;

    invoke-direct {v0, v5}, Ly3/f;-><init>(I)V

    const-string v4, "/databases/hidden_apps.db"

    invoke-static {v2, v4}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/launcher_hidden_space_list.xml"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v4}, Ly3/f;->b(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v5}, Ly3/f;->c(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Ly3/f;

    invoke-direct {v0, v9}, Ly3/f;-><init>(I)V

    invoke-static {v2, v6}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/launcher_search_history.xml"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2}, Ly3/f;->b(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Ly3/f;->c(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private clearOTATmpData()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/ota/OpOtaManager;->mBackupOutputDir:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/launcher3/ota/OpOtaManager;->deleteDir(Ljava/lang/String;)V

    return-void
.end method

.method private clearOldData()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/ota/OpOtaManager;->mBackupInputDir:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/launcher3/ota/OpOtaManager;->deleteDir(Ljava/lang/String;)V

    return-void
.end method

.method private deleteDir(Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_28

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v0, :cond_28

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/launcher3/ota/OpOtaManager;->deleteDir(Ljava/lang/String;)V

    :cond_22
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_28
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/launcher3/ota/OpOtaManager;
    .registers 3

    sget-object v0, Lcom/android/launcher3/ota/OpOtaManager;->sInstance:Lcom/android/launcher3/ota/OpOtaManager;

    if-nez v0, :cond_1b

    const-class v0, Lcom/android/launcher3/ota/OpOtaManager;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/launcher3/ota/OpOtaManager;->sInstance:Lcom/android/launcher3/ota/OpOtaManager;

    if-nez v1, :cond_16

    new-instance v1, Lcom/android/launcher3/ota/OpOtaManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/launcher3/ota/OpOtaManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/launcher3/ota/OpOtaManager;->sInstance:Lcom/android/launcher3/ota/OpOtaManager;

    :cond_16
    monitor-exit v0

    goto :goto_1b

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw p0

    :cond_1b
    :goto_1b
    sget-object p0, Lcom/android/launcher3/ota/OpOtaManager;->sInstance:Lcom/android/launcher3/ota/OpOtaManager;

    return-object p0
.end method

.method private getOldData(Landroid/content/Context;)Z
    .registers 11

    const/4 v0, 0x0

    if-nez p1, :cond_13

    sget-object p1, Lcom/android/launcher3/ota/OpOtaManager;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "context is null"

    invoke-static {p1, p0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_13
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/ota/OpOtaManager;->BACKUP_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "BACKUP_ENABLED"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_8e

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_82

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "old_data"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/launcher3/ota/OpOtaManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "key: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", uri: "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", filePath: "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v5, v6}, Lcom/android/common/util/q;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v4, v5}, Lcom/android/launcher3/ota/OpOtaManager;->saveFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_2a

    :cond_82
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    if-lez p0, :cond_8d

    const/4 v0, 0x1

    :cond_8d
    return v0

    :cond_8e
    sget-object p0, Lcom/android/launcher3/ota/OpOtaManager;->TAG:Ljava/lang/String;

    const-string p1, "back up bundle is null"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private isOPLauncherProviderExist(Landroid/content/Context;)Z
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    :cond_4
    :try_start_4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "net.oneplus.launcher"

    invoke-virtual {p1, v0, p0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_e} :catch_11

    if-eqz p1, :cond_11

    const/4 p0, 0x1

    :catch_11
    :cond_11
    return p0
.end method

.method private isOpPreferenceExist(Landroid/content/Context;)Z
    .registers 4

    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/launcher3/ota/OpOtaManager;->mBackupInputDir:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "shared_prefs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "gesture_settings.xml"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method private needRunOTA()Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/ota/OpOtaManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/launcher3/ota/OpOtaManager;->shouldGetOldData(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_28

    sget-object v0, Lcom/android/launcher3/ota/OpOtaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " runOTAIfNeeded should not get Old Data"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_28
    iget-object v0, p0, Lcom/android/launcher3/ota/OpOtaManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/launcher3/ota/OpOtaManager;->getOldData(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4f

    sget-object v0, Lcom/android/launcher3/ota/OpOtaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " runOTAIfNeeded get oldData fail"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_4f
    iget-object v0, p0, Lcom/android/launcher3/ota/OpOtaManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/launcher3/ota/OpOtaManager;->isOpPreferenceExist(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_59

    const/4 p0, 0x1

    return p0

    :cond_59
    return v1
.end method

.method private static releaseInstance()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/ota/OpOtaManager;->sInstance:Lcom/android/launcher3/ota/OpOtaManager;

    return-void
.end method

.method private restore()V
    .registers 5

    new-instance v0, Lcom/android/launcher3/backup/OpLauncherOTARestorePlugin;

    invoke-direct {v0}, Lcom/android/launcher3/backup/OpLauncherOTARestorePlugin;-><init>()V

    new-instance v1, Lcom/android/launcher3/ota/OpOtaManager$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/ota/OpOtaManager$1;-><init>(Lcom/android/launcher3/ota/OpOtaManager;)V

    new-instance v2, Lcom/oplus/backup/sdk/common/host/BREngineConfig;

    invoke-direct {v2}, Lcom/oplus/backup/sdk/common/host/BREngineConfig;-><init>()V

    iget-object v3, p0, Lcom/android/launcher3/ota/OpOtaManager;->mBackupOutputDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/oplus/backup/sdk/common/host/BREngineConfig;->setRestoreRootPath(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/ota/OpOtaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/launcher/backup/LauncherBRBasePlugin;->onCreate(Landroid/content/Context;Lcom/oplus/backup/sdk/component/BRPluginHandler;Lcom/oplus/backup/sdk/common/host/BREngineConfig;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/android/launcher/backup/LauncherBRBasePlugin;->onPrepare(Landroid/os/Bundle;)Landroid/os/Bundle;

    invoke-virtual {v0, p0}, Lcom/android/launcher/backup/LauncherBRBasePlugin;->onRestore(Landroid/os/Bundle;)V

    invoke-virtual {v0, p0}, Lcom/android/launcher/backup/LauncherBRBasePlugin;->onDestroy(Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method private runOTAIfNeededRetry(I)V
    .registers 6

    sget-object v0, Lcom/android/launcher3/ota/OpOtaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " runOTAIfNeededRetry time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/ota/OpOtaManager;->needRunOTA()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_64

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " runOTAIfNeeded do migrate"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/ota/OpOtaManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v2, v0}, Lcom/android/statistics/LauncherStatistics;->statsOpOTAResult(ZLjava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/ota/OpOtaManager;->backup()V

    invoke-direct {p0}, Lcom/android/launcher3/ota/OpOtaManager;->clearOldData()V

    invoke-direct {p0}, Lcom/android/launcher3/ota/OpOtaManager;->restore()V

    invoke-direct {p0}, Lcom/android/launcher3/ota/OpOtaManager;->clearOTATmpData()V

    iget-object p1, p0, Lcom/android/launcher3/ota/OpOtaManager;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lcom/android/launcher3/ota/OpOtaManager;->setOTADone()V

    goto :goto_94

    :cond_64
    const/16 v0, 0xa

    if-ge p1, v0, :cond_81

    const/4 v0, 0x3

    if-gt p1, v0, :cond_6e

    const/16 v0, 0x1f4

    goto :goto_70

    :cond_6e
    const/16 v0, 0x3e8

    :goto_70
    iget-object v1, p0, Lcom/android/launcher3/ota/OpOtaManager;->mOTARunnable:Lcom/android/launcher3/ota/OpOtaManager$OTARunnable;

    if-eqz v1, :cond_94

    add-int/2addr p1, v2

    invoke-virtual {v1, p1}, Lcom/android/launcher3/ota/OpOtaManager$OTARunnable;->setTime(I)V

    iget-object p1, p0, Lcom/android/launcher3/ota/OpOtaManager;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/launcher3/ota/OpOtaManager;->mOTARunnable:Lcom/android/launcher3/ota/OpOtaManager$OTARunnable;

    int-to-long v0, v0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_94

    :cond_81
    iget-object p1, p0, Lcom/android/launcher3/ota/OpOtaManager;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lcom/android/launcher3/ota/OpOtaManager;->setOTADone()V

    iget-object p0, p0, Lcom/android/launcher3/ota/OpOtaManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    const-string p1, "OPLauncher exist but fetch data fail"

    invoke-virtual {p0, v3, p1}, Lcom/android/statistics/LauncherStatistics;->statsOpOTAResult(ZLjava/lang/String;)V

    :cond_94
    :goto_94
    return-void
.end method

.method private saveFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 7

    const/4 p0, 0x0

    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1f

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    :cond_1f
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_30

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_30
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_38} :catch_7e
    .catchall {:try_start_1 .. :try_end_38} :catchall_7b

    if-nez p1, :cond_45

    if-eqz p1, :cond_44

    :try_start_3c
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_40

    goto :goto_44

    :catch_40
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_44
    :goto_44
    return-void

    :cond_45
    :try_start_45
    new-instance p2, Ljava/io/FileOutputStream;

    const/4 v0, 0x0

    invoke-direct {p2, p3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_4b} :catch_75
    .catchall {:try_start_45 .. :try_end_4b} :catchall_6f

    const/16 p0, 0x400

    :try_start_4d
    new-array p0, p0, [B

    invoke-virtual {p1, p0}, Ljava/io/InputStream;->read([B)I

    move-result p3

    :goto_53
    const/4 v1, -0x1

    if-eq p3, v1, :cond_5e

    invoke-virtual {p2, p0, v0, p3}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {p1, p0}, Ljava/io/InputStream;->read([B)I

    move-result p3
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_5d} :catch_6a
    .catchall {:try_start_4d .. :try_end_5d} :catchall_65

    goto :goto_53

    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_64} :catch_89

    goto :goto_94

    :catchall_65
    move-exception p0

    move-object v2, p1

    move-object p1, p0

    move-object p0, v2

    goto :goto_96

    :catch_6a
    move-exception p0

    move-object v2, p1

    move-object p1, p0

    move-object p0, v2

    goto :goto_80

    :catchall_6f
    move-exception p2

    move-object v2, p2

    move-object p2, p0

    move-object p0, p1

    move-object p1, v2

    goto :goto_96

    :catch_75
    move-exception p2

    move-object v2, p2

    move-object p2, p0

    move-object p0, p1

    move-object p1, v2

    goto :goto_80

    :catchall_7b
    move-exception p1

    move-object p2, p0

    goto :goto_96

    :catch_7e
    move-exception p1

    move-object p2, p0

    :goto_80
    :try_start_80
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_95

    if-eqz p0, :cond_8b

    :try_start_85
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_8b

    :catch_89
    move-exception p0

    goto :goto_91

    :cond_8b
    :goto_8b
    if-eqz p2, :cond_94

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_90} :catch_89

    goto :goto_94

    :goto_91
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_94
    :goto_94
    return-void

    :catchall_95
    move-exception p1

    :goto_96
    if-eqz p0, :cond_9e

    :try_start_98
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_9e

    :catch_9c
    move-exception p0

    goto :goto_a4

    :cond_9e
    :goto_9e
    if-eqz p2, :cond_a7

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_a3} :catch_9c

    goto :goto_a7

    :goto_a4
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_a7
    :goto_a7
    throw p1
.end method

.method private setOTADone()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/ota/OpOtaManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_14

    sget-object v0, Lcom/android/launcher3/ota/OpOtaManager;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "mContext is null"

    invoke-static {v0, p0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_14
    const/4 p0, 0x0

    const-string v1, "com.android.launcher3.prefs"

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "oneplus_ota_done"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private shouldGetOldData(Landroid/content/Context;)Z
    .registers 5

    const-string v0, "IS_BACKUPED"

    const/4 v1, 0x0

    if-nez p1, :cond_15

    sget-object p1, Lcom/android/launcher3/ota/OpOtaManager;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "context is null"

    invoke-static {p1, p0, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_15
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    :try_start_19
    sget-object p1, Lcom/android/launcher3/ota/OpOtaManager;->IS_BACKUPED_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_29

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_29
    sget-object p0, Lcom/android/launcher3/ota/OpOtaManager;->TAG:Ljava/lang/String;

    const-string p1, "back up bundle is null"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_30} :catch_31

    goto :goto_48

    :catch_31
    move-exception p0

    sget-object p1, Lcom/android/launcher3/ota/OpOtaManager;->TAG:Ljava/lang/String;

    const-string v0, "OPLauncher BackupProvider not exit, skip backup msg = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_48
    return v1
.end method


# virtual methods
.method public isRunning()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/ota/OpOtaManager;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public release()V
    .registers 3

    invoke-static {}, Lcom/android/launcher3/ota/OpOtaManager;->releaseInstance()V

    iget-object v0, p0, Lcom/android/launcher3/ota/OpOtaManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher3/ota/OpOtaManager;->mOTARunnable:Lcom/android/launcher3/ota/OpOtaManager$OTARunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/ota/OpOtaManager;->mOTARunnable:Lcom/android/launcher3/ota/OpOtaManager$OTARunnable;

    return-void
.end method

.method public runOtaAsyncIfNeeded()Z
    .registers 5

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isOPDevice:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lcom/android/launcher3/ota/OpOtaManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/common/util/UserUtils;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_f

    return v1

    :cond_f
    sget-object v0, Lcom/android/launcher3/ota/OpOtaManager;->TAG:Ljava/lang/String;

    const-string v2, "runOTAIfNeeded path = "

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/ota/OpOtaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher3/ota/OpOtaManager;->mContext:Landroid/content/Context;

    const-string v3, "com.android.launcher3.prefs"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "oneplus_ota_done"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_58

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " runOTAIfNeeded OTA done"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_58
    iget-object v2, p0, Lcom/android/launcher3/ota/OpOtaManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/launcher3/ota/OpOtaManager;->isOPLauncherProviderExist(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_7d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " runOTAIfNeeded OPLauncher not exist"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_7d
    iget-object v1, p0, Lcom/android/launcher3/ota/OpOtaManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/launcher3/ota/OpOtaManager;->shouldGetOldData(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_90

    const-string v1, "opDevice ota is running"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/ota/OpOtaManager;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_90
    iget-object v0, p0, Lcom/android/launcher3/ota/OpOtaManager;->mOTARunnable:Lcom/android/launcher3/ota/OpOtaManager$OTARunnable;

    if-eqz v0, :cond_9e

    invoke-virtual {v0, v2}, Lcom/android/launcher3/ota/OpOtaManager$OTARunnable;->setTime(I)V

    iget-object v0, p0, Lcom/android/launcher3/ota/OpOtaManager;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/launcher3/ota/OpOtaManager;->mOTARunnable:Lcom/android/launcher3/ota/OpOtaManager$OTARunnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_9e
    return v2
.end method
