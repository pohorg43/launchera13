.class public final Lw3/a$a;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# static fields
.field public static final synthetic h:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field public final a:Lw3/n;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public b:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public c:J

.field public d:J

.field public e:I

.field public f:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final synthetic g:Lw3/a;

.field private volatile indexInArray:I

.field private volatile nextParkedWorker:Ljava/lang/Object;

.field public volatile synthetic workerCtl:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-class v0, Lw3/a$a;

    const-string v1, "workerCtl"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lw3/a$a;->h:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lw3/a;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iput-object p1, p0, Lw3/a$a;->g:Lw3/a;

    iput-object p1, p0, Lw3/a$a;->g:Lw3/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    new-instance p1, Lw3/n;

    invoke-direct {p1}, Lw3/n;-><init>()V

    iput-object p1, p0, Lw3/a$a;->a:Lw3/n;

    const/4 p1, 0x4

    iput p1, p0, Lw3/a$a;->b:I

    const/4 p1, 0x0

    iput p1, p0, Lw3/a$a;->workerCtl:I

    sget-object p1, Lw3/a;->k:Lv3/y;

    iput-object p1, p0, Lw3/a$a;->nextParkedWorker:Ljava/lang/Object;

    sget-object p1, Lk3/c;->a:Lk3/c$a;

    sget-object p1, Lk3/c;->b:Lk3/c;

    invoke-virtual {p1}, Lk3/c;->a()I

    move-result p1

    iput p1, p0, Lw3/a$a;->e:I

    invoke-virtual {p0, p2}, Lw3/a$a;->f(I)V

    return-void
.end method


# virtual methods
.method public final a(Z)Lw3/h;
    .registers 11

    iget v0, p0, Lw3/a$a;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_7

    goto :goto_2e

    :cond_7
    iget-object v0, p0, Lw3/a$a;->g:Lw3/a;

    :cond_9
    iget-wide v5, v0, Lw3/a;->controlState:J

    const-wide v3, 0x7ffffc0000000000L

    and-long/2addr v3, v5

    const/16 v7, 0x2a

    shr-long/2addr v3, v7

    long-to-int v3, v3

    if-nez v3, :cond_19

    move v0, v2

    goto :goto_2a

    :cond_19
    const-wide v3, 0x40000000000L

    sub-long v7, v5, v3

    sget-object v3, Lw3/a;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v3

    if-eqz v3, :cond_9

    move v0, v1

    :goto_2a
    if-eqz v0, :cond_30

    iput v1, p0, Lw3/a$a;->b:I

    :goto_2e
    move v0, v1

    goto :goto_31

    :cond_30
    move v0, v2

    :goto_31
    if-eqz v0, :cond_67

    if-eqz p1, :cond_5c

    iget-object p1, p0, Lw3/a$a;->g:Lw3/a;

    iget p1, p1, Lw3/a;->a:I

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lw3/a$a;->d(I)I

    move-result p1

    if-nez p1, :cond_42

    goto :goto_43

    :cond_42
    move v1, v2

    :goto_43
    if-eqz v1, :cond_4b

    invoke-virtual {p0}, Lw3/a$a;->e()Lw3/h;

    move-result-object p1

    if-nez p1, :cond_66

    :cond_4b
    iget-object p1, p0, Lw3/a$a;->a:Lw3/n;

    invoke-virtual {p1}, Lw3/n;->e()Lw3/h;

    move-result-object p1

    if-nez p1, :cond_66

    if-nez v1, :cond_62

    invoke-virtual {p0}, Lw3/a$a;->e()Lw3/h;

    move-result-object p1

    if-nez p1, :cond_66

    goto :goto_62

    :cond_5c
    invoke-virtual {p0}, Lw3/a$a;->e()Lw3/h;

    move-result-object p1

    if-nez p1, :cond_66

    :cond_62
    :goto_62
    invoke-virtual {p0, v2}, Lw3/a$a;->i(Z)Lw3/h;

    move-result-object p1

    :cond_66
    return-object p1

    :cond_67
    if-eqz p1, :cond_7c

    iget-object p1, p0, Lw3/a$a;->a:Lw3/n;

    invoke-virtual {p1}, Lw3/n;->e()Lw3/h;

    move-result-object p1

    if-nez p1, :cond_86

    iget-object p1, p0, Lw3/a$a;->g:Lw3/a;

    iget-object p1, p1, Lw3/a;->f:Lw3/d;

    invoke-virtual {p1}, Lv3/m;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw3/h;

    goto :goto_86

    :cond_7c
    iget-object p1, p0, Lw3/a$a;->g:Lw3/a;

    iget-object p1, p1, Lw3/a;->f:Lw3/d;

    invoke-virtual {p1}, Lv3/m;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw3/h;

    :cond_86
    :goto_86
    if-nez p1, :cond_8c

    invoke-virtual {p0, v1}, Lw3/a$a;->i(Z)Lw3/h;

    move-result-object p1

    :cond_8c
    return-object p1
