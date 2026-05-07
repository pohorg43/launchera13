.class public Lcom/airbnb/lottie/g;
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

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/airbnb/lottie/g;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/airbnb/lottie/g;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/airbnb/lottie/g;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/g;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/airbnb/lottie/g;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/airbnb/lottie/g;->c:Ljava/lang/String;

    :try_start_6
    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    new-instance v2, Ljava/util/zip/ZipInputStream;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v2, p0}, Lcom/airbnb/lottie/e;->d(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/p;

    move-result-object p0

    goto :goto_34

    :cond_20
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/airbnb/lottie/e;->b(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/p;

    move-result-object p0
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_2c} :catch_2d

    goto :goto_34

    :catch_2d
    move-exception p0

    new-instance v0, Lcom/airbnb/lottie/p;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/p;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_34
    return-object p0
.end method
