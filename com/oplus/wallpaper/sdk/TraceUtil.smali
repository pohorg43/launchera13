.class final Lcom/oplus/wallpaper/sdk/TraceUtil;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/wallpaper/sdk/TraceUtil$TraceLevel;
    }
.end annotation


# static fields
.field public static final CACHE_DIR:Ljava/lang/String; = "wallpaper_setter_cache"

.field private static final DEBUG_VERBOSE:Z = false

.field private static final DIVIDE_STRING:Ljava/lang/String; = "******************************"

.field private static final MAX_TRACE_FILE_BYTE:I = 0x80000

.field private static final MAX_TRACE_FILE_COUNT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TraceUtil"

.field private static final TRACE_FILE:Ljava/lang/String; = "log_trace"

.field private static volatile sInstance:Lcom/oplus/wallpaper/sdk/TraceUtil;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSimpleDateFormat:Ljava/text/SimpleDateFormat;

.field private mStateTrace:Ljava/lang/StringBuilder;

.field private mTraceStateCacheCount:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/wallpaper/sdk/TraceUtil;->mTraceStateCacheCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/wallpaper/sdk/TraceUtil;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/oplus/wallpaper/sdk/TraceUtil;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/wallpaper/sdk/TraceUtil;->mContext:Landroid/content/Context;

    return-void

    :cond_1d
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "TraceUtil, context is null!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private deleteLogsFileIfNecessary()V
    .registers 9

    iget-object v0, p0, Lcom/oplus/wallpaper/sdk/TraceUtil;->mContext:Landroid/content/Context;

    const-string v1, "TraceUtil"

    if-nez v0, :cond_c

    const-string p0, "deleteLogsFileIfNecessary. The mContext is null!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/oplus/wallpaper/sdk/TraceUtil;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v2, "wallpaper_setter_cache"

    invoke-direct {v0, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_20

    return-void

    :cond_20
    new-instance p0, Ljava/io/File;

    const-string v2, "log_trace"

    invoke-direct {p0, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2e

    return-void

    :cond_2e
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/32 v5, 0x80000

    cmp-long p0, v3, v5

    if-gez p0, :cond_3a

    return-void

    :cond_3a
    const/4 p0, 0x1

    move v3, p0

    :goto_3c
    if-ltz v3, :cond_b6

    if-nez v3, :cond_46

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_4f

    :cond_46
    new-instance v4, Ljava/io/File;

    invoke-static {v2, v3}, Landroid/support/v4/media/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_4f
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_9f

    if-ne v3, p0, :cond_72

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_b3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteLogsFileIfNecessary. Delete launcher state trace file fail! The file is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b3

    :cond_72
    new-instance v5, Ljava/io/File;

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_b3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteLogsFileIfNecessary. Rename launcher state trace file fail! The file is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b3

    :cond_9f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteLogsFileIfNecessary. The launcher state trace file is not exist. The file is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b3
    :goto_b3
    add-int/lit8 v3, v3, -0x1

    goto :goto_3c

    :cond_b6
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oplus/wallpaper/sdk/TraceUtil;
    .registers 3

    sget-object v0, Lcom/oplus/wallpaper/sdk/TraceUtil;->sInstance:Lcom/oplus/wallpaper/sdk/TraceUtil;

    if-nez v0, :cond_17

    const-class v0, Lcom/oplus/wallpaper/sdk/TraceUtil;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/oplus/wallpaper/sdk/TraceUtil;->sInstance:Lcom/oplus/wallpaper/sdk/TraceUtil;

    if-nez v1, :cond_12

    new-instance v1, Lcom/oplus/wallpaper/sdk/TraceUtil;

    invoke-direct {v1, p0}, Lcom/oplus/wallpaper/sdk/TraceUtil;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/oplus/wallpaper/sdk/TraceUtil;->sInstance:Lcom/oplus/wallpaper/sdk/TraceUtil;

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
    sget-object p0, Lcom/oplus/wallpaper/sdk/TraceUtil;->sInstance:Lcom/oplus/wallpaper/sdk/TraceUtil;

    return-object p0
.end method

.method private getLabelForTraceLevel(Lcom/oplus/wallpaper/sdk/TraceUtil$TraceLevel;)Ljava/lang/String;
    .registers 2

    sget-object p0, Lcom/oplus/wallpaper/sdk/TraceUtil$1;->$SwitchMap$com$oplus$wallpaper$sdk$TraceUtil$TraceLevel:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_14

    const/4 p1, 0x2

    if-eq p0, p1, :cond_11

    const-string p0, ""

    goto :goto_16

    :cond_11
    const-string p0, "E"

    goto :goto_16

    :cond_14
    const-string p0, "I"

    :goto_16
    return-object p0
.end method

.method private writeLogsToFile()V
    .registers 6

    iget-object v0, p0, Lcom/oplus/wallpaper/sdk/TraceUtil;->mStateTrace:Ljava/lang/StringBuilder;

    const-string v1, "TraceUtil"

    if-nez v0, :cond_c

    const-string p0, "writeLogsToFile. The mStateTrace is null!"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    iget-object v0, p0, Lcom/oplus/wallpaper/sdk/TraceUtil;->mContext:Landroid/content/Context;

    if-nez v0, :cond_16

    const-string p0, "writeLogsToFile. The mContext is null!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_16
    const/4 v0, 0x0

    :try_start_17
    invoke-direct {p0}, Lcom/oplus/wallpaper/sdk/TraceUtil;->deleteLogsFileIfNecessary()V

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/oplus/wallpaper/sdk/TraceUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "wallpaper_setter_cache"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_30

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_30
    new-instance v3, Ljava/io/File;

    const-string v4, "log_trace"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_40

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    :cond_40
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    new-instance v3, Ljava/io/OutputStreamWriter;

    const-string v4, "gbk"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_51} :catch_73
    .catchall {:try_start_17 .. :try_end_51} :catchall_71

    :try_start_51
    iget-object v2, p0, Lcom/oplus/wallpaper/sdk/TraceUtil;->mStateTrace:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V

    iput-object v0, p0, Lcom/oplus/wallpaper/sdk/TraceUtil;->mStateTrace:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/wallpaper/sdk/TraceUtil;->mTraceStateCacheCount:I

    const-string p0, "writeLogsToFile success."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_67} :catch_6e
    .catchall {:try_start_51 .. :try_end_67} :catchall_6b

    :try_start_67
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_8d

    goto :goto_8d

    :catchall_6b
    move-exception p0

    move-object v0, v3

    goto :goto_8e

    :catch_6e
    move-exception p0

    move-object v0, v3

    goto :goto_74

    :catchall_71
    move-exception p0

    goto :goto_8e

    :catch_73
    move-exception p0

    :goto_74
    :try_start_74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeLogsToFile. e is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catchall {:try_start_74 .. :try_end_88} :catchall_71

    if-eqz v0, :cond_8d

    :try_start_8a
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_8d

    :catch_8d
    :cond_8d
    :goto_8d
    return-void

    :goto_8e
    if-eqz v0, :cond_93

    :try_start_90
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_93

    :catch_93
    :cond_93
    throw p0
