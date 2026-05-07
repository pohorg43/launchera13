.class public final Lw3/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Executor;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw3/a$a;
    }
.end annotation


# static fields
.field public static final synthetic h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final synthetic i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final synthetic j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final k:Lv3/y;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# instance fields
.field private volatile synthetic _isTerminated:I

.field public final a:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final b:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final c:J
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public volatile synthetic controlState:J

.field public final d:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final e:Lw3/d;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final f:Lw3/d;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final g:Lv3/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv3/v<",
            "Lw3/a$a;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private volatile synthetic parkedWorkersStack:J


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lv3/y;

    const-string v1, "NOT_IN_STACK"

    invoke-direct {v0, v1}, Lv3/y;-><init>(Ljava/lang/String;)V

    sput-object v0, Lw3/a;->k:Lv3/y;

    const-class v0, Lw3/a;

    const-string v1, "parkedWorkersStack"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lw3/a;->h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-class v0, Lw3/a;

    const-string v1, "controlState"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lw3/a;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-class v0, Lw3/a;

    const-string v1, "_isTerminated"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lw3/a;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(IIJLjava/lang/String;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lw3/a;->a:I

    iput p2, p0, Lw3/a;->b:I

    iput-wide p3, p0, Lw3/a;->c:J

    iput-object p5, p0, Lw3/a;->d:Ljava/lang/String;

    const/4 p5, 0x1

    const/4 v0, 0x0

    if-lt p1, p5, :cond_11

    move v1, p5

    goto :goto_12

    :cond_11
    move v1, v0

    :goto_12
    if-eqz v1, :cond_93

    if-lt p2, p1, :cond_18

    move v1, p5

    goto :goto_19

    :cond_18
    move v1, v0

    :goto_19
    const-string v2, "Max pool size "

    if-eqz v1, :cond_83

    const v1, 0x1ffffe

    if-gt p2, v1, :cond_24

    move v1, p5

    goto :goto_25

    :cond_24
    move v1, v0

    :goto_25
    if-eqz v1, :cond_73

    const-wide/16 v1, 0x0

    cmp-long p2, p3, v1

    if-lez p2, :cond_2e

    goto :goto_2f

    :cond_2e
    move p5, v0

    :goto_2f
    if-eqz p5, :cond_53

    new-instance p2, Lw3/d;

    invoke-direct {p2}, Lw3/d;-><init>()V

    iput-object p2, p0, Lw3/a;->e:Lw3/d;

    new-instance p2, Lw3/d;

    invoke-direct {p2}, Lw3/d;-><init>()V

    iput-object p2, p0, Lw3/a;->f:Lw3/d;

    iput-wide v1, p0, Lw3/a;->parkedWorkersStack:J

    new-instance p2, Lv3/v;

    add-int/lit8 p3, p1, 0x1

    invoke-direct {p2, p3}, Lv3/v;-><init>(I)V

    iput-object p2, p0, Lw3/a;->g:Lv3/v;

    int-to-long p1, p1

    const/16 p3, 0x2a

    shl-long/2addr p1, p3

    iput-wide p1, p0, Lw3/a;->controlState:J

    iput v0, p0, Lw3/a;->_isTerminated:I

    return-void

    :cond_53
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Idle worker keep alive time "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " must be positive"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_73
    const-string p0, " should not exceed maximal supported number of threads 2097150"

    invoke-static {v2, p2, p0}, Landroidx/constraintlayout/core/a;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_83
    const-string p0, " should be greater than or equals to core pool size "

    invoke-static {v2, p2, p0, p1}, Landroidx/emoji2/text/flatbuffer/b;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_93
    const-string p0, "Core pool size "

    const-string p2, " should be at least 1"

    invoke-static {p0, p1, p2}, Landroidx/constraintlayout/core/a;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic e(Lw3/a;Ljava/lang/Runnable;Lw3/i;ZI)V
    .registers 5

    and-int/lit8 p2, p4, 0x2

    if-eqz p2, :cond_7

    sget-object p2, Lw3/l;->f:Lw3/i;

    goto :goto_8

    :cond_7
    const/4 p2, 0x0

    :goto_8
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_d

    const/4 p3, 0x0

    :cond_d
    invoke-virtual {p0, p1, p2, p3}, Lw3/a;->c(Ljava/lang/Runnable;Lw3/i;Z)V

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 11

    iget-object v0, p0, Lw3/a;->g:Lv3/v;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lw3/a;->_isTerminated:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_78

    if-eqz v1, :cond_a

    const/4 p0, -0x1

    monitor-exit v0

    return p0

    :cond_a
    :try_start_a
    iget-wide v1, p0, Lw3/a;->controlState:J

    const-wide/32 v3, 0x1fffff

    and-long v5, v1, v3

    long-to-int v5, v5

    const-wide v6, 0x3ffffe00000L

    and-long/2addr v1, v6

    const/16 v6, 0x15

    shr-long/2addr v1, v6

    long-to-int v1, v1

    sub-int v1, v5, v1

    const/4 v2, 0x0

    if-gez v1, :cond_22

    move v1, v2

    :cond_22
    iget v6, p0, Lw3/a;->a:I
    :try_end_24
    .catchall {:try_start_a .. :try_end_24} :catchall_78

    if-lt v1, v6, :cond_28

    monitor-exit v0

    return v2

    :cond_28
    :try_start_28
    iget v6, p0, Lw3/a;->b:I
    :try_end_2a
    .catchall {:try_start_28 .. :try_end_2a} :catchall_78

    if-lt v5, v6, :cond_2e

    monitor-exit v0

    return v2

    :cond_2e
    :try_start_2e
    iget-wide v5, p0, Lw3/a;->controlState:J

    and-long/2addr v5, v3

    long-to-int v5, v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    if-lez v5, :cond_40

    iget-object v7, p0, Lw3/a;->g:Lv3/v;

    invoke-virtual {v7, v5}, Lv3/v;->b(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_40

    move v7, v6

    goto :goto_41

    :cond_40
    move v7, v2

    :goto_41
    if-eqz v7, :cond_6c

    new-instance v7, Lw3/a$a;

    invoke-direct {v7, p0, v5}, Lw3/a$a;-><init>(Lw3/a;I)V

    iget-object v8, p0, Lw3/a;->g:Lv3/v;

    invoke-virtual {v8, v5, v7}, Lv3/v;->c(ILjava/lang/Object;)V

    sget-object v8, Lw3/a;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v8, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->incrementAndGet(Ljava/lang/Object;)J

    move-result-wide v8

    and-long/2addr v3, v8

    long-to-int p0, v3

    if-ne v5, p0, :cond_58

    move v2, v6

    :cond_58
    if-eqz v2, :cond_60

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V
    :try_end_5d
    .catchall {:try_start_2e .. :try_end_5d} :catchall_78

    add-int/2addr v1, v6

    monitor-exit v0

    return v1

    :cond_60
    :try_start_60
    const-string p0, "Failed requirement."

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6c
    const-string p0, "Failed requirement."

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_78
    .catchall {:try_start_60 .. :try_end_78} :catchall_78

    :catchall_78
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final b()Lw3/a$a;
    .registers 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v1, v0, Lw3/a$a;

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    check-cast v0, Lw3/a$a;

    goto :goto_d

    :cond_c
    move-object v0, v2

    :goto_d
    if-nez v0, :cond_10

    goto :goto_19

    :cond_10
    iget-object v1, v0, Lw3/a$a;->g:Lw3/a;

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    move-object v2, v0

    :cond_19
    :goto_19
    return-object v2
.end method

.method public final c(Ljava/lang/Runnable;Lw3/i;Z)V
    .registers 8

    sget-object v0, Lw3/l;->e:Lw3/g;

    check-cast v0, Lw3/e;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    instance-of v2, p1, Lw3/h;

    if-eqz v2, :cond_16

    check-cast p1, Lw3/h;

    iput-wide v0, p1, Lw3/h;->a:J

    iput-object p2, p1, Lw3/h;->b:Lw3/i;

    goto :goto_1c

    :cond_16
    new-instance v2, Lw3/k;

    invoke-direct {v2, p1, v0, v1, p2}, Lw3/k;-><init>(Ljava/lang/Runnable;JLw3/i;)V

    move-object p1, v2

    :goto_1c
    invoke-virtual {p0}, Lw3/a;->b()Lw3/a$a;

    move-result-object p2

    const/4 v0, 0x1

    if-nez p2, :cond_24

    goto :goto_37

    :cond_24
    iget v1, p2, Lw3/a$a;->b:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2a

    goto :goto_37

    :cond_2a
    iget-object v1, p1, Lw3/h;->b:Lw3/i;

    invoke-interface {v1}, Lw3/i;->b()I

    move-result v1

    if-nez v1, :cond_39

    iget v1, p2, Lw3/a$a;->b:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_39

    :goto_37
    move-object v1, p1

    goto :goto_41

    :cond_39
    iput-boolean v0, p2, Lw3/a$a;->f:Z

    iget-object v1, p2, Lw3/a$a;->a:Lw3/n;

    invoke-virtual {v1, p1, p3}, Lw3/n;->a(Lw3/h;Z)Lw3/h;

    move-result-object v1

    :goto_41
    const/4 v2, 0x0

    if-eqz v1, :cond_6f

    iget-object v3, v1, Lw3/h;->b:Lw3/i;

    invoke-interface {v3}, Lw3/i;->b()I

    move-result v3

    if-ne v3, v0, :cond_4e

    move v3, v0

    goto :goto_4f

    :cond_4e
    move v3, v2

    :goto_4f
    if-eqz v3, :cond_58

    iget-object v3, p0, Lw3/a;->f:Lw3/d;

    invoke-virtual {v3, v1}, Lv3/m;->a(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_5e

    :cond_58
    iget-object v3, p0, Lw3/a;->e:Lw3/d;

    invoke-virtual {v3, v1}, Lv3/m;->a(Ljava/lang/Object;)Z

    move-result v1

    :goto_5e
    if-eqz v1, :cond_61

    goto :goto_6f

    :cond_61
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    iget-object p0, p0, Lw3/a;->d:Ljava/lang/String;

    const-string p2, " was terminated"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6f
    :goto_6f
    if-eqz p3, :cond_74

    if-eqz p2, :cond_74

    goto :goto_75

    :cond_74
    move v0, v2

    :goto_75
    iget-object p1, p1, Lw3/h;->b:Lw3/i;

    invoke-interface {p1}, Lw3/i;->b()I

    move-result p1

    if-nez p1, :cond_84

    if-eqz v0, :cond_80

    return-void

    :cond_80
    invoke-virtual {p0}, Lw3/a;->k()V

    goto :goto_a1

    :cond_84
    sget-object p1, Lw3/a;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/32 p2, 0x200000

    invoke-virtual {p1, p0, p2, p3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    move-result-wide p1

    if-eqz v0, :cond_90

    goto :goto_a1

    :cond_90
    invoke-virtual {p0}, Lw3/a;->m()Z

    move-result p3

    if-eqz p3, :cond_97

    goto :goto_a1

    :cond_97
    invoke-virtual {p0, p1, p2}, Lw3/a;->l(J)Z

    move-result p1

    if-eqz p1, :cond_9e

    goto :goto_a1

    :cond_9e
    invoke-virtual {p0}, Lw3/a;->m()Z

    :goto_a1
    return-void
.end method

.method public close()V
    .registers 11

    sget-object v0, Lw3/a;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_9b

    :cond_c
    invoke-virtual {p0}, Lw3/a;->b()Lw3/a$a;

    move-result-object v0

    iget-object v3, p0, Lw3/a;->g:Lv3/v;

    monitor-enter v3

    :try_start_13
    iget-wide v4, p0, Lw3/a;->controlState:J
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_a0

    const-wide/32 v6, 0x1fffff

    and-long/2addr v4, v6

    long-to-int v4, v4

    monitor-exit v3

    const/4 v5, 0x0

    if-gt v2, v4, :cond_66

    move v3, v2

    :goto_1f
    add-int/lit8 v6, v3, 0x1

    iget-object v7, p0, Lw3/a;->g:Lv3/v;

    invoke-virtual {v7, v3}, Lv3/v;->b(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v7, Lw3/a$a;

    if-eq v7, v0, :cond_61

    :goto_2e
    invoke-virtual {v7}, Ljava/lang/Thread;->isAlive()Z

    move-result v8

    if-eqz v8, :cond_3d

    invoke-static {v7}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    const-wide/16 v8, 0x2710

    invoke-virtual {v7, v8, v9}, Ljava/lang/Thread;->join(J)V

    goto :goto_2e

    :cond_3d
    iget-object v7, v7, Lw3/a$a;->a:Lw3/n;

    iget-object v8, p0, Lw3/a;->f:Lw3/d;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v9, Lw3/n;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v9, v7, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lw3/h;

    if-nez v9, :cond_4f

    goto :goto_52

    :cond_4f
    invoke-virtual {v8, v9}, Lv3/m;->a(Ljava/lang/Object;)Z

    :goto_52
    invoke-virtual {v7}, Lw3/n;->f()Lw3/h;

    move-result-object v9

    if-nez v9, :cond_5a

    move v9, v1

    goto :goto_5e

    :cond_5a
    invoke-virtual {v8, v9}, Lv3/m;->a(Ljava/lang/Object;)Z

    move v9, v2

    :goto_5e
    if-eqz v9, :cond_61

    goto :goto_52

    :cond_61
    if-ne v3, v4, :cond_64

    goto :goto_66

    :cond_64
    move v3, v6

    goto :goto_1f

    :cond_66
    :goto_66
    iget-object v1, p0, Lw3/a;->f:Lw3/d;

    invoke-virtual {v1}, Lv3/m;->b()V

    iget-object v1, p0, Lw3/a;->e:Lw3/d;

    invoke-virtual {v1}, Lv3/m;->b()V

    :goto_70
    if-nez v0, :cond_74

    move-object v1, v5

    goto :goto_78

    :cond_74
    invoke-virtual {v0, v2}, Lw3/a$a;->a(Z)Lw3/h;

    move-result-object v1

    :goto_78
    if-nez v1, :cond_9c

    iget-object v1, p0, Lw3/a;->e:Lw3/d;

    invoke-virtual {v1}, Lv3/m;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw3/h;

    if-nez v1, :cond_9c

    iget-object v1, p0, Lw3/a;->f:Lw3/d;

    invoke-virtual {v1}, Lv3/m;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw3/h;

    if-nez v1, :cond_9c

    if-nez v0, :cond_91

    goto :goto_95

    :cond_91
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lw3/a$a;->h(I)Z

    :goto_95
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lw3/a;->parkedWorkersStack:J

    iput-wide v0, p0, Lw3/a;->controlState:J

    :goto_9b
    return-void

    :cond_9c
    invoke-virtual {p0, v1}, Lw3/a;->i(Lw3/h;)V

    goto :goto_70

    :catchall_a0
    move-exception p0

    monitor-exit v3

    throw p0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {p0, p1, v0, v1, v2}, Lw3/a;->e(Lw3/a;Ljava/lang/Runnable;Lw3/i;ZI)V

    return-void
.end method

.method public final f(Lw3/a$a;)I
    .registers 2

    invoke-virtual {p1}, Lw3/a$a;->c()Ljava/lang/Object;

    move-result-object p0

    :goto_4
    sget-object p1, Lw3/a;->k:Lv3/y;

    if-ne p0, p1, :cond_a

    const/4 p0, -0x1

    return p0

    :cond_a
    if-nez p0, :cond_e

    const/4 p0, 0x0

    return p0

    :cond_e
    check-cast p0, Lw3/a$a;

    invoke-virtual {p0}, Lw3/a$a;->b()I

    move-result p1

    if-eqz p1, :cond_17

    return p1

    :cond_17
    invoke-virtual {p0}, Lw3/a$a;->c()Ljava/lang/Object;

    move-result-object p0

    goto :goto_4
.end method

.method public final g(Lw3/a$a;)Z
    .registers 10

    invoke-virtual {p1}, Lw3/a$a;->c()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lw3/a;->k:Lv3/y;

    if-eq v0, v1, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    iget-wide v2, p0, Lw3/a;->parkedWorkersStack:J

    const-wide/32 v0, 0x1fffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    const-wide/32 v4, 0x200000

    add-long/2addr v4, v2

    const-wide/32 v6, -0x200000

    and-long/2addr v4, v6

    invoke-virtual {p1}, Lw3/a$a;->b()I

    move-result v1

    iget-object v6, p0, Lw3/a;->g:Lv3/v;

    invoke-virtual {v6, v0}, Lv3/v;->b(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lw3/a$a;->g(Ljava/lang/Object;)V

    sget-object v0, Lw3/a;->h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    int-to-long v6, v1

    or-long/2addr v4, v6

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x1

    return p0
.end method

.method public final h(Lw3/a$a;II)V
    .registers 12

    :cond_0
    :goto_0
    iget-wide v2, p0, Lw3/a;->parkedWorkersStack:J

    const-wide/32 v0, 0x1fffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    const-wide/32 v4, 0x200000

    add-long/2addr v4, v2

    const-wide/32 v6, -0x200000

    and-long/2addr v4, v6

    if-ne v0, p2, :cond_19

    if-nez p3, :cond_18

    invoke-virtual {p0, p1}, Lw3/a;->f(Lw3/a$a;)I

    move-result v0

    goto :goto_19

    :cond_18
    move v0, p3

    :cond_19
    :goto_19
    if-gez v0, :cond_1c

    goto :goto_0

    :cond_1c
    sget-object v1, Lw3/a;->h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    int-to-long v6, v0

    or-long/2addr v4, v6

    move-object v0, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final i(Lw3/h;)V
    .registers 3

    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    goto :goto_10

    :catchall_4
    move-exception p0

    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    :goto_10
    return-void

    :catchall_11
    move-exception p0

    throw p0
.end method

.method public final isTerminated()Z
    .registers 1

    iget p0, p0, Lw3/a;->_isTerminated:I

    return p0
.end method

.method public final k()V
    .registers 3

    invoke-virtual {p0}, Lw3/a;->m()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-wide v0, p0, Lw3/a;->controlState:J

    invoke-virtual {p0, v0, v1}, Lw3/a;->l(J)Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    :cond_10
    invoke-virtual {p0}, Lw3/a;->m()Z

    return-void
.end method

.method public final l(J)Z
    .registers 6

    const-wide/32 v0, 0x1fffff

    and-long/2addr v0, p1

    long-to-int v0, v0

    const-wide v1, 0x3ffffe00000L

    and-long/2addr p1, v1

    const/16 v1, 0x15

    shr-long/2addr p1, v1

    long-to-int p1, p1

    sub-int/2addr v0, p1

    const/4 p1, 0x0

    if-gez v0, :cond_14

    move v0, p1

    :cond_14
    iget p2, p0, Lw3/a;->a:I

    if-ge v0, p2, :cond_29

    invoke-virtual {p0}, Lw3/a;->a()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_26

    iget v1, p0, Lw3/a;->a:I

    if-le v1, v0, :cond_26

    invoke-virtual {p0}, Lw3/a;->a()I

    :cond_26
    if-lez p2, :cond_29

    return v0

    :cond_29
    return p1
.end method

.method public final m()Z
    .registers 10

    :cond_0
    :goto_0
    iget-wide v2, p0, Lw3/a;->parkedWorkersStack:J

    const-wide/32 v0, 0x1fffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    iget-object v1, p0, Lw3/a;->g:Lv3/v;

    invoke-virtual {v1, v0}, Lv3/v;->b(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lw3/a$a;

    if-nez v6, :cond_14

    const/4 v6, 0x0

    goto :goto_35

    :cond_14
    const-wide/32 v0, 0x200000

    add-long/2addr v0, v2

    const-wide/32 v4, -0x200000

    and-long/2addr v0, v4

    invoke-virtual {p0, v6}, Lw3/a;->f(Lw3/a$a;)I

    move-result v4

    if-gez v4, :cond_23

    goto :goto_0

    :cond_23
    sget-object v5, Lw3/a;->h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    int-to-long v7, v4

    or-long/2addr v7, v0

    move-object v0, v5

    move-object v1, p0

    move-wide v4, v7

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lw3/a;->k:Lv3/y;

    invoke-virtual {v6, v0}, Lw3/a$a;->g(Ljava/lang/Object;)V

    :goto_35
    const/4 v0, 0x0

    if-nez v6, :cond_39

    return v0

    :cond_39
    sget-object v1, Lw3/a$a;->h:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, -0x1

    invoke-virtual {v1, v6, v2, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v6}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    const/4 p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 13

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lw3/a;->g:Lv3/v;

    invoke-virtual {v1}, Lv3/v;->a()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v8, v2

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_12
    if-ge v8, v1, :cond_89

    add-int/lit8 v9, v8, 0x1

    iget-object v10, p0, Lw3/a;->g:Lv3/v;

    invoke-virtual {v10, v8}, Lv3/v;->b(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lw3/a$a;

    if-nez v8, :cond_21

    goto :goto_87

    :cond_21
    iget-object v10, v8, Lw3/a$a;->a:Lw3/n;

    invoke-virtual {v10}, Lw3/n;->d()I

    move-result v10

    iget v8, v8, Lw3/a$a;->b:I

    invoke-static {v8}, Lj/b;->f(I)I

    move-result v8

    if-eqz v8, :cond_71

    if-eq v8, v2, :cond_5a

    const/4 v11, 0x2

    if-eq v8, v11, :cond_57

    const/4 v11, 0x3

    if-eq v8, v11, :cond_3e

    const/4 v10, 0x4

    if-eq v8, v10, :cond_3b

    goto :goto_87

    :cond_3b
    add-int/lit8 v7, v7, 0x1

    goto :goto_87

    :cond_3e
    add-int/lit8 v6, v6, 0x1

    if-lez v10, :cond_87

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v10, 0x64

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_87

    :cond_57
    add-int/lit8 v5, v5, 0x1

    goto :goto_87

    :cond_5a
    add-int/lit8 v4, v4, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v10, 0x62

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_87

    :cond_71
    add-int/lit8 v3, v3, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v10, 0x63

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_87
    :goto_87
    move v8, v9

    goto :goto_12

    :cond_89
    iget-wide v1, p0, Lw3/a;->controlState:J

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lw3/a;->d:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x40

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lq3/h0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "[Pool Size {core = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lw3/a;->a:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", max = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lw3/a;->b:I

    const-string v10, "}, Worker States {CPU = "

    const-string v11, ", blocking = "

    invoke-static {v8, v9, v10, v3, v11}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v3, ", parked = "

    const-string v9, ", dormant = "

    invoke-static {v8, v4, v3, v5, v9}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v3, ", terminated = "

    const-string v4, "}, running workers queues = "

    invoke-static {v8, v6, v3, v7, v4}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", global CPU queue size = "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lw3/a;->e:Lw3/d;

    invoke-virtual {v0}, Lv3/m;->c()I

    move-result v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", global blocking queue size = "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lw3/a;->f:Lw3/d;

    invoke-virtual {v0}, Lv3/m;->c()I

    move-result v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", Control State {created workers= "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v3, 0x1fffff

    and-long/2addr v3, v1

    long-to-int v0, v3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", blocking tasks = "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v3, 0x3ffffe00000L

    and-long/2addr v3, v1

    const/16 v0, 0x15

    shr-long/2addr v3, v0

    long-to-int v0, v3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", CPUs acquired = "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lw3/a;->a:I

    const-wide v3, 0x7ffffc0000000000L

    and-long v0, v1, v3

    const/16 v2, 0x2a

    shr-long/2addr v0, v2

    long-to-int v0, v0

    sub-int/2addr p0, v0

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}]"

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
