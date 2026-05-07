.class public Lcom/android/launcher/backup/util/TarToolUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final BASE_DIR:Ljava/lang/String; = ""

.field private static final BLACK_FILE:[Ljava/lang/String;

.field private static final BUFFER:I = 0x8000

.field public static final EXT:Ljava/lang/String; = ".tar"

.field private static final TAG:Ljava/lang/String; = "BR-Launcher_TarToolUtils"

.field private static sCompressDir:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 8

    const-string v0, "com.android.launcher/databases/badge.db"

    const-string v1, "com.android.launcher/app_dex_opt"

    const-string v2, "com.android.launcher/app_local_plugins"

    const-string v3, "com.android.launcher/app_dex_opt_null"

    const-string v4, "com.android.launcher/cache"

    const-string v5, "com.android.launcher/shared_prefs"

    const-string v6, "com.android.launcher/files"

    const-string v7, "com.android.launcher/code_cache"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/backup/util/TarToolUtils;->BLACK_FILE:[Ljava/lang/String;

    const-string v0, "data/data/com.android.launcher"

    sput-object v0, Lcom/android/launcher/backup/util/TarToolUtils;->sCompressDir:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static archive(Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;Ljava/io/File;Ljava/io/File;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_a

    sget-object p0, Lcom/android/launcher/backup/util/TarToolUtils;->TAG:Ljava/lang/String;

    const-string p1, "archive restorePlugin is null "

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    sget-object v0, Lcom/android/launcher/backup/util/TarToolUtils;->TAG:Ljava/lang/String;

    const-string v1, "archive srcFile = "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/oplus/backup/sdk/common/utils/BRLog;->getModifiedFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " destFile = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/oplus/backup/sdk/common/utils/BRLog;->getModifiedFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_2d
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->getFileDescriptor(Ljava/lang/String;)Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_3a
    .catchall {:try_start_2d .. :try_end_3a} :catchall_68

    :try_start_3a
    new-instance p0, La4/d;

    invoke-direct {p0, v1}, La4/d;-><init>(Ljava/io/OutputStream;)V
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_65

    :try_start_3f
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_56

    array-length p2, p1

    if-lez p2, :cond_56

    array-length p2, p1

    const/4 v0, 0x0

    :goto_4a
    if-ge v0, p2, :cond_56

    aget-object v2, p1, v0

    const-string v3, ""

    invoke-static {v2, p0, v3}, Lcom/android/launcher/backup/util/TarToolUtils;->archive(Ljava/io/File;La4/d;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    :cond_56
    iget-object p1, p0, La4/d;->l:Lc4/d;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_5b
    .catchall {:try_start_3f .. :try_end_5b} :catchall_62

    invoke-static {p0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return-void

    :catchall_62
    move-exception p1

    move-object v0, p0

    goto :goto_6b

    :catchall_65
    move-exception p0

    move-object p1, p0

    goto :goto_6b

    :catchall_68
    move-exception p0

    move-object p1, p0

    move-object v1, v0

    :goto_6b
    invoke-static {v0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw p1
.end method

.method private static archive(Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;Ljava/io/File;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/launcher/backup/util/TarToolUtils;->archive(Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method public static archive(Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sput-object p1, Lcom/android/launcher/backup/util/TarToolUtils;->sCompressDir:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p2}, Lcom/android/launcher/backup/util/TarToolUtils;->archive(Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method private static archive(Ljava/io/File;La4/d;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_1a

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/backup/util/TarToolUtils;->isBlackFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1a

    :cond_d
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {p0, p1, p2}, Lcom/android/launcher/backup/util/TarToolUtils;->archiveDir(Ljava/io/File;La4/d;Ljava/lang/String;)V

    goto :goto_1a

    :cond_17
    invoke-static {p0, p1, p2}, Lcom/android/launcher/backup/util/TarToolUtils;->archiveFile(Ljava/io/File;La4/d;Ljava/lang/String;)V

    :cond_1a
    :goto_1a
    return-void
.end method

.method private static archiveDir(Ljava/io/File;La4/d;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_5d

    array-length v1, v0

    if-nez v1, :cond_a

    goto :goto_5d

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/launcher/backup/util/TarToolUtils;->sCompressDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, La4/b;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, La4/b;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher/backup/util/TarToolUtils;->getMode(Ljava/lang/String;)I

    move-result v1

    iput v1, v2, La4/b;->c:I

    invoke-virtual {p1, v2}, La4/d;->f(Lz3/a;)V

    invoke-virtual {p1}, La4/d;->a()V

    array-length v1, v0

    :goto_3e
    if-ge v3, v1, :cond_5c

    aget-object v2, v0, v3

    invoke-static {p2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, p1, v4}, Lcom/android/launcher/backup/util/TarToolUtils;->archive(Ljava/io/File;La4/d;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    :cond_5c
    return-void

    :cond_5d
    :goto_5d
    sget-object p0, Lcom/android/launcher/backup/util/TarToolUtils;->TAG:Ljava/lang/String;

    const-string p1, "archiveDir dir is null"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static archiveFile(Ljava/io/File;La4/d;Ljava/lang/String;)V
    .registers 9

    if-eqz p0, :cond_af

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/backup/util/TarToolUtils;->isBlackFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_af

    :cond_e
    const/4 v0, 0x0

    :try_start_f
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_14} :catch_7b
    .catchall {:try_start_f .. :try_end_14} :catchall_78

    :try_start_14
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_19} :catch_74
    .catchall {:try_start_14 .. :try_end_19} :catchall_70

    :try_start_19
    new-instance v0, La4/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/launcher/backup/util/TarToolUtils;->sCompressDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x0

    invoke-direct {v0, p2, v3}, La4/b;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, La4/b;->m(J)V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/launcher/backup/util/TarToolUtils;->getMode(Ljava/lang/String;)I

    move-result p2

    iput p2, v0, La4/b;->c:I

    const/4 p2, 0x2

    iput p2, p1, La4/d;->f:I

    invoke-virtual {p1, v0}, La4/d;->f(Lz3/a;)V

    const p2, 0x8000

    new-array v0, p2, [B

    :goto_58
    invoke-virtual {v2, v0, v3, p2}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_63

    invoke-virtual {p1, v0, v3, v4}, La4/d;->write([BII)V

    goto :goto_58

    :cond_63
    invoke-virtual {p1}, La4/d;->a()V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_66} :catch_6d
    .catchall {:try_start_19 .. :try_end_66} :catchall_6a

    invoke-static {v1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_a3

    :catchall_6a
    move-exception p0

    move-object v0, v2

    goto :goto_71

    :catch_6d
    move-exception p1

    move-object v0, v2

    goto :goto_75

    :catchall_70
    move-exception p0

    :goto_71
    move-object p2, v0

    move-object v0, v1

    goto :goto_a8

    :catch_74
    move-exception p1

    :goto_75
    move-object p2, v0

    move-object v0, v1

    goto :goto_7d

    :catchall_78
    move-exception p0

    move-object p2, v0

    goto :goto_a8

    :catch_7b
    move-exception p1

    move-object p2, v0

    :goto_7d
    :try_start_7d
    sget-object v1, Lcom/android/launcher/backup/util/TarToolUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "archiveFile error. file = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/oplus/backup/sdk/common/utils/BRLog;->getModifiedFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " e = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9f
    .catchall {:try_start_7d .. :try_end_9f} :catchall_a7

    invoke-static {v0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    move-object v2, p2

    :goto_a3
    invoke-static {v2}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return-void

    :catchall_a7
    move-exception p0

    :goto_a8
    invoke-static {v0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {p2}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw p0

    :cond_af
    :goto_af
    return-void
.end method

.method private static deArchive(Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;Ljava/io/File;Ljava/io/File;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/launcher/backup/util/TarToolUtils;->TAG:Ljava/lang/String;

    const-string v1, "deArchive srcFile = "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/oplus/backup/sdk/common/utils/BRLog;->getModifiedFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " destFile = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/oplus/backup/sdk/common/utils/BRLog;->getModifiedFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_23
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->getFileDescriptor(Ljava/lang/String;)Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_30
    .catchall {:try_start_23 .. :try_end_30} :catchall_47

    :try_start_30
    new-instance p0, La4/c;

    invoke-direct {p0, v1}, La4/c;-><init>(Ljava/io/InputStream;)V
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_42

    :try_start_35
    invoke-static {p2, p0}, Lcom/android/launcher/backup/util/TarToolUtils;->deArchive(Ljava/io/File;La4/c;)V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_3f

    invoke-static {v1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {p0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return-void

    :catchall_3f
    move-exception p1

    move-object v0, p0

    goto :goto_44

    :catchall_42
    move-exception p0

    move-object p1, p0

    :goto_44
    move-object p0, v0

    move-object v0, v1

    goto :goto_4a

    :catchall_47
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    :goto_4a
    invoke-static {v0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {p0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw p1
.end method

.method private static deArchive(Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;Ljava/io/File;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/android/launcher/backup/util/TarToolUtils;->deArchive(Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method public static deArchive(Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p2}, Lcom/android/launcher/backup/util/TarToolUtils;->deArchive(Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method private static deArchive(Ljava/io/File;La4/c;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, La4/c;->f()La4/b;

    move-result-object v0

    if-eqz v0, :cond_5c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, La4/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher/backup/util/TarToolUtils;->isBlackFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    goto :goto_0

    :cond_30
    invoke-static {v2}, Lcom/android/launcher/backup/util/TarToolUtils;->fileProber(Ljava/io/File;)V

    invoke-virtual {v0}, La4/b;->d()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/launcher/backup/util/TarToolUtils;->TAG:Ljava/lang/String;

    const-string v1, "deArchiveFile delete failed. dirFile = "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Lcom/oplus/backup/sdk/common/utils/BRLog;->getModifiedFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_56
    iget v0, v0, La4/b;->c:I

    invoke-static {v2, p1, v0}, Lcom/android/launcher/backup/util/TarToolUtils;->deArchiveFile(Ljava/io/File;La4/c;I)V

    goto :goto_0

    :cond_5c
    return-void
.end method

.method private static deArchiveFile(Ljava/io/File;La4/c;I)V
    .registers 9

    const-string p2, "deArchiveFile delete failed. destFile = "

    const v0, 0x8000

    new-array v1, v0, [B

    const/4 v2, 0x0

    :try_start_8
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_12} :catch_5f
    .catchall {:try_start_8 .. :try_end_12} :catchall_5d

    :try_start_12
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, ".oat"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_3c

    sget-object p1, Lcom/android/launcher/backup/util/TarToolUtils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/oplus/backup/sdk/common/utils/BRLog;->getModifiedFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3c
    sget-object p1, Lcom/android/launcher/backup/util/TarToolUtils;->TAG:Ljava/lang/String;

    const-string v0, "deArchiveFile - oat file delete it and return"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_43} :catch_5a
    .catchall {:try_start_12 .. :try_end_43} :catchall_57

    invoke-static {v3}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return-void

    :cond_47
    :goto_47
    const/4 v2, 0x0

    :try_start_48
    invoke-virtual {p1, v1, v2, v0}, La4/c;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_53

    invoke-virtual {v3, v1, v2, v4}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_52} :catch_5a
    .catchall {:try_start_48 .. :try_end_52} :catchall_57

    goto :goto_47

    :cond_53
    invoke-static {v3}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_a1

    :catchall_57
    move-exception p0

    move-object v2, v3

    goto :goto_a2

    :catch_5a
    move-exception p1

    move-object v2, v3

    goto :goto_60

    :catchall_5d
    move-exception p0

    goto :goto_a2

    :catch_5f
    move-exception p1

    :goto_60
    :try_start_60
    sget-object v0, Lcom/android/launcher/backup/util/TarToolUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deArchiveFile destFile"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/oplus/backup/sdk/common/utils/BRLog;->getModifiedFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " e = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_9e

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/oplus/backup/sdk/common/utils/BRLog;->getModifiedFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9e
    .catchall {:try_start_60 .. :try_end_9e} :catchall_5d

    :cond_9e
    invoke-static {v2}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    :goto_a1
    return-void

    :goto_a2
    invoke-static {v2}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw p0
.end method

.method private static fileProber(Ljava/io/File;)V
    .registers 3

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_2b

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-static {p0}, Lcom/android/launcher/backup/util/TarToolUtils;->fileProber(Ljava/io/File;)V

    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_2b

    sget-object v0, Lcom/android/launcher/backup/util/TarToolUtils;->TAG:Ljava/lang/String;

    const-string v1, "fileProber mkdir failed. parentFile = "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/oplus/backup/sdk/common/utils/BRLog;->getModifiedFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    return-void
.end method

.method private static getMode(Ljava/lang/String;)I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method private static isBlackFile(Ljava/lang/String;)Z
    .registers 7

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_21

    sget-object v0, Lcom/android/launcher/backup/util/TarToolUtils;->BLACK_FILE:[Ljava/lang/String;

    array-length v2, v0

    move v3, v1

    :goto_b
    if-ge v3, v2, :cond_21

    aget-object v4, v0, v3

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1f

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    goto :goto_1f

    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    return p0

    :cond_21
    return v1
.end method
