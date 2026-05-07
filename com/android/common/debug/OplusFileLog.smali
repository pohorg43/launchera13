.class public final Lcom/android/common/debug/OplusFileLog;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/debug/OplusFileLog$FileComparator;,
        Lcom/android/common/debug/OplusFileLog$LogMsg;,
        Lcom/android/common/debug/OplusFileLog$CopyFileMsg;,
        Lcom/android/common/debug/OplusFileLog$LogWriterCallback;
    }
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field public static final DATE_TIME_FORMAT:Ljava/time/format/DateTimeFormatter;

.field private static final DIR_OTHER_FILE:Ljava/lang/String; = "other"

.field public static final ENABLED:Z = true

.field private static final FILE_LAUNCHER_DUMP:Ljava/lang/String; = "launcher_dump.txt"

.field private static final MAX_FILE_SIZE_5:I = 0x5

.field private static final PERMANENT_FILE:Ljava/lang/String; = "log-permanent"

.field private static final TAG:Ljava/lang/String; = "OplusFileLog"

.field private static final TIME_FORMAT:Ljava/text/SimpleDateFormat;

.field private static volatile mDumpWriter:Ljava/io/PrintWriter;

.field private static sHandler:Landroid/os/Handler;

.field private static sLogsDirectory:Ljava/io/File;

