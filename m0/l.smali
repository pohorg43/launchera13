.class public Lm0/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lm0/n;
.implements Lo0/i$a;
.implements Lm0/q$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm0/l$b;,
        Lm0/l$a;,
        Lm0/l$c;,
        Lm0/l$d;
    }
.end annotation


# static fields
.field public static final h:Z


# instance fields
.field public final a:Lm0/t;

.field public final b:Lm0/p;

.field public final c:Lo0/i;

.field public final d:Lm0/l$b;

.field public final e:Lm0/z;

.field public final f:Lm0/l$a;

.field public final g:Lm0/a;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "Engine"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lm0/l;->h:Z

    return-void
.end method

.method public constructor <init>(Lo0/i;Lo0/a$a;Lp0/a;Lp0/a;Lp0/a;Lp0/a;Z)V
    .registers 16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm0/l;->c:Lo0/i;

    new-instance v0, Lm0/l$c;

    invoke-direct {v0, p2}, Lm0/l$c;-><init>(Lo0/a$a;)V

    new-instance p2, Lm0/a;

    invoke-direct {p2, p7}, Lm0/a;-><init>(Z)V

    iput-object p2, p0, Lm0/l;->g:Lm0/a;

    monitor-enter p0

    :try_start_12
    monitor-enter p2
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_49

    :try_start_13
    iput-object p0, p2, Lm0/a;->d:Lm0/q$a;

    monitor-exit p2
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_46

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_49

    new-instance p2, Lm0/p;

    invoke-direct {p2}, Lm0/p;-><init>()V

    iput-object p2, p0, Lm0/l;->b:Lm0/p;

    new-instance p2, Lm0/t;

    invoke-direct {p2}, Lm0/t;-><init>()V

    iput-object p2, p0, Lm0/l;->a:Lm0/t;

    new-instance p2, Lm0/l$b;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p0

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lm0/l$b;-><init>(Lp0/a;Lp0/a;Lp0/a;Lp0/a;Lm0/n;Lm0/q$a;)V

    iput-object p2, p0, Lm0/l;->d:Lm0/l$b;

    new-instance p2, Lm0/l$a;

    invoke-direct {p2, v0}, Lm0/l$a;-><init>(Lm0/i$d;)V

    iput-object p2, p0, Lm0/l;->f:Lm0/l$a;

    new-instance p2, Lm0/z;

    invoke-direct {p2}, Lm0/z;-><init>()V

    iput-object p2, p0, Lm0/l;->e:Lm0/z;

    check-cast p1, Lo0/h;

    iput-object p0, p1, Lo0/h;->d:Lo0/i$a;

    return-void

    :catchall_46
    move-exception p1

    :try_start_47
    monitor-exit p2
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    :try_start_48
    throw p1

    :catchall_49
    move-exception p1

    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_49

    throw p1
.end method

.method public static d(Ljava/lang/String;JLj0/c;)V
    .registers 5

    const-string v0, " in "

    invoke-static {p0, v0}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1, p2}, Lg1/b;->a(J)D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, "ms, key: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Engine"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public a(Lj0/c;Lm0/q;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj0/c;",
            "Lm0/q<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lm0/l;->g:Lm0/a;

    monitor-enter v0

    :try_start_3
    iget-object v1, v0, Lm0/a;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm0/a$b;

    if-eqz v1, :cond_13

    const/4 v2, 0x0

    iput-object v2, v1, Lm0/a$b;->c:Lm0/w;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_2a

    :cond_13
    monitor-exit v0

    iget-boolean v0, p2, Lm0/q;->a:Z

    if-eqz v0, :cond_23

    iget-object p0, p0, Lm0/l;->c:Lo0/i;

    check-cast p0, Lo0/h;

    invoke-virtual {p0, p1, p2}, Lg1/c;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm0/w;

    goto :goto_29

    :cond_23
    iget-object p0, p0, Lm0/l;->e:Lm0/z;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lm0/z;->a(Lm0/w;Z)V

    :goto_29
    return-void

    :catchall_2a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public b(Lcom/bumptech/glide/d;Ljava/lang/Object;Lj0/c;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/e;Lm0/k;Ljava/util/Map;ZZLj0/e;ZZZZLc1/f;Ljava/util/concurrent/Executor;)Lm0/l$d;
    .registers 44
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/d;",
            "Ljava/lang/Object;",
            "Lj0/c;",
            "II",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/bumptech/glide/e;",
            "Lm0/k;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lj0/g<",
            "*>;>;ZZ",
            "Lj0/e;",
            "ZZZZ",
            "Lc1/f;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lm0/l$d;"
        }
    .end annotation

    move-object/from16 v15, p0

    sget-boolean v0, Lm0/l;->h:Z

    if-eqz v0, :cond_d

    sget v0, Lg1/b;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    goto :goto_f

    :cond_d
    const-wide/16 v0, 0x0

    :goto_f
    move-wide v13, v0

    iget-object v0, v15, Lm0/l;->b:Lm0/p;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lm0/o;

    move-object v1, v0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p10

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p13

    invoke-direct/range {v1 .. v9}, Lm0/o;-><init>(Ljava/lang/Object;Lj0/c;IILjava/util/Map;Ljava/lang/Class;Ljava/lang/Class;Lj0/e;)V

    monitor-enter p0

    move/from16 v12, p14

    :try_start_2e
    invoke-virtual {v15, v0, v12, v13, v14}, Lm0/l;->c(Lm0/o;ZJ)Lm0/q;

    move-result-object v1

    if-nez v1, :cond_66

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-wide/from16 v22, v13

    move/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, v0

    invoke-virtual/range {v1 .. v23}, Lm0/l;->g(Lcom/bumptech/glide/d;Ljava/lang/Object;Lj0/c;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/e;Lm0/k;Ljava/util/Map;ZZLj0/e;ZZZZLc1/f;Ljava/util/concurrent/Executor;Lm0/o;J)Lm0/l$d;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_66
    monitor-exit p0
    :try_end_67
    .catchall {:try_start_2e .. :try_end_67} :catchall_72

    sget-object v0, Lcom/bumptech/glide/load/a;->e:Lcom/bumptech/glide/load/a;

    move-object/from16 v2, p18

    check-cast v2, Lc1/g;

    invoke-virtual {v2, v1, v0}, Lc1/g;->m(Lm0/w;Lcom/bumptech/glide/load/a;)V

    const/4 v0, 0x0

    return-object v0

    :catchall_72
    move-exception v0

    :try_start_73
    monitor-exit p0
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    throw v0
.end method