.end method


# virtual methods
.method public logE(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/oplus/wallpaper/sdk/TraceUtil;->mStateTrace:Ljava/lang/StringBuilder;

    if-nez v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/oplus/wallpaper/sdk/TraceUtil;->mStateTrace:Ljava/lang/StringBuilder;

    :cond_b
    iget-object v0, p0, Lcom/oplus/wallpaper/sdk/TraceUtil;->mStateTrace:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/oplus/wallpaper/sdk/TraceUtil;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/oplus/wallpaper/sdk/TraceUtil$TraceLevel;->ERROR:Lcom/oplus/wallpaper/sdk/TraceUtil$TraceLevel;

    invoke-direct {p0, v3}, Lcom/oplus/wallpaper/sdk/TraceUtil;->getLabelForTraceLevel(Lcom/oplus/wallpaper/sdk/TraceUtil$TraceLevel;)Ljava/lang/String;

    move-result-object p0

    const-string v3, ": "

    invoke-static {v1, p0, v2, p1, v3}, Landroidx/room/s;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public logI(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/oplus/wallpaper/sdk/TraceUtil;->mStateTrace:Ljava/lang/StringBuilder;

    if-nez v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/oplus/wallpaper/sdk/TraceUtil;->mStateTrace:Ljava/lang/StringBuilder;

    :cond_b
    iget-object v0, p0, Lcom/oplus/wallpaper/sdk/TraceUtil;->mStateTrace:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/oplus/wallpaper/sdk/TraceUtil;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/oplus/wallpaper/sdk/TraceUtil$TraceLevel;->INFO:Lcom/oplus/wallpaper/sdk/TraceUtil$TraceLevel;

    invoke-direct {p0, v3}, Lcom/oplus/wallpaper/sdk/TraceUtil;->getLabelForTraceLevel(Lcom/oplus/wallpaper/sdk/TraceUtil$TraceLevel;)Ljava/lang/String;

    move-result-object p0

    const-string v3, ": "

    invoke-static {v1, p0, v2, p1, v3}, Landroidx/room/s;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public stopTrace()V
    .registers 3

    const-string v0, "TraceUtil"

    const-string v1, "stopTrace."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oplus/wallpaper/sdk/TraceUtil;->writeLogsToFile()V

    return-void
.end method