.field private static sTargetFileDir:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/common/debug/OplusFileLog;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/common/debug/OplusFileLog;->TIME_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-static {v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/android/common/debug/OplusFileLog;->DATE_TIME_FORMAT:Ljava/time/format/DateTimeFormatter;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/common/debug/OplusFileLog;->sHandler:Landroid/os/Handler;

    sput-object v0, Lcom/android/common/debug/OplusFileLog;->mDumpWriter:Ljava/io/PrintWriter;

    sput-object v0, Lcom/android/common/debug/OplusFileLog;->sLogsDirectory:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/common/debug/OplusFileLog;->lambda$copyFile$0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$102(Ljava/io/PrintWriter;)Ljava/io/PrintWriter;
    .registers 1

    sput-object p0, Lcom/android/common/debug/OplusFileLog;->mDumpWriter:Ljava/io/PrintWriter;

    return-object p0
.end method

.method public static synthetic access$200()Ljava/io/File;
    .registers 1

    sget-object v0, Lcom/android/common/debug/OplusFileLog;->sLogsDirectory:Ljava/io/File;

    return-object v0
.end method

.method public static synthetic access$300(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/common/debug/OplusFileLog;->doCopy(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$400()Ljava/text/SimpleDateFormat;
    .registers 1

    sget-object v0, Lcom/android/common/debug/OplusFileLog;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public static synthetic access$500(Ljava/io/File;)V
    .registers 1

    invoke-static {p0}, Lcom/android/common/debug/OplusFileLog;->deleteOldFiles(Ljava/io/File;)V

    return-void
.end method

.method public static synthetic access$600()Landroid/os/Handler;
    .registers 1

    sget-object v0, Lcom/android/common/debug/OplusFileLog;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic access$700(Ljava/io/PrintWriter;)V
    .registers 1

    invoke-static {p0}, Lcom/android/common/debug/OplusFileLog;->dumpFiles(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static copyFile(Ljava/lang/String;)V
    .registers 3

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/common/debug/OplusFileLog;->copyFile(Ljava/lang/String;J)V

    return-void
.end method

.method public static copyFile(Ljava/lang/String;J)V
    .registers 6

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->getLauncherMode()Lcom/android/launcher/mode/AbsLauncherMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/AbsLauncherMode;->mode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/common/debug/OplusFileLog;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroidx/constraintlayout/motion/widget/a;

    invoke-direct {v2, p0, v0}, Landroidx/constraintlayout/motion/widget/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-static {p0, p1}, Lcom/android/common/debug/OplusFileLog;->print(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    invoke-static {p0, p1, p2}, Lcom/android/common/debug/OplusFileLog;->print(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static dForever(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1}, Lcom/android/common/debug/OplusFileLog;->printForEver(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static deleteOldFiles(Ljava/io/File;)V
    .registers 7

    if-nez p0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "other"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    return-void

    :cond_18
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_1f

    return-void

    :cond_1f
    new-instance v0, Lcom/android/common/debug/OplusFileLog$FileComparator;

    invoke-direct {v0}, Lcom/android/common/debug/OplusFileLog$FileComparator;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_2a
    if-ge v1, v0, :cond_4f

    aget-object v3, p0, v1

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-static {v3}, Lcom/android/common/debug/OplusFileLog;->deleteOldFiles(Ljava/io/File;)V

    goto :goto_4c

    :cond_38
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "launcher_dump.txt"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_46

    add-int/lit8 v2, v2, 0x1

    :cond_46
    const/4 v4, 0x5

    if-le v2, v4, :cond_4c

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_4c
    :goto_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :cond_4f
    return-void
.end method

.method private static doCopy(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_46

    :try_start_e
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_3a

    const-wide/16 v4, 0x0

    :try_start_1e
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    move-object v2, p1

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_2e

    :try_start_27
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_3a

    :try_start_2a
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_46

    goto :goto_4e

    :catchall_2e
    move-exception v0

    if-eqz p1, :cond_39

    :try_start_31
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_39

    :catchall_35
    move-exception p1

    :try_start_36
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_39
    :goto_39
    throw v0
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_3a

    :catchall_3a
    move-exception p1

    if-eqz p0, :cond_45

    :try_start_3d
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    goto :goto_45

    :catchall_41
    move-exception p0

    :try_start_42
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_45
    :goto_45
    throw p1
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_46} :catch_46

    :catch_46
    move-exception p0

    const-string p1, "OplusFileLog"

    const-string v0, "error occur while copy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4e
    return-void
.end method

.method private static dumpFile(Ljava/io/PrintWriter;Ljava/io/File;)V
    .registers 5

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_48

    :try_start_6
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_10} :catch_48

    :try_start_10
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- logfile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ---"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_30
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3a

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_10 .. :try_end_39} :catchall_3e

    goto :goto_30

    :cond_3a
    :try_start_3a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_48

    goto :goto_48

    :catchall_3e
    move-exception p0

    :try_start_3f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_43

    goto :goto_47

    :catchall_43
    move-exception p1

    :try_start_44
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_47
    throw p0
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_48} :catch_48

    :catch_48
    :cond_48
    :goto_48
    return-void
.end method

.method private static dumpFiles(Ljava/io/PrintWriter;)V
    .registers 5

    sget-object v0, Lcom/android/common/debug/OplusFileLog;->sLogsDirectory:Ljava/io/File;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_17

    array-length v1, v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_17

    aget-object v3, v0, v2

    invoke-static {p0, v3}, Lcom/android/common/debug/OplusFileLog;->dumpFile(Ljava/io/PrintWriter;Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_17
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-static {p0, p1}, Lcom/android/common/debug/OplusFileLog;->print(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    invoke-static {p0, p1, p2}, Lcom/android/common/debug/OplusFileLog;->print(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static flushAll(Ljava/io/FileDescriptor;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-static {}, Lcom/android/common/debug/OplusFileLog;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {p0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    const/4 v3, 0x3

    invoke-static {v2, v3, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v2, v3, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-nez p0, :cond_28

    goto :goto_29

    :cond_28
    const/4 v1, 0x0

    :goto_29
    return v1
.end method

.method public static flushDump()V
    .registers 3

    invoke-static {}, Lcom/android/common/debug/OplusFileLog;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public static getDumpPrintWriter()Ljava/io/PrintWriter;
    .registers 6
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    sget-object v0, Lcom/android/common/debug/OplusFileLog;->mDumpWriter:Ljava/io/PrintWriter;

    if-nez v0, :cond_af

    sget-object v0, Lcom/android/common/debug/OplusFileLog;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/common/debug/OplusFileLog;->mDumpWriter:Ljava/io/PrintWriter;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_ac

    if-nez v1, :cond_aa

    :try_start_b
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/common/debug/OplusFileLog;->sLogsDirectory:Ljava/io/File;

    const-string v3, "launcher_dump.txt"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_1d
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2a

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_2a
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_33

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    :cond_33
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_78

    new-instance v2, Ljava/io/PrintWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    invoke-direct {v4, v1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    sput-object v2, Lcom/android/common/debug/OplusFileLog;->mDumpWriter:Ljava/io/PrintWriter;

    sget-object v1, Lcom/android/common/debug/OplusFileLog;->mDumpWriter:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---dumpsys_activity_top:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v3

    sget-object v4, Lcom/android/common/debug/OplusFileLog;->DATE_TIME_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v3, v4}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "---\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v1, Lcom/android/common/debug/OplusFileLog;->mDumpWriter:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    goto :goto_aa

    :cond_78
    const-string v2, "OplusFileLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDumpPrintWriter failed, dump file not exit "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_92} :catch_93
    .catchall {:try_start_b .. :try_end_92} :catchall_ac

    goto :goto_aa

    :catch_93
    move-exception v1

    :try_start_94
    const-string v2, "OplusFileLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDumpPrintWriter error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_aa
    :goto_aa
    monitor-exit v0

    goto :goto_af

    :catchall_ac
    move-exception v1

    monitor-exit v0
    :try_end_ae
    .catchall {:try_start_94 .. :try_end_ae} :catchall_ac

    throw v1

    :cond_af
    :goto_af
    sget-object v0, Lcom/android/common/debug/OplusFileLog;->mDumpWriter:Ljava/io/PrintWriter;

    return-object v0
.end method

.method public static getHandler()Landroid/os/Handler;
    .registers 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget-object v0, Lcom/android/common/debug/OplusFileLog;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/common/debug/OplusFileLog;->sHandler:Landroid/os/Handler;

    if-nez v1, :cond_1a

    new-instance v1, Landroid/os/Handler;

    const-string v2, "file-logger"

    invoke-static {v2}, Lcom/android/launcher3/util/Executors;->createAndStartNewLooper(Ljava/lang/String;)Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/android/common/debug/OplusFileLog$LogWriterCallback;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/common/debug/OplusFileLog$LogWriterCallback;-><init>(Lcom/android/common/debug/OplusFileLog$1;)V

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v1, Lcom/android/common/debug/OplusFileLog;->sHandler:Landroid/os/Handler;

    :cond_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1e

    sget-object v0, Lcom/android/common/debug/OplusFileLog;->sHandler:Landroid/os/Handler;

    return-object v0

    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1
.end method

.method private static synthetic lambda$copyFile$0(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    if-nez p0, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_f

    return-void

    :cond_f
    new-instance v1, Lcom/android/common/debug/OplusFileLog$CopyFileMsg;

    invoke-direct {v1}, Lcom/android/common/debug/OplusFileLog$CopyFileMsg;-><init>()V

    iput-object p0, v1, Lcom/android/common/debug/OplusFileLog$CopyFileMsg;->filePath:Ljava/lang/String;

    const-string p0, "-"

    invoke-static {p1, p0}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/android/common/debug/OplusFileLog$CopyFileMsg;->targetFileName:Ljava/lang/String;

    invoke-static {}, Lcom/android/common/debug/OplusFileLog;->getHandler()Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x4

    invoke-static {p0, p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public static print(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/common/debug/OplusFileLog;->print(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static print(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 7

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/android/common/debug/OplusFileLog;->TIME_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 p0, 0x2

    aput-object p1, v0, p0

    const-string p0, "%s %s %s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_30

    const-string p1, "\n"

    invoke-static {p0, p1}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_30
    new-instance p1, Lcom/android/common/debug/OplusFileLog$LogMsg;

    invoke-direct {p1, p0}, Lcom/android/common/debug/OplusFileLog$LogMsg;-><init>(Ljava/lang/String;)V

    sget-object p0, Lcom/android/common/debug/OplusFileLog;->sTargetFileDir:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6b

    sget-object p0, Lcom/android/common/debug/OplusFileLog;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/android/common/debug/OplusFileLog;->sLogsDirectory:Ljava/io/File;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/common/debug/OplusFileLog;->sTargetFileDir:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/common/debug/OplusFileLog$LogMsg;->targetFilePath:Ljava/lang/String;

    :cond_6b
    invoke-static {}, Lcom/android/common/debug/OplusFileLog;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-static {p0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private static printForEver(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/android/common/debug/OplusFileLog;->TIME_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 p0, 0x2

    aput-object p1, v0, p0

    const-string p0, "%s %s %s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/android/common/debug/OplusFileLog$LogMsg;

    invoke-direct {p1, p0}, Lcom/android/common/debug/OplusFileLog$LogMsg;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/android/common/debug/OplusFileLog;->sLogsDirectory:Ljava/io/File;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "other"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "log-permanent"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/common/debug/OplusFileLog$LogMsg;->targetFilePath:Ljava/lang/String;

    invoke-static {}, Lcom/android/common/debug/OplusFileLog;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-static {p0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public static setDir(Ljava/io/File;)V
    .registers 3

    sget-object v0, Lcom/android/common/debug/OplusFileLog;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/common/debug/OplusFileLog;->sHandler:Landroid/os/Handler;

    if-eqz v1, :cond_21

    sget-object v1, Lcom/android/common/debug/OplusFileLog;->sLogsDirectory:Ljava/io/File;

    invoke-virtual {p0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    sget-object v1, Lcom/android/common/debug/OplusFileLog;->sHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    check-cast v1, Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    const/4 v1, 0x0

    sput-object v1, Lcom/android/common/debug/OplusFileLog;->sHandler:Landroid/os/Handler;

    :cond_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_25

    sput-object p0, Lcom/android/common/debug/OplusFileLog;->sLogsDirectory:Ljava/io/File;

    return-void

    :catchall_25
    move-exception p0

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public static setFileDir(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/android/common/debug/OplusFileLog;->sTargetFileDir:Ljava/lang/String;

    return-void
.end method
