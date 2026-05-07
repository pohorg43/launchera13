.class public Lcom/oplus/anim/network/NetworkFetcher;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final fetcher:Lcom/oplus/anim/network/EffectiveNetworkFetcher;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final networkCache:Lcom/oplus/anim/network/NetworkCache;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oplus/anim/network/NetworkCache;Lcom/oplus/anim/network/EffectiveNetworkFetcher;)V
    .registers 3
    .param p1  # Lcom/oplus/anim/network/NetworkCache;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lcom/oplus/anim/network/EffectiveNetworkFetcher;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/anim/network/NetworkFetcher;->networkCache:Lcom/oplus/anim/network/NetworkCache;

    iput-object p2, p0, Lcom/oplus/anim/network/NetworkFetcher;->fetcher:Lcom/oplus/anim/network/EffectiveNetworkFetcher;

    return-void
.end method

.method private fetchFromCache(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationComposition;
    .registers 5
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return-object v0

    :cond_4
    iget-object p0, p0, Lcom/oplus/anim/network/NetworkFetcher;->networkCache:Lcom/oplus/anim/network/NetworkCache;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/network/NetworkCache;->fetch(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    if-nez p0, :cond_d

    return-object v0

    :cond_d
    iget-object p2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Lcom/oplus/anim/network/FileExtension;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/io/InputStream;

    sget-object v1, Lcom/oplus/anim/network/FileExtension;->ZIP:Lcom/oplus/anim/network/FileExtension;

    if-ne p2, v1, :cond_23

    new-instance p2, Ljava/util/zip/ZipInputStream;

    invoke-direct {p2, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {p2, p1}, Lcom/oplus/anim/EffectiveCompositionFactory;->fromZipStreamSync(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationResult;

    move-result-object p0

    goto :goto_27

    :cond_23
    invoke-static {p0, p1}, Lcom/oplus/anim/EffectiveCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationResult;

    move-result-object p0

    :goto_27
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationResult;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_34

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationResult;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/anim/EffectiveAnimationComposition;

    return-object p0

    :cond_34
    return-object v0
.end method

.method private fetchFromNetwork(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationResult;
    .registers 7
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/oplus/anim/EffectiveAnimationResult<",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation

    const-string v0, "EffectiveFetchResult close failed "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fetching "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/anim/utils/Logger;->debug(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_17
    iget-object v2, p0, Lcom/oplus/anim/network/NetworkFetcher;->fetcher:Lcom/oplus/anim/network/EffectiveNetworkFetcher;

    invoke-interface {v2, p1}, Lcom/oplus/anim/network/EffectiveNetworkFetcher;->fetchSync(Ljava/lang/String;)Lcom/oplus/anim/network/EffectiveFetchResult;

    move-result-object v1

    invoke-interface {v1}, Lcom/oplus/anim/network/EffectiveFetchResult;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-interface {v1}, Lcom/oplus/anim/network/EffectiveFetchResult;->bodyByteStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-interface {v1}, Lcom/oplus/anim/network/EffectiveFetchResult;->contentType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3, p2}, Lcom/oplus/anim/network/NetworkFetcher;->fromInputStream(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationResult;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Completed fetch from network. Success: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationResult;->getValue()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_41

    const/4 p2, 0x1

    goto :goto_42

    :cond_41
    const/4 p2, 0x0

    :goto_42
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/anim/utils/Logger;->debug(Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_4c} :catch_6e
    .catchall {:try_start_17 .. :try_end_4c} :catchall_6c

    :try_start_4c
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_50

    goto :goto_54

    :catch_50
    move-exception p1

    invoke-static {v0, p1}, Lcom/oplus/anim/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_54
    return-object p0

    :cond_55
    :try_start_55
    new-instance p0, Lcom/oplus/anim/EffectiveAnimationResult;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-interface {v1}, Lcom/oplus/anim/network/EffectiveFetchResult;->error()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/anim/EffectiveAnimationResult;-><init>(Ljava/lang/Throwable;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_63} :catch_6e
    .catchall {:try_start_55 .. :try_end_63} :catchall_6c

    :try_start_63
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_67

    goto :goto_6b

    :catch_67
    move-exception p1

    invoke-static {v0, p1}, Lcom/oplus/anim/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6b
    return-object p0

    :catchall_6c
    move-exception p0

    goto :goto_7f

    :catch_6e
    move-exception p0

    :try_start_6f
    new-instance p1, Lcom/oplus/anim/EffectiveAnimationResult;

    invoke-direct {p1, p0}, Lcom/oplus/anim/EffectiveAnimationResult;-><init>(Ljava/lang/Throwable;)V
    :try_end_74
    .catchall {:try_start_6f .. :try_end_74} :catchall_6c

    if-eqz v1, :cond_7e

    :try_start_76
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_7a

    goto :goto_7e

    :catch_7a
    move-exception p0

    invoke-static {v0, p0}, Lcom/oplus/anim/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7e
    :goto_7e
    return-object p1

    :goto_7f
    if-eqz v1, :cond_89

    :try_start_81
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_85

    goto :goto_89

    :catch_85
    move-exception p1

    invoke-static {v0, p1}, Lcom/oplus/anim/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_89
    :goto_89
    throw p0
.end method

.method private fromInputStream(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationResult;
    .registers 6
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/oplus/anim/EffectiveAnimationResult<",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_4

    const-string p3, "application/json"

    :cond_4
    const-string v0, "application/zip"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2a

    const-string p3, "\\?"

    invoke-virtual {p1, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    aget-object p3, p3, v0

    const-string v0, ".lottie"

    invoke-virtual {p3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1e

    goto :goto_2a

    :cond_1e
    const-string p3, "Received json response."

    invoke-static {p3}, Lcom/oplus/anim/utils/Logger;->debug(Ljava/lang/String;)V

    sget-object p3, Lcom/oplus/anim/network/FileExtension;->JSON:Lcom/oplus/anim/network/FileExtension;

    invoke-direct {p0, p1, p2, p4}, Lcom/oplus/anim/network/NetworkFetcher;->fromJsonStream(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationResult;

    move-result-object p2

    goto :goto_35

    :cond_2a
    :goto_2a
    const-string p3, "Handling zip response."

    invoke-static {p3}, Lcom/oplus/anim/utils/Logger;->debug(Ljava/lang/String;)V

    sget-object p3, Lcom/oplus/anim/network/FileExtension;->ZIP:Lcom/oplus/anim/network/FileExtension;

    invoke-direct {p0, p1, p2, p4}, Lcom/oplus/anim/network/NetworkFetcher;->fromZipStream(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationResult;

    move-result-object p2

    :goto_35
    if-eqz p4, :cond_42

    invoke-virtual {p2}, Lcom/oplus/anim/EffectiveAnimationResult;->getValue()Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_42

    iget-object p0, p0, Lcom/oplus/anim/network/NetworkFetcher;->networkCache:Lcom/oplus/anim/network/NetworkCache;

    invoke-virtual {p0, p1, p3}, Lcom/oplus/anim/network/NetworkCache;->renameTempFile(Ljava/lang/String;Lcom/oplus/anim/network/FileExtension;)V

    :cond_42
    return-object p2
.end method

.method private fromJsonStream(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationResult;
    .registers 4
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/oplus/anim/EffectiveAnimationResult<",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_8

    const/4 p0, 0x0

    invoke-static {p2, p0}, Lcom/oplus/anim/EffectiveCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationResult;

    move-result-object p0

    return-object p0

    :cond_8
    iget-object p0, p0, Lcom/oplus/anim/network/NetworkFetcher;->networkCache:Lcom/oplus/anim/network/NetworkCache;

    sget-object p3, Lcom/oplus/anim/network/FileExtension;->JSON:Lcom/oplus/anim/network/FileExtension;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/anim/network/NetworkCache;->writeTempCacheFile(Ljava/lang/String;Ljava/io/InputStream;Lcom/oplus/anim/network/FileExtension;)Ljava/io/File;

    move-result-object p0

    new-instance p2, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p1}, Lcom/oplus/anim/EffectiveCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationResult;

    move-result-object p0

    return-object p0
.end method

.method private fromZipStream(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationResult;
    .registers 4
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/oplus/anim/EffectiveAnimationResult<",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_d

    new-instance p0, Ljava/util/zip/ZipInputStream;

    invoke-direct {p0, p2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oplus/anim/EffectiveCompositionFactory;->fromZipStreamSync(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationResult;

    move-result-object p0

    return-object p0

    :cond_d
    iget-object p0, p0, Lcom/oplus/anim/network/NetworkFetcher;->networkCache:Lcom/oplus/anim/network/NetworkCache;

    sget-object p3, Lcom/oplus/anim/network/FileExtension;->ZIP:Lcom/oplus/anim/network/FileExtension;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/anim/network/NetworkCache;->writeTempCacheFile(Ljava/lang/String;Ljava/io/InputStream;Lcom/oplus/anim/network/FileExtension;)Ljava/io/File;

    move-result-object p0

    new-instance p2, Ljava/util/zip/ZipInputStream;

    new-instance p3, Ljava/io/FileInputStream;

    invoke-direct {p3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p2, p3}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {p2, p1}, Lcom/oplus/anim/EffectiveCompositionFactory;->fromZipStreamSync(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public fetchSync(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationResult;
    .registers 5
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/oplus/anim/EffectiveAnimationResult<",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/oplus/anim/network/NetworkFetcher;->fetchFromCache(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationComposition;

    move-result-object v0

    if-eqz v0, :cond_c

    new-instance p0, Lcom/oplus/anim/EffectiveAnimationResult;

    invoke-direct {p0, v0}, Lcom/oplus/anim/EffectiveAnimationResult;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Animation for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not found in cache. Fetching from network."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/utils/Logger;->debug(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/oplus/anim/network/NetworkFetcher;->fetchFromNetwork(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationResult;

    move-result-object p0

    return-object p0
.end method