.end method

.method public final b()I
    .registers 1

    iget p0, p0, Lw3/a$a;->indexInArray:I

    return p0
.end method

.method public final c()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lw3/a$a;->nextParkedWorker:Ljava/lang/Object;

    return-object p0
.end method

.method public final d(I)I
    .registers 4

    iget v0, p0, Lw3/a$a;->e:I

    shl-int/lit8 v1, v0, 0xd

    xor-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x11

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x5

    xor-int/2addr v0, v1

    iput v0, p0, Lw3/a$a;->e:I

    add-int/lit8 p0, p1, -0x1

    and-int v1, p0, p1

    if-nez v1, :cond_15

    and-int/2addr p0, v0

    return p0

    :cond_15
    const p0, 0x7fffffff

    and-int/2addr p0, v0

    rem-int/2addr p0, p1

    return p0
.end method

.method public final e()Lw3/h;
    .registers 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lw3/a$a;->d(I)I

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lw3/a$a;->g:Lw3/a;

    iget-object v0, v0, Lw3/a;->e:Lw3/d;

    invoke-virtual {v0}, Lv3/m;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw3/h;

    if-nez v0, :cond_1e

    iget-object p0, p0, Lw3/a$a;->g:Lw3/a;

    iget-object p0, p0, Lw3/a;->f:Lw3/d;

    invoke-virtual {p0}, Lv3/m;->d()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lw3/h;

    return-object p0

    :cond_1e
    return-object v0

    :cond_1f
    iget-object v0, p0, Lw3/a$a;->g:Lw3/a;

    iget-object v0, v0, Lw3/a;->f:Lw3/d;

    invoke-virtual {v0}, Lv3/m;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw3/h;

    if-nez v0, :cond_36

    iget-object p0, p0, Lw3/a$a;->g:Lw3/a;

    iget-object p0, p0, Lw3/a;->e:Lw3/d;

    invoke-virtual {p0}, Lv3/m;->d()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lw3/h;

    return-object p0

    :cond_36
    return-object v0
.end method

