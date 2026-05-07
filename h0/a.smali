.class public final Lh0/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh0/a$b;,
        Lh0/a$d;,
        Lh0/a$c;,
        Lh0/a$e;
    }
.end annotation


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Ljava/io/File;

.field public final c:Ljava/io/File;

.field public final d:Ljava/io/File;

.field public final e:I

.field public f:J

.field public final g:I

.field public h:J

.field public i:Ljava/io/Writer;

.field public final j:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lh0/a$d;",
            ">;"
        }
    .end annotation
.end field

.field public k:I

.field public l:J

.field public final m:Ljava/util/concurrent/ThreadPoolExecutor;

.field public final n:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;IIJ)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lh0/a;->h:J

    new-instance v4, Ljava/util/LinkedHashMap;

    const/4 v5, 0x0

    const/high16 v6, 0x3f400000  # 0.75f

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v4, v0, Lh0/a;->j:Ljava/util/LinkedHashMap;

    iput-wide v2, v0, Lh0/a;->l:J

    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v14, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v14}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v15, Lh0/a$b;

    const/4 v3, 0x0

    invoke-direct {v15, v3}, Lh0/a$b;-><init>(Lh0/a$a;)V

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-wide/16 v11, 0x3c

    move-object v8, v2

    invoke-direct/range {v8 .. v15}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v2, v0, Lh0/a;->m:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lh0/a$a;

    invoke-direct {v2, v0}, Lh0/a$a;-><init>(Lh0/a;)V

    iput-object v2, v0, Lh0/a;->n:Ljava/util/concurrent/Callable;

    iput-object v1, v0, Lh0/a;->a:Ljava/io/File;

    move/from16 v2, p2

    iput v2, v0, Lh0/a;->e:I

    new-instance v2, Ljava/io/File;

    const-string v3, "journal"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lh0/a;->b:Ljava/io/File;

    new-instance v2, Ljava/io/File;

    const-string v3, "journal.tmp"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lh0/a;->c:Ljava/io/File;

    new-instance v2, Ljava/io/File;

    const-string v3, "journal.bkp"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lh0/a;->d:Ljava/io/File;

    move/from16 v1, p3

    iput v1, v0, Lh0/a;->g:I

    move-wide/from16 v1, p4

    iput-wide v1, v0, Lh0/a;->f:J

    return-void
.end method

