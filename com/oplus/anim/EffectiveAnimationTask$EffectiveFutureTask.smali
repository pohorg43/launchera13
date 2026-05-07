.class Lcom/oplus/anim/EffectiveAnimationTask$EffectiveFutureTask;
.super Ljava/util/concurrent/FutureTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/anim/EffectiveAnimationTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EffectiveFutureTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "Lcom/oplus/anim/EffectiveAnimationResult<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/anim/EffectiveAnimationTask;


# direct methods
.method public constructor <init>(Lcom/oplus/anim/EffectiveAnimationTask;Ljava/util/concurrent/Callable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lcom/oplus/anim/EffectiveAnimationResult<",
            "TT;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationTask$EffectiveFutureTask;->this$0:Lcom/oplus/anim/EffectiveAnimationTask;

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
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationTask$EffectiveFutureTask;->this$0:Lcom/oplus/anim/EffectiveAnimationTask;

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/anim/EffectiveAnimationResult;

    invoke-static {v0, v1}, Lcom/oplus/anim/EffectiveAnimationTask;->access$300(Lcom/oplus/anim/EffectiveAnimationTask;Lcom/oplus/anim/EffectiveAnimationResult;)V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_12} :catch_13
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_7 .. :try_end_12} :catch_13

    goto :goto_1e

    :catch_13
    move-exception v0

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationTask$EffectiveFutureTask;->this$0:Lcom/oplus/anim/EffectiveAnimationTask;

    new-instance v1, Lcom/oplus/anim/EffectiveAnimationResult;

    invoke-direct {v1, v0}, Lcom/oplus/anim/EffectiveAnimationResult;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p0, v1}, Lcom/oplus/anim/EffectiveAnimationTask;->access$300(Lcom/oplus/anim/EffectiveAnimationTask;Lcom/oplus/anim/EffectiveAnimationResult;)V

    :goto_1e
    return-void
.end method
