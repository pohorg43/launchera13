.class public Lcom/airbnb/lottie/h;
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
.field public final synthetic a:Ljava/lang/ref/WeakReference;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:I


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Landroid/content/Context;I)V
    .registers 4

    iput-object p1, p0, Lcom/airbnb/lottie/h;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/airbnb/lottie/h;->b:Landroid/content/Context;

    iput p3, p0, Lcom/airbnb/lottie/h;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    iget-object v0, p0, Lcom/airbnb/lottie/h;->b:Landroid/content/Context;

    :goto_d
    iget p0, p0, Lcom/airbnb/lottie/h;->c:I

    invoke-static {v0, p0}, Lcom/airbnb/lottie/e;->f(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    :try_start_13
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/airbnb/lottie/e;->b(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/p;

    move-result-object p0
    :try_end_1f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_13 .. :try_end_1f} :catch_20

    goto :goto_27

    :catch_20
    move-exception p0

    new-instance v0, Lcom/airbnb/lottie/p;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/p;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_27
    return-object p0
.end method
