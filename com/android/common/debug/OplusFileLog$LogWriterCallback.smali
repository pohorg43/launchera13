.class Lcom/android/common/debug/OplusFileLog$LogWriterCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/debug/OplusFileLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogWriterCallback"
.end annotation


# static fields
.field private static final CLOSE_DELAY:J = 0x1388L

.field private static final MSG_CLOSE:I = 0x2

.field private static final MSG_COPY_FILE:I = 0x4

.field private static final MSG_FLUSH:I = 0x3

.field private static final MSG_FLUSH_DUMP:I = 0x5

.field private static final MSG_WRITE:I = 0x1


# instance fields
.field private mCurrentFilePath:Ljava/lang/String;

.field private mCurrentWriter:Ljava/io/PrintWriter;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/debug/OplusFileLog$LogWriterCallback;->mCurrentFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/common/debug/OplusFileLog$LogWriterCallback;->mCurrentWriter:Ljava/io/PrintWriter;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/common/debug/OplusFileLog$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/common/debug/OplusFileLog$LogWriterCallback;-><init>()V

    return-void
.end method

.method private static closeDumpWriter()V
    .registers 1

    invoke-static {}, Lcom/android/common/debug/OplusFileLog;->getDumpPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/common/debug/OplusFileLog;->access$102(Ljava/io/PrintWriter;)Ljava/io/PrintWriter;

    return-void
.end method

.method private closeWriter()V
    .registers 2

    iget-object v0, p0, Lcom/android/common/debug/OplusFileLog$LogWriterCallback;->mCurrentWriter:Ljava/io/PrintWriter;

    invoke-static {v0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/debug/OplusFileLog$LogWriterCallback;->mCurrentWriter:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 8

    invoke-static {}, Lcom/android/common/debug/OplusFileLog;->access$200()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_13c

    iget v0, p1, Landroid/os/Message;->what:I

    const-string v2, "OplusFileLog"

    const/4 v3, 0x2

    if-eq v0, v1, :cond_8a

    if-eq v0, v3, :cond_86

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4e

    const/4 p0, 0x4

    if-eq v0, p0, :cond_27

    const/4 p0, 0x5

    if-eq v0, p0, :cond_1a

    return v1

    :cond_1a
    invoke-static {}, Lcom/android/common/debug/OplusFileLog;->getDumpPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    if-eqz p0, :cond_23

    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    :cond_23
    invoke-static {}, Lcom/android/common/debug/OplusFileLog$LogWriterCallback;->closeDumpWriter()V

    return v1

    :cond_27
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/common/debug/OplusFileLog$CopyFileMsg;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/common/debug/OplusFileLog;->access$200()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    const-string/jumbo v2, "other"

    invoke-static {p1, v0, v2, v0}, Landroidx/concurrent/futures/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/common/debug/OplusFileLog$CopyFileMsg;->targetFileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/common/debug/OplusFileLog$CopyFileMsg;->filePath:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/common/debug/OplusFileLog;->access$300(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_4e
    invoke-direct {p0}, Lcom/android/common/debug/OplusFileLog$LogWriterCallback;->closeWriter()V

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/util/Pair;

    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz p1, :cond_7e

    :try_start_59
    new-instance p1, Lcom/android/internal/util/FastPrintWriter;

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v3, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/io/FileDescriptor;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p1, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_67} :catch_78

    :try_start_67
    invoke-static {p1}, Lcom/android/common/debug/OplusFileLog;->access$700(Ljava/io/PrintWriter;)V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_6e

    :try_start_6a
    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6d} :catch_78

    goto :goto_7e

    :catchall_6e
    move-exception v0

    :try_start_6f
    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_73

    goto :goto_77

    :catchall_73
    move-exception p1

    :try_start_74
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_77
    throw v0
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_78} :catch_78

    :catch_78
    move-exception p1

    const-string v0, "handleMessage MSG_FLUSH error."

    invoke-static {v0, p1, v2}, Lcom/android/common/debug/b;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_7e
    :goto_7e
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return v1

    :cond_86
    invoke-direct {p0}, Lcom/android/common/debug/OplusFileLog$LogWriterCallback;->closeWriter()V

    return v1

    :cond_8a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/common/debug/OplusFileLog$LogMsg;

    iget-object v0, p1, Lcom/android/common/debug/OplusFileLog$LogMsg;->targetFilePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b4

    invoke-static {}, Lcom/android/common/debug/OplusFileLog;->access$400()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/android/common/debug/OplusFileLog;->access$200()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_b9

    :cond_b4
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_b9
    iget-object v5, p0, Lcom/android/common/debug/OplusFileLog$LogWriterCallback;->mCurrentFilePath:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c4

    invoke-direct {p0}, Lcom/android/common/debug/OplusFileLog$LogWriterCallback;->closeWriter()V

    :cond_c4
    :try_start_c4
    iget-object v5, p0, Lcom/android/common/debug/OplusFileLog$LogWriterCallback;->mCurrentWriter:Ljava/io/PrintWriter;

    if-nez v5, :cond_112

    iput-object v0, p0, Lcom/android/common/debug/OplusFileLog$LogWriterCallback;->mCurrentFilePath:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_d7

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_d7
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_e7

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    invoke-static {}, Lcom/android/common/debug/OplusFileLog;->access$200()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/debug/OplusFileLog;->access$500(Ljava/io/File;)V

    :cond_e7
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_fa

    new-instance v0, Ljava/io/PrintWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v4, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/android/common/debug/OplusFileLog$LogWriterCallback;->mCurrentWriter:Ljava/io/PrintWriter;

    goto :goto_112

    :cond_fa
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "log file not exit "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_112
    :goto_112
    iget-object v0, p0, Lcom/android/common/debug/OplusFileLog$LogWriterCallback;->mCurrentWriter:Ljava/io/PrintWriter;

    if-eqz v0, :cond_120

    iget-object p1, p1, Lcom/android/common/debug/OplusFileLog$LogMsg;->printInfo:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/common/debug/OplusFileLog$LogWriterCallback;->mCurrentWriter:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    :cond_120
    invoke-static {}, Lcom/android/common/debug/OplusFileLog;->access$600()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Lcom/android/common/debug/OplusFileLog;->access$600()Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v4, 0x1388

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_130
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_130} :catch_131

    goto :goto_13c

    :catch_131
    move-exception p1

    const-string v0, "FileLog"

    const-string v2, "Error writing logs to file"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/android/common/debug/OplusFileLog$LogWriterCallback;->closeWriter()V

    :cond_13c
    :goto_13c
    return v1
.end method
