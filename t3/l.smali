.class public final Lt3/l;
.super Lu3/a;
.source ""

# interfaces
.implements Lt3/i;
.implements Lt3/d;
.implements Lu3/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lu3/a<",
        "Lt3/n;",
        ">;",
        "Lt3/i<",
        "TT;>;",
        "Lu3/m<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private volatile synthetic _state:Ljava/lang/Object;

.field public d:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Lu3/a;-><init>()V

    iput-object p1, p0, Lt3/l;->_state:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lt3/e;Lb3/d;)Ljava/lang/Object;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt3/e<",
            "-TT;>;",
            "Lb3/d<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    sget-object v3, Lc3/a;->a:Lc3/a;

    instance-of v4, v2, Lt3/l$a;

    if-eqz v4, :cond_1b

    move-object v4, v2

    check-cast v4, Lt3/l$a;

    iget v5, v4, Lt3/l$a;->h:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_1b

    sub-int/2addr v5, v6

    iput v5, v4, Lt3/l$a;->h:I

    goto :goto_20

    :cond_1b
    new-instance v4, Lt3/l$a;

    invoke-direct {v4, v1, v2}, Lt3/l$a;-><init>(Lt3/l;Lb3/d;)V

    :goto_20
    iget-object v2, v4, Lt3/l$a;->f:Ljava/lang/Object;

    iget v5, v4, Lt3/l$a;->h:I

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v5, :cond_92

    if-eq v5, v10, :cond_74

    if-eq v5, v7, :cond_55

    if-ne v5, v8, :cond_4d

    iget-object v0, v4, Lt3/l$a;->e:Ljava/lang/Object;

    iget-object v1, v4, Lt3/l$a;->d:Ljava/lang/Object;

    check-cast v1, Lq3/i1;

    iget-object v5, v4, Lt3/l$a;->c:Ljava/lang/Object;

    check-cast v5, Lt3/n;

    iget-object v11, v4, Lt3/l$a;->b:Ljava/lang/Object;

    check-cast v11, Lt3/e;

    iget-object v12, v4, Lt3/l$a;->a:Ljava/lang/Object;

    check-cast v12, Lt3/l;

    :try_start_42
    invoke-static {v2}, Lq/d;->p(Ljava/lang/Object;)V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_71

    move-object v2, v1

    move-object v1, v12

    move-object v12, v11

    move-object v11, v5

    :goto_49
    move-object v5, v4

    move-object v4, v3

    goto/16 :goto_103

    :cond_4d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_55
    iget-object v0, v4, Lt3/l$a;->e:Ljava/lang/Object;

    iget-object v1, v4, Lt3/l$a;->d:Ljava/lang/Object;

    check-cast v1, Lq3/i1;

    iget-object v5, v4, Lt3/l$a;->c:Ljava/lang/Object;

    check-cast v5, Lt3/n;

    iget-object v11, v4, Lt3/l$a;->b:Ljava/lang/Object;

    check-cast v11, Lt3/e;

    iget-object v12, v4, Lt3/l$a;->a:Ljava/lang/Object;

    check-cast v12, Lt3/l;

    :try_start_67
    invoke-static {v2}, Lq/d;->p(Ljava/lang/Object;)V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_71

    move-object v2, v12

    move-object v12, v11

    move-object v11, v5

    move-object v5, v4

    move-object v4, v3

    goto/16 :goto_136

    :catchall_71
    move-exception v0

    goto/16 :goto_193

    :cond_74
    iget-object v0, v4, Lt3/l$a;->c:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lt3/n;

    iget-object v0, v4, Lt3/l$a;->b:Ljava/lang/Object;

    check-cast v0, Lt3/e;

    iget-object v5, v4, Lt3/l$a;->a:Ljava/lang/Object;

    check-cast v5, Lt3/l;

    :try_start_81
    invoke-static {v2}, Lq/d;->p(Ljava/lang/Object;)V
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_8a

    move-object/from16 v16, v5

    move-object v5, v1

    move-object/from16 v1, v16

    goto :goto_f0

    :catchall_8a
    move-exception v0

    move-object/from16 v16, v5

    move-object v5, v1

    move-object/from16 v1, v16

    goto/16 :goto_192

    :cond_92
    invoke-static {v2}, Lq/d;->p(Ljava/lang/Object;)V

    monitor-enter p0

    :try_start_96
    iget-object v2, v1, Lu3/a;->a:[Lu3/c;

    if-nez v2, :cond_9f

    new-array v2, v7, [Lt3/n;

    iput-object v2, v1, Lu3/a;->a:[Lu3/c;

    goto :goto_b6

    :cond_9f
    iget v5, v1, Lu3/a;->b:I

    array-length v11, v2

    if-lt v5, v11, :cond_b6

    array-length v5, v2

    mul-int/2addr v5, v7

    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v5, "copyOf(this, newSize)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v2

    check-cast v5, [Lu3/c;

    iput-object v5, v1, Lu3/a;->a:[Lu3/c;

    check-cast v2, [Lu3/c;

    :cond_b6
    :goto_b6
    iget v5, v1, Lu3/a;->c:I

    :cond_b8
    aget-object v11, v2, v5

    if-nez v11, :cond_c3

    new-instance v11, Lt3/n;

    invoke-direct {v11}, Lt3/n;-><init>()V

    aput-object v11, v2, v5

    :cond_c3
    add-int/lit8 v5, v5, 0x1

    array-length v12, v2

    if-lt v5, v12, :cond_c9

    move v5, v9

    :cond_c9
    invoke-virtual {v11, v1}, Lu3/c;->a(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b8

    iput v5, v1, Lu3/a;->c:I

    iget v2, v1, Lu3/a;->b:I

    add-int/2addr v2, v10

    iput v2, v1, Lu3/a;->b:I
    :try_end_d6
    .catchall {:try_start_96 .. :try_end_d6} :catchall_1b8

    monitor-exit p0

    check-cast v11, Lt3/n;

    :try_start_d9
    instance-of v2, v0, Lt3/o;

    if-eqz v2, :cond_ef

    move-object v2, v0

    check-cast v2, Lt3/o;

    iput-object v1, v4, Lt3/l$a;->a:Ljava/lang/Object;

    iput-object v0, v4, Lt3/l$a;->b:Ljava/lang/Object;

    iput-object v11, v4, Lt3/l$a;->c:Ljava/lang/Object;

    iput v10, v4, Lt3/l$a;->h:I

    invoke-virtual {v2, v4}, Lt3/o;->a(Lb3/d;)Ljava/lang/Object;

    move-result-object v2
    :try_end_ec
    .catchall {:try_start_d9 .. :try_end_ec} :catchall_189

    if-ne v2, v3, :cond_ef

    return-object v3

    :cond_ef
    move-object v5, v11

    :goto_f0
    :try_start_f0
    invoke-interface {v4}, Lb3/d;->getContext()Lb3/f;

    move-result-object v2

    sget v11, Lq3/i1;->C:I

    sget-object v11, Lq3/i1$b;->a:Lq3/i1$b;

    invoke-interface {v2, v11}, Lb3/f;->get(Lb3/f$b;)Lb3/f$a;

    move-result-object v2

    check-cast v2, Lq3/i1;
    :try_end_fe
    .catchall {:try_start_f0 .. :try_end_fe} :catchall_191

    move-object v12, v0

    move-object v11, v5

    const/4 v0, 0x0

    goto/16 :goto_49

    :cond_103
    :goto_103
    :try_start_103
    iget-object v13, v1, Lt3/l;->_state:Ljava/lang/Object;

    if-nez v2, :cond_108

    goto :goto_10e

    :cond_108
    invoke-interface {v2}, Lq3/i1;->a()Z

    move-result v14

    if-eqz v14, :cond_18c

    :goto_10e
    if-eqz v0, :cond_116

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_13b

    :cond_116
    sget-object v0, Lu3/p;->a:Lv3/y;

    if-ne v13, v0, :cond_11c

    const/4 v0, 0x0

    goto :goto_11d

    :cond_11c
    move-object v0, v13

    :goto_11d
    iput-object v1, v5, Lt3/l$a;->a:Ljava/lang/Object;

    iput-object v12, v5, Lt3/l$a;->b:Ljava/lang/Object;

    iput-object v11, v5, Lt3/l$a;->c:Ljava/lang/Object;

    iput-object v2, v5, Lt3/l$a;->d:Ljava/lang/Object;

    iput-object v13, v5, Lt3/l$a;->e:Ljava/lang/Object;

    iput v7, v5, Lt3/l$a;->h:I

    invoke-interface {v12, v0, v5}, Lt3/e;->emit(Ljava/lang/Object;Lb3/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_130

    return-object v3

    :cond_130
    move-object v0, v13

    move-object/from16 v16, v2

    move-object v2, v1

    move-object/from16 v1, v16

    :goto_136
    move-object/from16 v16, v2

    move-object v2, v1

    move-object/from16 v1, v16

    :cond_13b
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v13, Lt3/n;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v14, Lt3/m;->a:Lv3/y;

    invoke-virtual {v13, v11, v14}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v6, Lt3/m;->b:Lv3/y;

    if-ne v15, v6, :cond_14f

    move v6, v10

    goto :goto_150

    :cond_14f
    move v6, v9

    :goto_150
    if-nez v6, :cond_103

    iput-object v1, v5, Lt3/l$a;->a:Ljava/lang/Object;

    iput-object v12, v5, Lt3/l$a;->b:Ljava/lang/Object;

    iput-object v11, v5, Lt3/l$a;->c:Ljava/lang/Object;

    iput-object v2, v5, Lt3/l$a;->d:Ljava/lang/Object;

    iput-object v0, v5, Lt3/l$a;->e:Ljava/lang/Object;

    iput v8, v5, Lt3/l$a;->h:I

    new-instance v6, Lq3/l;

    invoke-static {v5}, Lq/d;->l(Lb3/d;)Lb3/d;

    move-result-object v15

    invoke-direct {v6, v15, v10}, Lq3/l;-><init>(Lb3/d;I)V

    invoke-virtual {v6}, Lq3/l;->u()V

    invoke-virtual {v13, v11, v14, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_171

    goto :goto_176

    :cond_171
    sget-object v13, Ly2/p;->a:Ly2/p;

    invoke-virtual {v6, v13}, Lq3/l;->resumeWith(Ljava/lang/Object;)V

    :goto_176
    invoke-virtual {v6}, Lq3/l;->t()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v4, :cond_181

    const-string v13, "frame"

    invoke-static {v5, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_181
    if-ne v6, v4, :cond_184

    goto :goto_186

    :cond_184
    sget-object v6, Ly2/p;->a:Ly2/p;

    :goto_186
    if-ne v6, v3, :cond_103

    return-object v3

    :catchall_189
    move-exception v0

    move-object v5, v11

    goto :goto_192

    :cond_18c
    invoke-interface {v2}, Lq3/i1;->i()Ljava/util/concurrent/CancellationException;

    move-result-object v0

    throw v0
    :try_end_191
    .catchall {:try_start_103 .. :try_end_191} :catchall_189

    :catchall_191
    move-exception v0

    :goto_192
    move-object v12, v1

    :goto_193
    monitor-enter v12

    :try_start_194
    iget v1, v12, Lu3/a;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v12, Lu3/a;->b:I

    if-nez v1, :cond_19e

    iput v9, v12, Lu3/a;->c:I

    :cond_19e
    invoke-virtual {v5, v12}, Lt3/n;->b(Ljava/lang/Object;)[Lb3/d;

    sget-object v1, Lu3/b;->a:[Lb3/d;
    :try_end_1a3
    .catchall {:try_start_194 .. :try_end_1a3} :catchall_1b5

    monitor-exit v12

    array-length v2, v1

    :goto_1a5
    if-ge v9, v2, :cond_1b4

    aget-object v3, v1, v9

    add-int/lit8 v9, v9, 0x1

    if-nez v3, :cond_1ae

    goto :goto_1a5

    :cond_1ae
    sget-object v4, Ly2/p;->a:Ly2/p;

    invoke-interface {v3, v4}, Lb3/d;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1a5

    :cond_1b4
    throw v0

    :catchall_1b5
    move-exception v0

    monitor-exit v12

    throw v0

    :catchall_1b8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lb3/f;ILs3/e;)Lt3/d;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb3/f;",
            "I",
            "Ls3/e;",
            ")",
            "Lt3/d<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-ltz p2, :cond_7

    const/4 v1, 0x2

    if-ge p2, v1, :cond_7

    const/4 v0, 0x1

    :cond_7
    if-nez v0, :cond_c

    const/4 v0, -0x2

    if-ne p2, v0, :cond_11

    :cond_c
    sget-object v0, Ls3/e;->b:Ls3/e;

    if-ne p3, v0, :cond_11

    goto :goto_21

    :cond_11
    if-eqz p2, :cond_16

    const/4 v0, -0x3

    if-ne p2, v0, :cond_1b

    :cond_16
    sget-object v0, Ls3/e;->a:Ls3/e;

    if-ne p3, v0, :cond_1b

    goto :goto_21

    :cond_1b
    new-instance v0, Lu3/i;

    invoke-direct {v0, p0, p1, p2, p3}, Lu3/i;-><init>(Lt3/d;Lb3/f;ILs3/e;)V

    move-object p0, v0

    :goto_21
    return-object p0
.end method

.method public emit(Ljava/lang/Object;Lb3/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lt3/l;->setValue(Ljava/lang/Object;)V

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-nez p1, :cond_4

    sget-object p1, Lu3/p;->a:Lv3/y;

    :cond_4
    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lt3/l;->_state:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_72

    if-eqz v0, :cond_11

    monitor-exit p0

    goto/16 :goto_71

    :cond_11
    :try_start_11
    iput-object p1, p0, Lt3/l;->_state:Ljava/lang/Object;

    iget p1, p0, Lt3/l;->d:I

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_6c

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lt3/l;->d:I

    iget-object v0, p0, Lu3/a;->a:[Lu3/c;
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_72

    monitor-exit p0

    :goto_20
    check-cast v0, [Lt3/n;

    if-nez v0, :cond_25

    goto :goto_57

    :cond_25
    array-length v2, v0

    move v3, v1

    :goto_27
    if-ge v3, v2, :cond_57

    aget-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    if-nez v4, :cond_30

    goto :goto_27

    :cond_30
    iget-object v5, v4, Lt3/n;->_state:Ljava/lang/Object;

    if-nez v5, :cond_35

    goto :goto_27

    :cond_35
    sget-object v6, Lt3/m;->b:Lv3/y;

    if-ne v5, v6, :cond_3a

    goto :goto_27

    :cond_3a
    sget-object v7, Lt3/m;->a:Lv3/y;

    if-ne v5, v7, :cond_47

    sget-object v7, Lt3/n;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v7, v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    goto :goto_27

    :cond_47
    sget-object v6, Lt3/n;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v6, v4, v5, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_30

    check-cast v5, Lq3/l;

    sget-object v4, Ly2/p;->a:Ly2/p;

    invoke-virtual {v5, v4}, Lq3/l;->resumeWith(Ljava/lang/Object;)V

    goto :goto_27

    :cond_57
    :goto_57
    monitor-enter p0

    :try_start_58
    iget v0, p0, Lt3/l;->d:I

    if-ne v0, p1, :cond_62

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lt3/l;->d:I
    :try_end_60
    .catchall {:try_start_58 .. :try_end_60} :catchall_69

    monitor-exit p0

    goto :goto_71

    :cond_62
    :try_start_62
    iget-object p1, p0, Lu3/a;->a:[Lu3/c;
    :try_end_64
    .catchall {:try_start_62 .. :try_end_64} :catchall_69

    monitor-exit p0

    move v8, v0

    move-object v0, p1

    move p1, v8

    goto :goto_20

    :catchall_69
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_6c
    add-int/lit8 p1, p1, 0x2

    :try_start_6e
    iput p1, p0, Lt3/l;->d:I
    :try_end_70
    .catchall {:try_start_6e .. :try_end_70} :catchall_72

    monitor-exit p0

    :goto_71
    return-void

    :catchall_72
    move-exception p1

    monitor-exit p0

    throw p1
.end method