.method public final c(Lm0/o;ZJ)Lm0/q;
    .registers 12
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm0/o;",
            "ZJ)",
            "Lm0/q<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return-object v0

    :cond_4
    iget-object p2, p0, Lm0/l;->g:Lm0/a;

    monitor-enter p2

    :try_start_7
    iget-object v1, p2, Lm0/a;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm0/a$b;
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_7c

    if-nez v1, :cond_14

    monitor-exit p2

    move-object v2, v0

    goto :goto_20

    :cond_14
    :try_start_14
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm0/q;

    if-nez v2, :cond_1f

    invoke-virtual {p2, v1}, Lm0/a;->b(Lm0/a$b;)V
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_7c

    :cond_1f
    monitor-exit p2

    :goto_20
    if-eqz v2, :cond_25

    invoke-virtual {v2}, Lm0/q;->a()V

    :cond_25
    if-eqz v2, :cond_31

    sget-boolean p0, Lm0/l;->h:Z

    if-eqz p0, :cond_30

    const-string p0, "Loaded resource from active resources"

    invoke-static {p0, p3, p4, p1}, Lm0/l;->d(Ljava/lang/String;JLj0/c;)V

    :cond_30
    return-object v2

    :cond_31
    iget-object p2, p0, Lm0/l;->c:Lo0/i;

    check-cast p2, Lo0/h;

    monitor-enter p2

    :try_start_36
    iget-object v1, p2, Lg1/c;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_48

    iget-wide v2, p2, Lg1/c;->c:J

    invoke-virtual {p2, v1}, Lo0/h;->b(Ljava/lang/Object;)I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iput-wide v2, p2, Lg1/c;->c:J
    :try_end_48
    .catchall {:try_start_36 .. :try_end_48} :catchall_79

    :cond_48
    monitor-exit p2

    move-object v2, v1

    check-cast v2, Lm0/w;

    if-nez v2, :cond_50

    move-object v2, v0

    goto :goto_62

    :cond_50
    instance-of p2, v2, Lm0/q;

    if-eqz p2, :cond_57

    check-cast v2, Lm0/q;

    goto :goto_62

    :cond_57
    new-instance p2, Lm0/q;

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v1, p2

    move-object v5, p1

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lm0/q;-><init>(Lm0/w;ZZLj0/c;Lm0/q$a;)V

    move-object v2, p2

    :goto_62
    if-eqz v2, :cond_6c

    invoke-virtual {v2}, Lm0/q;->a()V

    iget-object p0, p0, Lm0/l;->g:Lm0/a;

    invoke-virtual {p0, p1, v2}, Lm0/a;->a(Lj0/c;Lm0/q;)V

    :cond_6c
    if-eqz v2, :cond_78

    sget-boolean p0, Lm0/l;->h:Z

    if-eqz p0, :cond_77

    const-string p0, "Loaded resource from cache"

    invoke-static {p0, p3, p4, p1}, Lm0/l;->d(Ljava/lang/String;JLj0/c;)V

    :cond_77
    return-object v2

    :cond_78
    return-object v0

    :catchall_79
    move-exception p0

    monitor-exit p2

    throw p0

    :catchall_7c
    move-exception p0

    monitor-exit p2

    throw p0
