.class public Lcom/airbnb/lottie/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/airbnb/lottie/p<",
        "Lcom/airbnb/lottie/d;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/airbnb/lottie/f;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/airbnb/lottie/f;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/f;->a:Landroid/content/Context;

    iget-object p0, p0, Lcom/airbnb/lottie/f;->b:Ljava/lang/String;

    new-instance v1, Ln/c;

    invoke-direct {v1, v0, p0}, Ln/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p0, Ln/a;->c:Ln/a;

    iget-object v0, v1, Ln/c;->b:Ln/b;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    :try_start_11
    iget-object v3, v0, Ln/b;->b:Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    iget-object v5, v0, Ln/b;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    sget-object v6, Ln/a;->b:Ln/a;

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Ln/b;->a(Ljava/lang/String;Ln/a;Z)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2c

    goto :goto_43

    :cond_2c
    new-instance v4, Ljava/io/File;

    iget-object v0, v0, Ln/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v3, p0, v7}, Ln/b;->a(Ljava/lang/String;Ln/a;Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_42

    goto :goto_43

    :cond_42
    move-object v4, v2

    :goto_43
    if-nez v4, :cond_46

    goto :goto_66

    :cond_46
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4b
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_4b} :catch_66

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v5, ".zip"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_58

    move-object v6, p0

    :cond_58
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    sget-object v3, Lq/f;->a:Lcom/airbnb/lottie/m;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroidx/core/util/Pair;

    invoke-direct {v3, v6, v0}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_67

    :catch_66
    :goto_66
    move-object v3, v2

    :goto_67
    if-nez v3, :cond_6a

    goto :goto_8d

    :cond_6a
    iget-object v0, v3, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ln/a;

    iget-object v3, v3, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/io/InputStream;

    if-ne v0, p0, :cond_80

    new-instance p0, Ljava/util/zip/ZipInputStream;

    invoke-direct {p0, v3}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v0, v1, Ln/c;->a:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/airbnb/lottie/e;->d(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/p;

    move-result-object p0

    goto :goto_86

    :cond_80
    iget-object p0, v1, Ln/c;->a:Ljava/lang/String;

    invoke-static {v3, p0}, Lcom/airbnb/lottie/e;->b(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/p;

    move-result-object p0

    :goto_86
    iget-object p0, p0, Lcom/airbnb/lottie/p;->a:Ljava/lang/Object;

    if-eqz p0, :cond_8d

    move-object v2, p0

    check-cast v2, Lcom/airbnb/lottie/d;

    :cond_8d
    :goto_8d
    if-eqz v2, :cond_95

    new-instance p0, Lcom/airbnb/lottie/p;

    invoke-direct {p0, v2}, Lcom/airbnb/lottie/p;-><init>(Ljava/lang/Object;)V

    goto :goto_a6

    :cond_95
    sget-object p0, Lq/f;->a:Lcom/airbnb/lottie/m;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_9a
    invoke-virtual {v1}, Ln/c;->a()Lcom/airbnb/lottie/p;

    move-result-object p0
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9e} :catch_9f

    goto :goto_a6

    :catch_9f
    move-exception p0

    new-instance v0, Lcom/airbnb/lottie/p;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/p;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_a6
    return-object p0
.end method
