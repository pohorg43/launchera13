.class public Lcom/oplus/fancyicon/IconZipFileProvider;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ZipFileProvider"


# instance fields
.field private mBindResourceLoaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/fancyicon/content/res/ResourceLoader;",
            ">;"
        }
    .end annotation
.end field

.field private mZipFile:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/fancyicon/IconZipFileProvider;->mBindResourceLoaders:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public declared-synchronized bindResource(Lcom/oplus/fancyicon/content/res/ResourceLoader;Landroid/content/Context;)Ljava/util/zip/ZipFile;
    .registers 4

    monitor-enter p0

    if-nez p1, :cond_6

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/oplus/fancyicon/IconZipFileProvider;->mBindResourceLoaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/oplus/fancyicon/IconZipFileProvider;->mZipFile:Ljava/util/zip/ZipFile;

    if-nez p1, :cond_15

    invoke-static {p2}, Lcom/oplus/fancyicon/util/ResFileUtil;->getIconZipFile(Landroid/content/Context;)Ljava/util/zip/ZipFile;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/fancyicon/IconZipFileProvider;->mZipFile:Ljava/util/zip/ZipFile;

    :cond_15
    iget-object p1, p0, Lcom/oplus/fancyicon/IconZipFileProvider;->mZipFile:Ljava/util/zip/ZipFile;
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_19

    monitor-exit p0

    return-object p1

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unBindResource(Lcom/oplus/fancyicon/content/res/ResourceLoader;)V
    .registers 5

    monitor-enter p0

    if-nez p1, :cond_5

    monitor-exit p0

    return-void

    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/oplus/fancyicon/IconZipFileProvider;->mBindResourceLoaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/oplus/fancyicon/IconZipFileProvider;->mBindResourceLoaders:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_38

    iget-object p1, p0, Lcom/oplus/fancyicon/IconZipFileProvider;->mZipFile:Ljava/util/zip/ZipFile;
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_3a

    if-eqz p1, :cond_38

    :try_start_16
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1a
    .catchall {:try_start_16 .. :try_end_19} :catchall_3a

    goto :goto_35

    :catch_1a
    move-exception p1

    :try_start_1b
    const-string v0, "ZipFileProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unBindResource failed error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oplus/fancyicon/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_35
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oplus/fancyicon/IconZipFileProvider;->mZipFile:Ljava/util/zip/ZipFile;
    :try_end_38
    .catchall {:try_start_1b .. :try_end_38} :catchall_3a

    :cond_38
    monitor-exit p0

    return-void

    :catchall_3a
    move-exception p1

    monitor-exit p0

    throw p1
.end method
