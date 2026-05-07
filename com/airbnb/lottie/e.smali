.class public Lcom/airbnb/lottie/e;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/r<",
            "Lcom/airbnb/lottie/d;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/e;->a:Ljava/util/Map;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/airbnb/lottie/r;
    .registers 4
    .param p0  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "Lcom/airbnb/lottie/p<",
            "Lcom/airbnb/lottie/d;",
            ">;>;)",
            "Lcom/airbnb/lottie/r<",
            "Lcom/airbnb/lottie/d;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_11

    :cond_4
    sget-object v0, Lj/h;->b:Lj/h;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lj/h;->a:Landroidx/collection/LruCache;

    invoke-virtual {v0, p0}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/d;

    :goto_11
    if-eqz v0, :cond_1e

    new-instance p0, Lcom/airbnb/lottie/r;

    new-instance p1, Lcom/airbnb/lottie/e$c;

    invoke-direct {p1, v0}, Lcom/airbnb/lottie/e$c;-><init>(Lcom/airbnb/lottie/d;)V

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/r;-><init>(Ljava/util/concurrent/Callable;)V

    return-object p0

    :cond_1e
    if-eqz p0, :cond_31

    sget-object v0, Lcom/airbnb/lottie/e;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/r;

    return-object p0

    :cond_31
    new-instance v0, Lcom/airbnb/lottie/r;

    invoke-direct {v0, p1}, Lcom/airbnb/lottie/r;-><init>(Ljava/util/concurrent/Callable;)V

    if-eqz p0, :cond_4f

    new-instance p1, Lcom/airbnb/lottie/e$a;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/e$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/r;->b(Lcom/airbnb/lottie/l;)Lcom/airbnb/lottie/r;

    new-instance p1, Lcom/airbnb/lottie/e$b;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/e$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/r;->a(Lcom/airbnb/lottie/l;)Lcom/airbnb/lottie/r;

    sget-object p1, Lcom/airbnb/lottie/e;->a:Ljava/util/Map;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4f
    return-object v0
.end method

