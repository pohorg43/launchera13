.class public final Lw3/n;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final synthetic b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final synthetic d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final synthetic e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Lw3/h;",
            ">;"
        }
    .end annotation
.end field

.field private volatile synthetic blockingTasksInBuffer:I

.field private volatile synthetic consumerIndex:I

.field private volatile synthetic lastScheduledTask:Ljava/lang/Object;

.field private volatile synthetic producerIndex:I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-class v0, Lw3/n;

    const-class v1, Ljava/lang/Object;

    const-string v2, "lastScheduledTask"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    sput-object v1, Lw3/n;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v1, "producerIndex"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    sput-object v1, Lw3/n;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-string v1, "consumerIndex"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    sput-object v1, Lw3/n;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-string v1, "blockingTasksInBuffer"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lw3/n;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Lw3/n;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v0, 0x0

    iput-object v0, p0, Lw3/n;->lastScheduledTask:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lw3/n;->producerIndex:I

    iput v0, p0, Lw3/n;->consumerIndex:I

    iput v0, p0, Lw3/n;->blockingTasksInBuffer:I

    return-void
.end method


# virtual methods
.method public final a(Lw3/h;Z)Lw3/h;
    .registers 3

    if-eqz p2, :cond_7

    invoke-virtual {p0, p1}, Lw3/n;->b(Lw3/h;)Lw3/h;

    move-result-object p0

    return-object p0

    :cond_7
    sget-object p2, Lw3/n;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw3/h;

    if-nez p1, :cond_13

    const/4 p0, 0x0

    return-object p0

    :cond_13
    invoke-virtual {p0, p1}, Lw3/n;->b(Lw3/h;)Lw3/h;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lw3/h;)Lw3/h;
    .registers 4

    iget-object v0, p1, Lw3/h;->b:Lw3/i;

    invoke-interface {v0}, Lw3/i;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    if-eqz v1, :cond_12

    sget-object v0, Lw3/n;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    :cond_12
    invoke-virtual {p0}, Lw3/n;->c()I

    move-result v0

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_1b

    return-object p1

    :cond_1b
    iget v0, p0, Lw3/n;->producerIndex:I

    and-int/2addr v0, v1

    :goto_1e
    iget-object v1, p0, Lw3/n;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2a

    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_1e

    :cond_2a
    iget-object v1, p0, Lw3/n;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    sget-object p1, Lw3/n;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final c()I
    .registers 2

    iget v0, p0, Lw3/n;->producerIndex:I

    iget p0, p0, Lw3/n;->consumerIndex:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final d()I
    .registers 2

    iget-object v0, p0, Lw3/n;->lastScheduledTask:Ljava/lang/Object;

    invoke-virtual {p0}, Lw3/n;->c()I

    move-result p0

    if-eqz v0, :cond_a

    add-int/lit8 p0, p0, 0x1

    :cond_a
    return p0
.end method

.method public final e()Lw3/h;
    .registers 3

    sget-object v0, Lw3/n;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw3/h;

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lw3/n;->f()Lw3/h;

    move-result-object v0

    :cond_f
    return-object v0
.end method

.method public final f()Lw3/h;
    .registers 6

    :cond_0
    :goto_0
    iget v0, p0, Lw3/n;->consumerIndex:I

    iget v1, p0, Lw3/n;->producerIndex:I

    sub-int v1, v0, v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return-object v2

    :cond_a
    and-int/lit8 v1, v0, 0x7f

    sget-object v3, Lw3/n;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, p0, v0, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lw3/n;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw3/h;

    if-nez v0, :cond_21

    goto :goto_0

    :cond_21
    iget-object v1, v0, Lw3/h;->b:Lw3/i;

    invoke-interface {v1}, Lw3/i;->b()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v2, 0x0

    :goto_2c
    if-eqz v2, :cond_33

    sget-object v1, Lw3/n;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    :cond_33
    return-object v0
.end method

.method public final g(Lw3/n;)J
    .registers 10

    iget v0, p1, Lw3/n;->consumerIndex:I

    iget v1, p1, Lw3/n;->producerIndex:I

    iget-object v2, p1, Lw3/n;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    :goto_6
    const/4 v3, 0x1

    if-eq v0, v1, :cond_3a

    and-int/lit8 v4, v0, 0x7f

    iget v5, p1, Lw3/n;->blockingTasksInBuffer:I

    if-nez v5, :cond_10

    goto :goto_3a

    :cond_10
    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lw3/h;

    if-eqz v5, :cond_37

    iget-object v6, v5, Lw3/h;->b:Lw3/i;

    invoke-interface {v6}, Lw3/i;->b()I

    move-result v6

    const/4 v7, 0x0

    if-ne v6, v3, :cond_22

    goto :goto_23

    :cond_22
    move v3, v7

    :goto_23
    if-eqz v3, :cond_37

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    sget-object v0, Lw3/n;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    invoke-virtual {p0, v5, v7}, Lw3/n;->a(Lw3/h;Z)Lw3/h;

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_3a
    :goto_3a
    invoke-virtual {p0, p1, v3}, Lw3/n;->h(Lw3/n;Z)J

    move-result-wide p0

    return-wide p0
.end method

.method public final h(Lw3/n;Z)J
    .registers 10

    :cond_0
    iget-object v0, p1, Lw3/n;->lastScheduledTask:Ljava/lang/Object;

    check-cast v0, Lw3/h;

    const-wide/16 v1, -0x2

    if-nez v0, :cond_9

    return-wide v1

    :cond_9
    const/4 v3, 0x0

    if-eqz p2, :cond_1a

    iget-object v4, v0, Lw3/h;->b:Lw3/i;

    invoke-interface {v4}, Lw3/i;->b()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_16

    goto :goto_17

    :cond_16
    move v5, v3

    :goto_17
    if-nez v5, :cond_1a

    return-wide v1

    :cond_1a
    sget-object v1, Lw3/l;->e:Lw3/g;

    check-cast v1, Lw3/e;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v4, v0, Lw3/h;->a:J

    sub-long/2addr v1, v4

    sget-wide v4, Lw3/l;->a:J

    cmp-long v6, v1, v4

    if-gez v6, :cond_30

    sub-long/2addr v4, v1

    return-wide v4

    :cond_30
    sget-object v1, Lw3/n;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v3}, Lw3/n;->a(Lw3/h;Z)Lw3/h;

    const-wide/16 p0, -0x1

    return-wide p0
.end method