.end method

.method public declared-synchronized e(Lm0/m;Lj0/c;Lm0/q;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm0/m<",
            "*>;",
            "Lj0/c;",
            "Lm0/q<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p3, :cond_c

    :try_start_3
    iget-boolean v0, p3, Lm0/q;->a:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lm0/l;->g:Lm0/a;

    invoke-virtual {v0, p2, p3}, Lm0/a;->a(Lj0/c;Lm0/q;)V

    :cond_c
    iget-object p3, p0, Lm0/l;->a:Lm0/t;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p1, Lm0/m;->p:Z

    invoke-virtual {p3, v0}, Lm0/t;->a(Z)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    invoke-interface {p3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_26

    :cond_24
    monitor-exit p0

    return-void

    :catchall_26
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public f(Lm0/w;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm0/w<",
            "*>;)V"
        }
    .end annotation

    instance-of p0, p1, Lm0/q;

    if-eqz p0, :cond_a

    check-cast p1, Lm0/q;

    invoke-virtual {p1}, Lm0/q;->d()V

    return-void

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot release anything but an EngineResource"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final g(Lcom/bumptech/glide/d;Ljava/lang/Object;Lj0/c;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/e;Lm0/k;Ljava/util/Map;ZZLj0/e;ZZZZLc1/f;Ljava/util/concurrent/Executor;Lm0/o;J)Lm0/l$d;
    .registers 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/d;",
            "Ljava/lang/Object;",
            "Lj0/c;",
            "II",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/bumptech/glide/e;",
            "Lm0/k;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lj0/g<",
            "*>;>;ZZ",
            "Lj0/e;",
            "ZZZZ",
            "Lc1/f;",
            "Ljava/util/concurrent/Executor;",
            "Lm0/o;",
            "J)",
            "Lm0/l$d;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p13

    move/from16 v9, p17

    move-object/from16 v10, p18

    move-object/from16 v11, p19

    move-object/from16 v12, p20

    move-wide/from16 v13, p21

    iget-object v15, v0, Lm0/l;->a:Lm0/t;

    if-eqz v9, :cond_23

    iget-object v15, v15, Lm0/t;->b:Ljava/util/Map;

    goto :goto_25

    :cond_23
    iget-object v15, v15, Lm0/t;->a:Ljava/util/Map;

    :goto_25
    invoke-interface {v15, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lm0/m;

    if-eqz v15, :cond_3f

    invoke-virtual {v15, v10, v11}, Lm0/m;->b(Lc1/f;Ljava/util/concurrent/Executor;)V

    sget-boolean v1, Lm0/l;->h:Z

    if-eqz v1, :cond_39

    const-string v1, "Added to existing load"

    invoke-static {v1, v13, v14, v12}, Lm0/l;->d(Ljava/lang/String;JLj0/c;)V

    :cond_39
    new-instance v1, Lm0/l$d;

    invoke-direct {v1, v0, v10, v15}, Lm0/l$d;-><init>(Lm0/l;Lc1/f;Lm0/m;)V

    return-object v1

    :cond_3f
    iget-object v15, v0, Lm0/l;->d:Lm0/l$b;

    iget-object v15, v15, Lm0/l$b;->g:Landroidx/core/util/Pools$Pool;

    invoke-interface {v15}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lm0/m;

    const-string v13, "Argument must not be null"

    invoke-static {v15, v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter v15

    :try_start_4f
    iput-object v12, v15, Lm0/m;->l:Lj0/c;

    move/from16 v13, p14

    iput-boolean v13, v15, Lm0/m;->m:Z

    move/from16 v13, p15

    iput-boolean v13, v15, Lm0/m;->n:Z

    move/from16 v13, p16

    iput-boolean v13, v15, Lm0/m;->o:Z

    iput-boolean v9, v15, Lm0/m;->p:Z
    :try_end_5f
    .catchall {:try_start_4f .. :try_end_5f} :catchall_116

    monitor-exit v15

    iget-object v13, v0, Lm0/l;->f:Lm0/l$a;

    iget-object v14, v13, Lm0/l$a;->b:Landroidx/core/util/Pools$Pool;

    invoke-interface {v14}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lm0/i;

    const-string v10, "Argument must not be null"

    invoke-static {v14, v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget v10, v13, Lm0/l$a;->c:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v13, Lm0/l$a;->c:I

    iget-object v11, v14, Lm0/i;->a:Lm0/h;

    iget-object v13, v14, Lm0/i;->d:Lm0/i$d;

    iput-object v1, v11, Lm0/h;->c:Lcom/bumptech/glide/d;

    iput-object v2, v11, Lm0/h;->d:Ljava/lang/Object;

    iput-object v3, v11, Lm0/h;->n:Lj0/c;

    iput v4, v11, Lm0/h;->e:I

    iput v5, v11, Lm0/h;->f:I

    iput-object v7, v11, Lm0/h;->p:Lm0/k;

    move-object/from16 v0, p6

    iput-object v0, v11, Lm0/h;->g:Ljava/lang/Class;

    iput-object v13, v11, Lm0/h;->h:Lm0/i$d;

    move-object/from16 v0, p7

    iput-object v0, v11, Lm0/h;->k:Ljava/lang/Class;

    iput-object v6, v11, Lm0/h;->o:Lcom/bumptech/glide/e;

    iput-object v8, v11, Lm0/h;->i:Lj0/e;

    move-object/from16 v0, p10

    iput-object v0, v11, Lm0/h;->j:Ljava/util/Map;

    move/from16 v0, p11

    iput-boolean v0, v11, Lm0/h;->q:Z

    move/from16 v0, p12

    iput-boolean v0, v11, Lm0/h;->r:Z

    iput-object v1, v14, Lm0/i;->h:Lcom/bumptech/glide/d;

    iput-object v3, v14, Lm0/i;->i:Lj0/c;

    iput-object v6, v14, Lm0/i;->j:Lcom/bumptech/glide/e;

    iput-object v12, v14, Lm0/i;->k:Lm0/o;

    iput v4, v14, Lm0/i;->l:I

    iput v5, v14, Lm0/i;->m:I

    iput-object v7, v14, Lm0/i;->n:Lm0/k;

    iput-boolean v9, v14, Lm0/i;->u:Z

    iput-object v8, v14, Lm0/i;->o:Lj0/e;

    iput-object v15, v14, Lm0/i;->p:Lm0/i$a;

    iput v10, v14, Lm0/i;->q:I

    sget-object v0, Lm0/i$f;->a:Lm0/i$f;

    iput-object v0, v14, Lm0/i;->s:Lm0/i$f;

    iput-object v2, v14, Lm0/i;->v:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v1, v0, Lm0/l;->a:Lm0/t;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v2, v15, Lm0/m;->p:Z

    invoke-virtual {v1, v2}, Lm0/t;->a(Z)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v12, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p18

    move-object/from16 v2, p19

    invoke-virtual {v15, v1, v2}, Lm0/m;->b(Lc1/f;Ljava/util/concurrent/Executor;)V

    monitor-enter v15

    :try_start_d3
    iput-object v14, v15, Lm0/m;->w:Lm0/i;

    sget-object v2, Lm0/i$g;->a:Lm0/i$g;

    invoke-virtual {v14, v2}, Lm0/i;->i(Lm0/i$g;)Lm0/i$g;

    move-result-object v2

    sget-object v3, Lm0/i$g;->b:Lm0/i$g;

    if-eq v2, v3, :cond_e6

    sget-object v3, Lm0/i$g;->c:Lm0/i$g;

    if-ne v2, v3, :cond_e4

    goto :goto_e6

    :cond_e4
    const/4 v2, 0x0

    goto :goto_e7

    :cond_e6
    :goto_e6
    const/4 v2, 0x1

    :goto_e7
    if-eqz v2, :cond_ec

    iget-object v2, v15, Lm0/m;->g:Lp0/a;

    goto :goto_fc

    :cond_ec
    iget-boolean v2, v15, Lm0/m;->n:Z

    if-eqz v2, :cond_f3

    iget-object v2, v15, Lm0/m;->i:Lp0/a;

    goto :goto_fc

    :cond_f3
    iget-boolean v2, v15, Lm0/m;->o:Z

    if-eqz v2, :cond_fa

    iget-object v2, v15, Lm0/m;->j:Lp0/a;

    goto :goto_fc

    :cond_fa
    iget-object v2, v15, Lm0/m;->h:Lp0/a;

    :goto_fc
    iget-object v2, v2, Lp0/a;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v14}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_101
    .catchall {:try_start_d3 .. :try_end_101} :catchall_113

    monitor-exit v15

    sget-boolean v2, Lm0/l;->h:Z

    if-eqz v2, :cond_10d

    const-string v2, "Started new load"

    move-wide/from16 v3, p21

    invoke-static {v2, v3, v4, v12}, Lm0/l;->d(Ljava/lang/String;JLj0/c;)V

    :cond_10d
    new-instance v2, Lm0/l$d;

    invoke-direct {v2, v0, v1, v15}, Lm0/l$d;-><init>(Lm0/l;Lc1/f;Lm0/m;)V

    return-object v2

    :catchall_113
    move-exception v0

    monitor-exit v15

    throw v0

    :catchall_116
    move-exception v0

    monitor-exit v15

    throw v0
.end method