.method public static b(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/p;
    .registers 4
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/p<",
            "Lcom/airbnb/lottie/d;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    sget-object v1, Lp/c;->e:[Ljava/lang/String;

    new-instance v1, Lp/e;

    invoke-direct {v1, v0}, Lp/e;-><init>(Lokio/BufferedSource;)V

    const/4 v0, 0x1

    invoke-static {v1, p1, v0}, Lcom/airbnb/lottie/e;->c(Lp/c;Ljava/lang/String;Z)Lcom/airbnb/lottie/p;

    move-result-object p1
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_18

    invoke-static {p0}, Lq/j;->b(Ljava/io/Closeable;)V

    return-object p1

    :catchall_18
    move-exception p1

    invoke-static {p0}, Lq/j;->b(Ljava/io/Closeable;)V

    throw p1
.end method

.method public static c(Lp/c;Ljava/lang/String;Z)Lcom/airbnb/lottie/p;
    .registers 5
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp/c;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/airbnb/lottie/p<",
            "Lcom/airbnb/lottie/d;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lo/t;->a(Lp/c;)Lcom/airbnb/lottie/d;

    move-result-object v0

    if-eqz p1, :cond_10

    sget-object v1, Lj/h;->b:Lj/h;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v1, Lj/h;->a:Landroidx/collection/LruCache;

    invoke-virtual {v1, p1, v0}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    new-instance p1, Lcom/airbnb/lottie/p;

    invoke-direct {p1, v0}, Lcom/airbnb/lottie/p;-><init>(Ljava/lang/Object;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_1d
    .catchall {:try_start_0 .. :try_end_15} :catchall_1b

    if-eqz p2, :cond_1a

    invoke-static {p0}, Lq/j;->b(Ljava/io/Closeable;)V

    :cond_1a
    return-object p1

    :catchall_1b
    move-exception p1

    goto :goto_29

    :catch_1d
    move-exception p1

    :try_start_1e
    new-instance v0, Lcom/airbnb/lottie/p;

    invoke-direct {v0, p1}, Lcom/airbnb/lottie/p;-><init>(Ljava/lang/Throwable;)V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_1b

    if-eqz p2, :cond_28

    invoke-static {p0}, Lq/j;->b(Ljava/io/Closeable;)V

    :cond_28
    return-object v0

    :goto_29
    if-eqz p2, :cond_2e

    invoke-static {p0}, Lq/j;->b(Ljava/io/Closeable;)V

    :cond_2e
    throw p1
.end method

.method public static d(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/p;
    .registers 2
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipInputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/p<",
            "Lcom/airbnb/lottie/d;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1}, Lcom/airbnb/lottie/e;->e(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/p;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_8

    invoke-static {p0}, Lq/j;->b(Ljava/io/Closeable;)V

    return-object p1

    :catchall_8
    move-exception p1

    invoke-static {p0}, Lq/j;->b(Ljava/io/Closeable;)V

    throw p1
.end method

.method public static e(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/p;
    .registers 9
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipInputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/p<",
            "Lcom/airbnb/lottie/d;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_5
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    :goto_b
    if-eqz v1, :cond_6f

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "__MACOSX"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto :goto_6a

    :cond_1d
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v5, ".json"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-static {p0}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v1

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v1

    sget-object v3, Lp/c;->e:[Ljava/lang/String;

    new-instance v3, Lp/e;

    invoke-direct {v3, v1}, Lp/e;-><init>(Lokio/BufferedSource;)V

    const/4 v1, 0x0

    invoke-static {v3, v2, v1}, Lcom/airbnb/lottie/e;->c(Lp/c;Ljava/lang/String;Z)Lcom/airbnb/lottie/p;

    move-result-object v1

    iget-object v1, v1, Lcom/airbnb/lottie/p;->a:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Lcom/airbnb/lottie/d;

    goto :goto_6a

    :cond_43
    const-string v1, ".png"

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_58

    const-string v1, ".webp"

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_54

    goto :goto_58

    :cond_54
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto :goto_6a

    :cond_58
    :goto_58
    const-string v1, "/"

    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    aget-object v1, v1, v4

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6a
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_6e} :catch_11d

    goto :goto_b

    :cond_6f
    if-nez v3, :cond_7e

    new-instance p0, Lcom/airbnb/lottie/p;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unable to parse composition"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/p;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    :cond_7e
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_86
    :goto_86
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_cb

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, v3, Lcom/airbnb/lottie/d;->d:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/k;

    iget-object v6, v5, Lcom/airbnb/lottie/k;->d:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a2

    goto :goto_b8

    :cond_b7
    move-object v5, v2

    :goto_b8
    if-eqz v5, :cond_86

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iget v1, v5, Lcom/airbnb/lottie/k;->a:I

    iget v4, v5, Lcom/airbnb/lottie/k;->b:I

    invoke-static {v0, v1, v4}, Lq/j;->e(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v5, Lcom/airbnb/lottie/k;->e:Landroid/graphics/Bitmap;

    goto :goto_86

    :cond_cb
    iget-object p0, v3, Lcom/airbnb/lottie/d;->d:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/k;

    iget-object v1, v1, Lcom/airbnb/lottie/k;->e:Landroid/graphics/Bitmap;

    if-nez v1, :cond_d5

    new-instance p0, Lcom/airbnb/lottie/p;

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "There is no image for "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/k;

    iget-object v0, v0, Lcom/airbnb/lottie/k;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/p;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    :cond_10b
    if-eqz p1, :cond_117

    sget-object p0, Lj/h;->b:Lj/h;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lj/h;->a:Landroidx/collection/LruCache;

    invoke-virtual {p0, p1, v3}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_117
    new-instance p0, Lcom/airbnb/lottie/p;

    invoke-direct {p0, v3}, Lcom/airbnb/lottie/p;-><init>(Ljava/lang/Object;)V

    return-object p0

    :catch_11d
    move-exception p0

    new-instance p1, Lcom/airbnb/lottie/p;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/p;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public static f(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4
    .param p1  # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param

    const-string/jumbo v0, "rawRes"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v1, 0x20

    if-ne p0, v1, :cond_19

    const/4 p0, 0x1

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    if-eqz p0, :cond_1f

    const-string p0, "_night_"

    goto :goto_21

    :cond_1f
    const-string p0, "_day_"

    :goto_21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