.method public static a(Lh0/a;Lh0/a$c;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p1, Lh0/a$c;->a:Lh0/a$d;

    iget-object v1, v0, Lh0/a$d;->f:Lh0/a$c;

    if-ne v1, p1, :cond_f2

    const/4 v1, 0x0

    if-eqz p2, :cond_46

    iget-boolean v2, v0, Lh0/a$d;->e:Z

    if-nez v2, :cond_46

    move v2, v1

    :goto_f
    iget v3, p0, Lh0/a;->g:I

    if-ge v2, v3, :cond_46

    iget-object v3, p1, Lh0/a$c;->b:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_2c

    iget-object v3, v0, Lh0/a$d;->d:[Ljava/io/File;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_29

    invoke-virtual {p1}, Lh0/a$c;->a()V
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_f8

    monitor-exit p0

    goto/16 :goto_f1

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_2c
    :try_start_2c
    invoke-virtual {p1}, Lh0/a$c;->a()V

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Newly created entry didn\'t create value for index "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_46
    :goto_46
    iget p1, p0, Lh0/a;->g:I

    if-ge v1, p1, :cond_76

    iget-object p1, v0, Lh0/a$d;->d:[Ljava/io/File;

    aget-object p1, p1, v1

    if-eqz p2, :cond_70

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_73

    iget-object v2, v0, Lh0/a$d;->c:[Ljava/io/File;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    iget-object p1, v0, Lh0/a$d;->b:[J

    aget-wide v3, p1, v1

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    iget-object p1, v0, Lh0/a$d;->b:[J

    aput-wide v5, p1, v1

    iget-wide v7, p0, Lh0/a;->h:J

    sub-long/2addr v7, v3

    add-long/2addr v7, v5

    iput-wide v7, p0, Lh0/a;->h:J

    goto :goto_73

    :cond_70
    invoke-static {p1}, Lh0/a;->d(Ljava/io/File;)V

    :cond_73
    :goto_73
    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    :cond_76
    iget p1, p0, Lh0/a;->k:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Lh0/a;->k:I

    const/4 p1, 0x0

    iput-object p1, v0, Lh0/a$d;->f:Lh0/a$c;

    iget-boolean p1, v0, Lh0/a$d;->e:Z

    or-int/2addr p1, p2

    const/16 v2, 0xa

    const/16 v3, 0x20

    if-eqz p1, :cond_b7

    iput-boolean v1, v0, Lh0/a$d;->e:Z

    iget-object p1, p0, Lh0/a;->i:Ljava/io/Writer;

    const-string v1, "CLEAN"

    invoke-virtual {p1, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object p1, p0, Lh0/a;->i:Ljava/io/Writer;

    invoke-virtual {p1, v3}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    iget-object p1, p0, Lh0/a;->i:Ljava/io/Writer;

    iget-object v1, v0, Lh0/a$d;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object p1, p0, Lh0/a;->i:Ljava/io/Writer;

    invoke-virtual {v0}, Lh0/a$d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object p1, p0, Lh0/a;->i:Ljava/io/Writer;

    invoke-virtual {p1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    if-eqz p2, :cond_d6

    iget-wide p1, p0, Lh0/a;->l:J

    const-wide/16 v1, 0x1

    add-long/2addr v1, p1

    iput-wide v1, p0, Lh0/a;->l:J

    iput-wide p1, v0, Lh0/a$d;->g:J

    goto :goto_d6

    :cond_b7
    iget-object p1, p0, Lh0/a;->j:Ljava/util/LinkedHashMap;

    iget-object p2, v0, Lh0/a$d;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lh0/a;->i:Ljava/io/Writer;

    const-string p2, "REMOVE"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object p1, p0, Lh0/a;->i:Ljava/io/Writer;

    invoke-virtual {p1, v3}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    iget-object p1, p0, Lh0/a;->i:Ljava/io/Writer;

    iget-object p2, v0, Lh0/a$d;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object p1, p0, Lh0/a;->i:Ljava/io/Writer;

    invoke-virtual {p1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    :cond_d6
    :goto_d6
    iget-object p1, p0, Lh0/a;->i:Ljava/io/Writer;

    invoke-static {p1}, Lh0/a;->f(Ljava/io/Writer;)V

    iget-wide p1, p0, Lh0/a;->h:J

    iget-wide v0, p0, Lh0/a;->f:J

    cmp-long p1, p1, v0

    if-gtz p1, :cond_e9

    invoke-virtual {p0}, Lh0/a;->h()Z

    move-result p1

    if-eqz p1, :cond_f0

    :cond_e9
    iget-object p1, p0, Lh0/a;->m:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object p2, p0, Lh0/a;->n:Ljava/util/concurrent/Callable;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_f0
    .catchall {:try_start_2c .. :try_end_f0} :catchall_f8

    :cond_f0
    monitor-exit p0

    :goto_f1
    return-void

    :cond_f2
    :try_start_f2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_f8
    .catchall {:try_start_f2 .. :try_end_f8} :catchall_f8

    :catchall_f8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static c(Ljava/io/Writer;)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitUnbufferedIo()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :try_start_14
    invoke-virtual {p0}, Ljava/io/Writer;->close()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_1b

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :catchall_1b
    move-exception p0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p0
.end method

.method public static d(Ljava/io/File;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_13

    :cond_d
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    :cond_13
    :goto_13
    return-void
.end method

.method public static f(Ljava/io/Writer;)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitUnbufferedIo()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :try_start_14
    invoke-virtual {p0}, Ljava/io/Writer;->flush()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_1b

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :catchall_1b
    move-exception p0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p0
.end method

.method public static i(Ljava/io/File;IIJ)Lh0/a;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_8d

    if-lez p2, :cond_84

    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2a

    new-instance v1, Ljava/io/File;

    const-string v2, "journal"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_2a

    :cond_26
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lh0/a;->n(Ljava/io/File;Ljava/io/File;Z)V

    :cond_2a
    :goto_2a
    new-instance v0, Lh0/a;

    move-object v3, v0

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-wide v7, p3

    invoke-direct/range {v3 .. v8}, Lh0/a;-><init>(Ljava/io/File;IIJ)V

    iget-object v1, v0, Lh0/a;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_73

    :try_start_3c
    invoke-virtual {v0}, Lh0/a;->k()V

    invoke-virtual {v0}, Lh0/a;->j()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_42} :catch_43

    return-object v0

    :catch_43
    move-exception v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DiskLruCache "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is corrupt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", removing"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lh0/a;->close()V

    iget-object v0, v0, Lh0/a;->a:Ljava/io/File;

    invoke-static {v0}, Lh0/c;->a(Ljava/io/File;)V

    :cond_73
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    new-instance v0, Lh0/a;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lh0/a;-><init>(Ljava/io/File;IIJ)V

    invoke-virtual {v0}, Lh0/a;->m()V

    return-object v0

    :cond_84
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "valueCount <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxSize <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static n(Ljava/io/File;Ljava/io/File;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_5

    invoke-static {p1}, Lh0/a;->d(Ljava/io/File;)V

    :cond_5
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_c

    return-void

    :cond_c
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final b()V
    .registers 2

    iget-object p0, p0, Lh0/a;->i:Ljava/io/Writer;

    if-eqz p0, :cond_5

    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "cache is closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public declared-synchronized close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lh0/a;->i:Ljava/io/Writer;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_37

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lh0/a;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh0/a$d;

    iget-object v1, v1, Lh0/a$d;->f:Lh0/a$c;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lh0/a$c;->a()V

    goto :goto_16

    :cond_2a
    invoke-virtual {p0}, Lh0/a;->o()V

    iget-object v0, p0, Lh0/a;->i:Ljava/io/Writer;

    invoke-static {v0}, Lh0/a;->c(Ljava/io/Writer;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lh0/a;->i:Ljava/io/Writer;
    :try_end_35
    .catchall {:try_start_7 .. :try_end_35} :catchall_37

    monitor-exit p0

    return-void

    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e(Ljava/lang/String;)Lh0/a$c;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lh0/a;->b()V

    iget-object v0, p0, Lh0/a;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh0/a$d;

    const/4 v1, 0x0

    if-nez v0, :cond_1a

    new-instance v0, Lh0/a$d;

    invoke-direct {v0, p0, p1, v1}, Lh0/a$d;-><init>(Lh0/a;Ljava/lang/String;Lh0/a$a;)V

    iget-object v2, p0, Lh0/a;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    :cond_1a
    iget-object v2, v0, Lh0/a$d;->f:Lh0/a$c;
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_49

    if-eqz v2, :cond_20

    monitor-exit p0

    goto :goto_48

    :cond_20
    :goto_20
    :try_start_20
    new-instance v2, Lh0/a$c;

    invoke-direct {v2, p0, v0, v1}, Lh0/a$c;-><init>(Lh0/a;Lh0/a$d;Lh0/a$a;)V

    iput-object v2, v0, Lh0/a$d;->f:Lh0/a$c;

    iget-object v0, p0, Lh0/a;->i:Ljava/io/Writer;

    const-string v1, "DIRTY"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object v0, p0, Lh0/a;->i:Ljava/io/Writer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    iget-object v0, p0, Lh0/a;->i:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object p1, p0, Lh0/a;->i:Ljava/io/Writer;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    iget-object p1, p0, Lh0/a;->i:Ljava/io/Writer;

    invoke-static {p1}, Lh0/a;->f(Ljava/io/Writer;)V
    :try_end_46
    .catchall {:try_start_20 .. :try_end_46} :catchall_49

    monitor-exit p0

    move-object v1, v2

    :goto_48
    return-object v1

    :catchall_49
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized g(Ljava/lang/String;)Lh0/a$e;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lh0/a;->b()V

    iget-object v0, p0, Lh0/a;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh0/a$d;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_68

    const/4 v1, 0x0

    if-nez v0, :cond_11

    monitor-exit p0

    return-object v1

    :cond_11
    :try_start_11
    iget-boolean v2, v0, Lh0/a$d;->e:Z
    :try_end_13
    .catchall {:try_start_11 .. :try_end_13} :catchall_68

    if-nez v2, :cond_17

    monitor-exit p0

    return-object v1

    :cond_17
    :try_start_17
    iget-object v2, v0, Lh0/a$d;->c:[Ljava/io/File;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1b
    if-ge v4, v3, :cond_2a

    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5
    :try_end_23
    .catchall {:try_start_17 .. :try_end_23} :catchall_68

    if-nez v5, :cond_27

    monitor-exit p0

    return-object v1

    :cond_27
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_2a
    :try_start_2a
    iget v1, p0, Lh0/a;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lh0/a;->k:I

    iget-object v1, p0, Lh0/a;->i:Ljava/io/Writer;

    const-string v2, "READ"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object v1, p0, Lh0/a;->i:Ljava/io/Writer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    iget-object v1, p0, Lh0/a;->i:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object v1, p0, Lh0/a;->i:Ljava/io/Writer;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    invoke-virtual {p0}, Lh0/a;->h()Z

    move-result v1

    if-eqz v1, :cond_57

    iget-object v1, p0, Lh0/a;->m:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lh0/a;->n:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    :cond_57
    new-instance v8, Lh0/a$e;

    iget-wide v3, v0, Lh0/a$d;->g:J

    iget-object v5, v0, Lh0/a$d;->c:[Ljava/io/File;

    iget-object v6, v0, Lh0/a$d;->b:[J

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lh0/a$e;-><init>(Lh0/a;Ljava/lang/String;J[Ljava/io/File;[JLh0/a$a;)V
    :try_end_66
    .catchall {:try_start_2a .. :try_end_66} :catchall_68

    monitor-exit p0

    return-object v8

    :catchall_68
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final h()Z
    .registers 3

    iget v0, p0, Lh0/a;->k:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_10

    iget-object p0, p0, Lh0/a;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result p0

    if-lt v0, p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public final j()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lh0/a;->c:Ljava/io/File;

    invoke-static {v0}, Lh0/a;->d(Ljava/io/File;)V

    iget-object v0, p0, Lh0/a;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh0/a$d;

    iget-object v2, v1, Lh0/a$d;->f:Lh0/a$c;

    const/4 v3, 0x0

    if-nez v2, :cond_30

    :goto_20
    iget v2, p0, Lh0/a;->g:I

    if-ge v3, v2, :cond_f

    iget-wide v4, p0, Lh0/a;->h:J

    iget-object v2, v1, Lh0/a$d;->b:[J

    aget-wide v6, v2, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lh0/a;->h:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_30
    const/4 v2, 0x0

    iput-object v2, v1, Lh0/a$d;->f:Lh0/a$c;

    :goto_33
    iget v2, p0, Lh0/a;->g:I

    if-ge v3, v2, :cond_48

    iget-object v2, v1, Lh0/a$d;->c:[Ljava/io/File;

    aget-object v2, v2, v3

    invoke-static {v2}, Lh0/a;->d(Ljava/io/File;)V

    iget-object v2, v1, Lh0/a$d;->d:[Ljava/io/File;

    aget-object v2, v2, v3

    invoke-static {v2}, Lh0/a;->d(Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    :cond_48
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_f

    :cond_4c
    return-void
.end method

.method public final k()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ", "

    new-instance v1, Lh0/b;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lh0/a;->b:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lh0/c;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Lh0/b;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    :try_start_10
    invoke-virtual {v1}, Lh0/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lh0/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lh0/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lh0/b;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lh0/b;->b()Ljava/lang/String;

    move-result-object v6

    const-string v7, "libcore.io.DiskLruCache"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_91

    const-string v7, "1"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_91

    iget v7, p0, Lh0/a;->e:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_91

    iget v4, p0, Lh0/a;->g:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_91

    const-string v4, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_52
    .catchall {:try_start_10 .. :try_end_52} :catchall_c0

    if-eqz v4, :cond_91

    const/4 v0, 0x0

    move v2, v0

    :goto_56
    :try_start_56
    invoke-virtual {v1}, Lh0/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lh0/a;->l(Ljava/lang/String;)V
    :try_end_5d
    .catch Ljava/io/EOFException; {:try_start_56 .. :try_end_5d} :catch_60
    .catchall {:try_start_56 .. :try_end_5d} :catchall_c0

    add-int/lit8 v2, v2, 0x1

    goto :goto_56

    :catch_60
    :try_start_60
    iget-object v3, p0, Lh0/a;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lh0/a;->k:I

    iget v2, v1, Lh0/b;->e:I

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne v2, v3, :cond_70

    move v0, v4

    :cond_70
    if-eqz v0, :cond_76

    invoke-virtual {p0}, Lh0/a;->m()V

    goto :goto_8b

    :cond_76
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lh0/a;->b:Ljava/io/File;

    invoke-direct {v3, v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v4, Lh0/c;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lh0/a;->i:Ljava/io/Writer;
    :try_end_8b
    .catchall {:try_start_60 .. :try_end_8b} :catchall_c0

    :goto_8b
    :try_start_8b
    invoke-virtual {v1}, Lh0/b;->close()V
    :try_end_8e
    .catch Ljava/lang/RuntimeException; {:try_start_8b .. :try_end_8e} :catch_8f
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8e} :catch_8e

    :catch_8e
    return-void

    :catch_8f
    move-exception p0

    throw p0

    :cond_91
    :try_start_91
    new-instance p0, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unexpected journal header: ["

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_c0
    .catchall {:try_start_91 .. :try_end_c0} :catchall_c0

    :catchall_c0
    move-exception p0

    :try_start_c1
    invoke-virtual {v1}, Lh0/b;->close()V
    :try_end_c4
    .catch Ljava/lang/RuntimeException; {:try_start_c1 .. :try_end_c4} :catch_c5
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_c4} :catch_c4

    :catch_c4
    throw p0

    :catch_c5
    move-exception p0

    throw p0
.end method

.method public final l(Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string/jumbo v2, "unexpected journal line: "

    const/4 v3, -0x1

    if-eq v1, v3, :cond_ab

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ne v0, v3, :cond_29

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    if-ne v1, v5, :cond_2d

    const-string v5, "REMOVE"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2d

    iget-object p0, p0, Lh0/a;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_29
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_2d
    iget-object v5, p0, Lh0/a;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lh0/a$d;

    const/4 v6, 0x0

    if-nez v5, :cond_42

    new-instance v5, Lh0/a$d;

    invoke-direct {v5, p0, v4, v6}, Lh0/a$d;-><init>(Lh0/a;Ljava/lang/String;Lh0/a$a;)V

    iget-object v7, p0, Lh0/a;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_42
    const/4 v4, 0x5

    if-eq v0, v3, :cond_7f

    if-ne v1, v4, :cond_7f

    const-string v7, "CLEAN"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7f

    const/4 p0, 0x1

    add-int/2addr v0, p0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-boolean p0, v5, Lh0/a$d;->e:Z

    iput-object v6, v5, Lh0/a$d;->f:Lh0/a$c;

    array-length p0, p1

    iget-object v0, v5, Lh0/a$d;->h:Lh0/a;

    iget v0, v0, Lh0/a;->g:I

    if-ne p0, v0, :cond_7b

    const/4 p0, 0x0

    :goto_67
    :try_start_67
    array-length v0, p1

    if-ge p0, v0, :cond_a0

    iget-object v0, v5, Lh0/a$d;->b:[J

    aget-object v1, p1, p0

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    aput-wide v1, v0, p0
    :try_end_74
    .catch Ljava/lang/NumberFormatException; {:try_start_67 .. :try_end_74} :catch_77

    add-int/lit8 p0, p0, 0x1

    goto :goto_67

    :catch_77
    invoke-virtual {v5, p1}, Lh0/a$d;->b([Ljava/lang/String;)Ljava/io/IOException;

    throw v6

    :cond_7b
    invoke-virtual {v5, p1}, Lh0/a$d;->b([Ljava/lang/String;)Ljava/io/IOException;

    throw v6

    :cond_7f
    if-ne v0, v3, :cond_93

    if-ne v1, v4, :cond_93

    const-string v4, "DIRTY"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_93

    new-instance p1, Lh0/a$c;

    invoke-direct {p1, p0, v5, v6}, Lh0/a$c;-><init>(Lh0/a;Lh0/a$d;Lh0/a$a;)V

    iput-object p1, v5, Lh0/a$d;->f:Lh0/a$c;

    goto :goto_a0

    :cond_93
    if-ne v0, v3, :cond_a1

    const/4 p0, 0x4

    if-ne v1, p0, :cond_a1

    const-string p0, "READ"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a1

    :cond_a0
    :goto_a0
    return-void

    :cond_a1
    new-instance p0, Ljava/io/IOException;

    invoke-static {v2, p1}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_ab
    new-instance p0, Ljava/io/IOException;

    invoke-static {v2, p1}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final declared-synchronized m()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lh0/a;->i:Ljava/io/Writer;

    if-eqz v0, :cond_8

    invoke-static {v0}, Lh0/a;->c(Ljava/io/Writer;)V

    :cond_8
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lh0/a;->c:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lh0/c;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_e4

    :try_start_1b
    const-string v1, "libcore.io.DiskLruCache"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v1, p0, Lh0/a;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v1, p0, Lh0/a;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lh0/a;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh0/a$d;

    iget-object v3, v2, Lh0/a$d;->f:Lh0/a$c;

    const/16 v4, 0xa

    if-eqz v3, :cond_88

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DIRTY "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lh0/a$d;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_5a

    :catchall_86
    move-exception v1

    goto :goto_e0

    :cond_88
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CLEAN "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lh0/a$d;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lh0/a$d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_a8
    .catchall {:try_start_1b .. :try_end_a8} :catchall_86

    goto :goto_5a

    :cond_a9
    :try_start_a9
    invoke-static {v0}, Lh0/a;->c(Ljava/io/Writer;)V

    iget-object v0, p0, Lh0/a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_bc

    iget-object v0, p0, Lh0/a;->b:Ljava/io/File;

    iget-object v2, p0, Lh0/a;->d:Ljava/io/File;

    invoke-static {v0, v2, v1}, Lh0/a;->n(Ljava/io/File;Ljava/io/File;Z)V

    :cond_bc
    iget-object v0, p0, Lh0/a;->c:Ljava/io/File;

    iget-object v2, p0, Lh0/a;->b:Ljava/io/File;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lh0/a;->n(Ljava/io/File;Ljava/io/File;Z)V

    iget-object v0, p0, Lh0/a;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lh0/a;->b:Ljava/io/File;

    invoke-direct {v3, v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v1, Lh0/c;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lh0/a;->i:Ljava/io/Writer;
    :try_end_de
    .catchall {:try_start_a9 .. :try_end_de} :catchall_e4

    monitor-exit p0

    return-void

    :goto_e0
    :try_start_e0
    invoke-static {v0}, Lh0/a;->c(Ljava/io/Writer;)V

    throw v1
    :try_end_e4
    .catchall {:try_start_e0 .. :try_end_e4} :catchall_e4

    :catchall_e4
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final o()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-wide v0, p0, Lh0/a;->h:J

    iget-wide v2, p0, Lh0/a;->f:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_a9

    iget-object v0, p0, Lh0/a;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-enter p0

    :try_start_1f
    invoke-virtual {p0}, Lh0/a;->b()V

    iget-object v1, p0, Lh0/a;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh0/a$d;

    const/4 v2, 0x0

    if-eqz v1, :cond_a3

    iget-object v3, v1, Lh0/a$d;->f:Lh0/a$c;

    if-eqz v3, :cond_32

    goto :goto_a3

    :cond_32
    :goto_32
    iget v3, p0, Lh0/a;->g:I

    if-ge v2, v3, :cond_6e

    iget-object v3, v1, Lh0/a$d;->c:[Ljava/io/File;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5e

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_47

    goto :goto_5e

    :cond_47
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5e
    :goto_5e
    iget-wide v3, p0, Lh0/a;->h:J

    iget-object v5, v1, Lh0/a$d;->b:[J

    aget-wide v6, v5, v2

    sub-long/2addr v3, v6

    iput-wide v3, p0, Lh0/a;->h:J

    const-wide/16 v3, 0x0

    aput-wide v3, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    :cond_6e
    iget v1, p0, Lh0/a;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lh0/a;->k:I

    iget-object v1, p0, Lh0/a;->i:Ljava/io/Writer;

    const-string v2, "REMOVE"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object v1, p0, Lh0/a;->i:Ljava/io/Writer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    iget-object v1, p0, Lh0/a;->i:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object v1, p0, Lh0/a;->i:Ljava/io/Writer;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    iget-object v1, p0, Lh0/a;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lh0/a;->h()Z

    move-result v0

    if-eqz v0, :cond_a0

    iget-object v0, p0, Lh0/a;->m:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lh0/a;->n:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_a0
    .catchall {:try_start_1f .. :try_end_a0} :catchall_a6

    :cond_a0
    monitor-exit p0

    goto/16 :goto_0

    :cond_a3
    :goto_a3
    monitor-exit p0

    goto/16 :goto_0

    :catchall_a6
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_a9
    return-void
.end method
