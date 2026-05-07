.class public Lcom/airbnb/lottie/r$a;
.super Ljava/util/concurrent/FutureTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "Lcom/airbnb/lottie/p<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/airbnb/lottie/r;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/r;Ljava/util/concurrent/Callable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lcom/airbnb/lottie/p<",
            "TT;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/airbnb/lottie/r$a;->a:Lcom/airbnb/lottie/r;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method public done()V
    .registers 3

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/airbnb/lottie/r$a;->a:Lcom/airbnb/lottie/r;

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/p;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/r;->c(Lcom/airbnb/lottie/p;)V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_12} :catch_13
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_7 .. :try_end_12} :catch_13

    goto :goto_1e

    :catch_13
    move-exception v0

    iget-object p0, p0, Lcom/airbnb/lottie/r$a;->a:Lcom/airbnb/lottie/r;

    new-instance v1, Lcom/airbnb/lottie/p;

    invoke-direct {v1, v0}, Lcom/airbnb/lottie/p;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/r;->c(Lcom/airbnb/lottie/p;)V

    :goto_1e
    return-void
.end method
