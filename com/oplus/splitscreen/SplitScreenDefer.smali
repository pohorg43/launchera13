.class public Lcom/oplus/splitscreen/SplitScreenDefer;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final mDeferCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mLastCallSite:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDefer;->mDeferCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public defer()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDefer;->mDeferCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const/4 v0, 0x2

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDefer;->mLastCallSite:Ljava/lang/String;

    return-void
.end method

.method public goOn(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDefer;->mDeferCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gez v0, :cond_f

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDefer;->mDeferCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    :cond_f
    if-lez v0, :cond_12

    return-void

    :cond_12
    if-eqz p1, :cond_17

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_17
    return-void
.end method

.method public isDeferred()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDefer;->mDeferCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-lez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public reset()V
    .registers 3

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitScreenDefer;->isDeferred()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "defer leak, Have you called continue already?, lastCallSite="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDefer;->mLastCallSite:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SplitScreenDefer"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDefer;->mDeferCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method