.method public final f(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lw3/a$a;->g:Lw3/a;

    iget-object v1, v1, Lw3/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-worker-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_16

    const-string v1, "TERMINATED"

    goto :goto_1a

    :cond_16
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iput p1, p0, Lw3/a$a;->indexInArray:I

    return-void
.end method

.method public final g(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lw3/a$a;->nextParkedWorker:Ljava/lang/Object;

    return-void
.end method

.method public final h(I)Z
    .registers 8

    iget v0, p0, Lw3/a$a;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    if-eqz v1, :cond_15

    iget-object v2, p0, Lw3/a$a;->g:Lw3/a;

    sget-object v3, Lw3/a;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide v4, 0x40000000000L

    invoke-virtual {v3, v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    :cond_15
    if-eq v0, p1, :cond_19

    iput p1, p0, Lw3/a$a;->b:I

    :cond_19
    return v1
.end method

.method public final i(Z)Lw3/h;
    .registers 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lw3/a$a;->g:Lw3/a;

    iget-wide v1, v1, Lw3/a;->controlState:J

    const-wide/32 v3, 0x1fffff

    and-long/2addr v1, v3

    long-to-int v1, v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_10

    return-object v3

    :cond_10
    invoke-virtual {v0, v1}, Lw3/a$a;->d(I)I

    move-result v2

    iget-object v4, v0, Lw3/a$a;->g:Lw3/a;

    const/4 v5, 0x0

    move v8, v5

    const-wide v9, 0x7fffffffffffffffL

    :goto_1d
    const-wide/16 v11, 0x0

    if-ge v8, v1, :cond_6e

    add-int/lit8 v8, v8, 0x1

    const/4 v13, 0x1

    add-int/2addr v2, v13

    if-le v2, v1, :cond_28

    move v2, v13

    :cond_28
    iget-object v13, v4, Lw3/a;->g:Lv3/v;

    invoke-virtual {v13, v2}, Lv3/v;->b(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lw3/a$a;

    if-eqz v13, :cond_6c

    if-eq v13, v0, :cond_6c

    const-wide/16 v14, -0x1

    if-eqz p1, :cond_43

    iget-object v3, v0, Lw3/a$a;->a:Lw3/n;

    iget-object v13, v13, Lw3/a$a;->a:Lw3/n;

    invoke-virtual {v3, v13}, Lw3/n;->g(Lw3/n;)J

    move-result-wide v16

    move-wide/from16 v6, v16

    goto :goto_59

    :cond_43
    iget-object v3, v0, Lw3/a$a;->a:Lw3/n;

    iget-object v13, v13, Lw3/a$a;->a:Lw3/n;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v13}, Lw3/n;->f()Lw3/h;

    move-result-object v6

    if-eqz v6, :cond_55

    invoke-virtual {v3, v6, v5}, Lw3/n;->a(Lw3/h;Z)Lw3/h;

    move-wide v6, v14

    goto :goto_59

    :cond_55
    invoke-virtual {v3, v13, v5}, Lw3/n;->h(Lw3/n;Z)J

    move-result-wide v6

    :goto_59
    cmp-long v3, v6, v14

    if-nez v3, :cond_64

    iget-object v0, v0, Lw3/a$a;->a:Lw3/n;

    invoke-virtual {v0}, Lw3/n;->e()Lw3/h;

    move-result-object v0

    return-object v0

    :cond_64
    cmp-long v3, v6, v11

    if-lez v3, :cond_6c

    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    :cond_6c
    const/4 v3, 0x0

    goto :goto_1d

    :cond_6e
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v1, v9, v2

    if-eqz v1, :cond_78

    goto :goto_79

    :cond_78
    move-wide v9, v11

    :goto_79
    iput-wide v9, v0, Lw3/a$a;->d:J

    const/4 v0, 0x0

    return-object v0
.end method

.method public run()V
    .registers 18

    move-object/from16 v0, p0

    :cond_2
    :goto_2
    const/4 v1, 0x0

    move v2, v1

    :cond_4
    :goto_4
    iget-object v3, v0, Lw3/a$a;->g:Lw3/a;

    invoke-virtual {v3}, Lw3/a;->isTerminated()Z

    move-result v3

    const/4 v4, 0x5

    if-nez v3, :cond_127

    iget v3, v0, Lw3/a$a;->b:I

    if-eq v3, v4, :cond_127

    iget-boolean v3, v0, Lw3/a$a;->f:Z

    invoke-virtual {v0, v3}, Lw3/a$a;->a(Z)Lw3/h;

    move-result-object v3

    const-wide/16 v5, 0x0

    const/4 v7, 0x3

    if-eqz v3, :cond_55

    iput-wide v5, v0, Lw3/a$a;->d:J

    const/4 v1, 0x2

    iget-object v2, v3, Lw3/h;->b:Lw3/i;

    invoke-interface {v2}, Lw3/i;->b()I

    move-result v2

    iput-wide v5, v0, Lw3/a$a;->c:J

    iget v5, v0, Lw3/a$a;->b:I

    if-ne v5, v7, :cond_2d

    iput v1, v0, Lw3/a$a;->b:I

    :cond_2d
    if-nez v2, :cond_30

    goto :goto_3b

    :cond_30
    invoke-virtual {v0, v1}, Lw3/a$a;->h(I)Z

    move-result v1

    if-eqz v1, :cond_3b

    iget-object v1, v0, Lw3/a$a;->g:Lw3/a;

    invoke-virtual {v1}, Lw3/a;->k()V

    :cond_3b
    :goto_3b
    iget-object v1, v0, Lw3/a$a;->g:Lw3/a;

    invoke-virtual {v1, v3}, Lw3/a;->i(Lw3/h;)V

    if-nez v2, :cond_43

    goto :goto_2

    :cond_43
    iget-object v1, v0, Lw3/a$a;->g:Lw3/a;

    sget-object v2, Lw3/a;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/32 v5, -0x200000

    invoke-virtual {v2, v1, v5, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    iget v1, v0, Lw3/a$a;->b:I

    if-eq v1, v4, :cond_2

    const/4 v1, 0x4

    iput v1, v0, Lw3/a$a;->b:I

    goto :goto_2

    :cond_55
    iput-boolean v1, v0, Lw3/a$a;->f:Z

    iget-wide v8, v0, Lw3/a$a;->d:J

    cmp-long v3, v8, v5

    const/4 v8, 0x1

    if-eqz v3, :cond_70

    if-nez v2, :cond_62

    move v2, v8

    goto :goto_4

    :cond_62
    invoke-virtual {v0, v7}, Lw3/a$a;->h(I)Z

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    iget-wide v1, v0, Lw3/a$a;->d:J

    invoke-static {v1, v2}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    iput-wide v5, v0, Lw3/a$a;->d:J

    goto :goto_2

    :cond_70
    iget-object v3, v0, Lw3/a$a;->nextParkedWorker:Ljava/lang/Object;

    sget-object v9, Lw3/a;->k:Lv3/y;

    if-eq v3, v9, :cond_78

    move v3, v8

    goto :goto_79

    :cond_78
    move v3, v1

    :goto_79
    if-nez v3, :cond_81

    iget-object v3, v0, Lw3/a$a;->g:Lw3/a;

    invoke-virtual {v3, v0}, Lw3/a;->g(Lw3/a$a;)Z

    goto :goto_4

    :cond_81
    const/4 v3, -0x1

    iput v3, v0, Lw3/a$a;->workerCtl:I

    :cond_84
    :goto_84
    iget-object v9, v0, Lw3/a$a;->nextParkedWorker:Ljava/lang/Object;

    sget-object v10, Lw3/a;->k:Lv3/y;

    if-eq v9, v10, :cond_8c

    move v9, v8

    goto :goto_8d

    :cond_8c
    move v9, v1

    :goto_8d
    if-eqz v9, :cond_4

    iget v9, v0, Lw3/a$a;->workerCtl:I

    if-ne v9, v3, :cond_4

    iget-object v9, v0, Lw3/a$a;->g:Lw3/a;

    invoke-virtual {v9}, Lw3/a;->isTerminated()Z

    move-result v9

    if-nez v9, :cond_4

    iget v9, v0, Lw3/a$a;->b:I

    if-ne v9, v4, :cond_a1

    goto/16 :goto_4

    :cond_a1
    invoke-virtual {v0, v7}, Lw3/a$a;->h(I)Z

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    iget-wide v9, v0, Lw3/a$a;->c:J

    cmp-long v9, v9, v5

    if-nez v9, :cond_b8

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    iget-object v11, v0, Lw3/a$a;->g:Lw3/a;

    iget-wide v11, v11, Lw3/a;->c:J

    add-long/2addr v9, v11

    iput-wide v9, v0, Lw3/a$a;->c:J

    :cond_b8
    iget-object v9, v0, Lw3/a$a;->g:Lw3/a;

    iget-wide v9, v9, Lw3/a;->c:J

    invoke-static {v9, v10}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    iget-wide v11, v0, Lw3/a$a;->c:J

    sub-long/2addr v9, v11

    cmp-long v9, v9, v5

    if-ltz v9, :cond_84

    iput-wide v5, v0, Lw3/a$a;->c:J

    iget-object v9, v0, Lw3/a$a;->g:Lw3/a;

    iget-object v10, v9, Lw3/a;->g:Lv3/v;

    monitor-enter v10

    :try_start_d1
    invoke-virtual {v9}, Lw3/a;->isTerminated()Z

    move-result v11
    :try_end_d5
    .catchall {:try_start_d1 .. :try_end_d5} :catchall_124

    if-eqz v11, :cond_d9

    monitor-exit v10

    goto :goto_84

    :cond_d9
    :try_start_d9
    iget-wide v11, v9, Lw3/a;->controlState:J

    const-wide/32 v13, 0x1fffff

    and-long/2addr v11, v13

    long-to-int v11, v11

    iget v12, v9, Lw3/a;->a:I
    :try_end_e2
    .catchall {:try_start_d9 .. :try_end_e2} :catchall_124

    if-gt v11, v12, :cond_e6

    monitor-exit v10

    goto :goto_84

    :cond_e6
    :try_start_e6
    sget-object v11, Lw3/a$a;->h:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v11, v0, v3, v8}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v11
    :try_end_ec
    .catchall {:try_start_e6 .. :try_end_ec} :catchall_124

    if-nez v11, :cond_f0

    monitor-exit v10

    goto :goto_84

    :cond_f0
    :try_start_f0
    iget v11, v0, Lw3/a$a;->indexInArray:I

    invoke-virtual {v0, v1}, Lw3/a$a;->f(I)V

    invoke-virtual {v9, v0, v11, v1}, Lw3/a;->h(Lw3/a$a;II)V

    sget-object v12, Lw3/a;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v12, v9}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndDecrement(Ljava/lang/Object;)J

    move-result-wide v15

    and-long v12, v15, v13

    long-to-int v12, v12

    if-eq v12, v11, :cond_119

    iget-object v13, v9, Lw3/a;->g:Lv3/v;

    invoke-virtual {v13, v12}, Lv3/v;->b(I)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v13, Lw3/a$a;

    iget-object v14, v9, Lw3/a;->g:Lv3/v;

    invoke-virtual {v14, v11, v13}, Lv3/v;->c(ILjava/lang/Object;)V

    invoke-virtual {v13, v11}, Lw3/a$a;->f(I)V

    invoke-virtual {v9, v13, v12, v11}, Lw3/a;->h(Lw3/a$a;II)V

    :cond_119
    iget-object v9, v9, Lw3/a;->g:Lv3/v;

    const/4 v11, 0x0

    invoke-virtual {v9, v12, v11}, Lv3/v;->c(ILjava/lang/Object;)V
    :try_end_11f
    .catchall {:try_start_f0 .. :try_end_11f} :catchall_124

    monitor-exit v10

    iput v4, v0, Lw3/a$a;->b:I

    goto/16 :goto_84

    :catchall_124
    move-exception v0

    monitor-exit v10

    throw v0

    :cond_127
    invoke-virtual {v0, v4}, Lw3/a$a;->h(I)Z

    return-void
.end method
