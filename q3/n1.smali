.class public Lq3/n1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lq3/i1;
.implements Lq3/r;
.implements Lq3/v1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq3/n1$b;,
        Lq3/n1$a;
    }
.end annotation


# static fields
.field public static final synthetic a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _parentHandle:Ljava/lang/Object;

.field private volatile synthetic _state:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lq3/n1;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_state"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lq3/n1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    sget-object p1, Lq3/o1;->g:Lq3/u0;

    goto :goto_a

    :cond_8
    sget-object p1, Lq3/o1;->f:Lq3/u0;

    :goto_a
    iput-object p1, p0, Lq3/n1;->_state:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lq3/n1;->_parentHandle:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic e0(Lq3/n1;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;
    .registers 5

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lq3/n1;->d0(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Lq3/s1;Lq3/m1;)Z
    .registers 5

    new-instance v0, Lq3/n1$c;

    invoke-direct {v0, p3, p0, p1}, Lq3/n1$c;-><init>(Lv3/l;Lq3/n1;Ljava/lang/Object;)V

    :goto_5
    invoke-virtual {p2}, Lv3/l;->l()Lv3/l;

    move-result-object p0

    invoke-virtual {p0, p3, p2, v0}, Lv3/l;->r(Lv3/l;Lv3/l;Lv3/l$a;)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_15

    const/4 p1, 0x2

    if-eq p0, p1, :cond_14

    goto :goto_5

    :cond_14
    const/4 p1, 0x0

    :cond_15
    return p1
.end method

.method public B(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public final C(Ljava/lang/Object;)Z
    .registers 11

    sget-object v0, Lq3/o1;->a:Lv3/y;

    invoke-virtual {p0}, Lq3/n1;->M()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_3a

    :cond_b
    invoke-virtual {p0}, Lq3/n1;->P()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lq3/f1;

    if-eqz v1, :cond_33

    instance-of v1, v0, Lq3/n1$b;

    if-eqz v1, :cond_21

    move-object v1, v0

    check-cast v1, Lq3/n1$b;

    invoke-virtual {v1}, Lq3/n1$b;->g()Z

    move-result v1

    if-eqz v1, :cond_21

    goto :goto_33

    :cond_21
    new-instance v1, Lq3/u;

    invoke-virtual {p0, p1}, Lq3/n1;->I(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v1, v5, v3, v2}, Lq3/u;-><init>(Ljava/lang/Throwable;ZI)V

    invoke-virtual {p0, v0, v1}, Lq3/n1;->f0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lq3/o1;->c:Lv3/y;

    if-eq v0, v1, :cond_b

    goto :goto_35

    :cond_33
    :goto_33
    sget-object v0, Lq3/o1;->a:Lv3/y;

    :goto_35
    sget-object v1, Lq3/o1;->b:Lv3/y;

    if-ne v0, v1, :cond_3a

    return v4

    :cond_3a
    sget-object v1, Lq3/o1;->a:Lv3/y;

    if-ne v0, v1, :cond_e5

    const/4 v0, 0x0

    move-object v1, v0

    :cond_40
    :goto_40
    invoke-virtual {p0}, Lq3/n1;->P()Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lq3/n1$b;

    if-eqz v6, :cond_8b

    monitor-enter v5

    :try_start_49
    move-object v2, v5

    check-cast v2, Lq3/n1$b;

    invoke-virtual {v2}, Lq3/n1$b;->h()Z

    move-result v2

    if-eqz v2, :cond_57

    sget-object p1, Lq3/o1;->d:Lv3/y;
    :try_end_54
    .catchall {:try_start_49 .. :try_end_54} :catchall_88

    monitor-exit v5

    goto/16 :goto_e4

    :cond_57
    :try_start_57
    move-object v2, v5

    check-cast v2, Lq3/n1$b;

    invoke-virtual {v2}, Lq3/n1$b;->f()Z

    move-result v2

    if-nez p1, :cond_62

    if-nez v2, :cond_6e

    :cond_62
    if-nez v1, :cond_68

    invoke-virtual {p0, p1}, Lq3/n1;->I(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    :cond_68
    move-object p1, v5

    check-cast p1, Lq3/n1$b;

    invoke-virtual {p1, v1}, Lq3/n1$b;->b(Ljava/lang/Throwable;)V

    :cond_6e
    move-object p1, v5

    check-cast p1, Lq3/n1$b;

    invoke-virtual {p1}, Lq3/n1$b;->d()Ljava/lang/Throwable;

    move-result-object p1
    :try_end_75
    .catchall {:try_start_57 .. :try_end_75} :catchall_88

    xor-int/lit8 v1, v2, 0x1

    if-eqz v1, :cond_7a

    move-object v0, p1

    :cond_7a
    monitor-exit v5

    if-nez v0, :cond_7e

    goto :goto_85

    :cond_7e
    check-cast v5, Lq3/n1$b;

    iget-object p1, v5, Lq3/n1$b;->a:Lq3/s1;

    invoke-virtual {p0, p1, v0}, Lq3/n1;->X(Lq3/s1;Ljava/lang/Throwable;)V

    :goto_85
    sget-object p1, Lq3/o1;->a:Lv3/y;

    goto :goto_e4

    :catchall_88
    move-exception p0

    monitor-exit v5

    throw p0

    :cond_8b
    instance-of v6, v5, Lq3/f1;

    if-eqz v6, :cond_e2

    if-nez v1, :cond_95

    invoke-virtual {p0, p1}, Lq3/n1;->I(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    :cond_95
    move-object v6, v5

    check-cast v6, Lq3/f1;

    invoke-interface {v6}, Lq3/f1;->a()Z

    move-result v7

    if-eqz v7, :cond_bd

    invoke-virtual {p0, v6}, Lq3/n1;->N(Lq3/f1;)Lq3/s1;

    move-result-object v5

    if-nez v5, :cond_a5

    goto :goto_b2

    :cond_a5
    new-instance v7, Lq3/n1$b;

    invoke-direct {v7, v5, v3, v1}, Lq3/n1$b;-><init>(Lq3/s1;ZLjava/lang/Throwable;)V

    sget-object v8, Lq3/n1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v8, p0, v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b4

    :goto_b2
    move v5, v3

    goto :goto_b8

    :cond_b4
    invoke-virtual {p0, v5, v1}, Lq3/n1;->X(Lq3/s1;Ljava/lang/Throwable;)V

    move v5, v4

    :goto_b8
    if-eqz v5, :cond_40

    sget-object p1, Lq3/o1;->a:Lv3/y;

    goto :goto_e4

    :cond_bd
    new-instance v6, Lq3/u;

    invoke-direct {v6, v1, v3, v2}, Lq3/u;-><init>(Ljava/lang/Throwable;ZI)V

    invoke-virtual {p0, v5, v6}, Lq3/n1;->f0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lq3/o1;->a:Lv3/y;

    if-eq v6, v7, :cond_d2

    sget-object v5, Lq3/o1;->c:Lv3/y;

    if-ne v6, v5, :cond_d0

    goto/16 :goto_40

    :cond_d0
    move-object v0, v6

    goto :goto_e5

    :cond_d2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot happen in "

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e2
    sget-object p1, Lq3/o1;->d:Lv3/y;

    :goto_e4
    move-object v0, p1

    :cond_e5
    :goto_e5
    sget-object p1, Lq3/o1;->a:Lv3/y;

    if-ne v0, p1, :cond_eb

    :goto_e9
    move v3, v4

    goto :goto_f9

    :cond_eb
    sget-object p1, Lq3/o1;->b:Lv3/y;

    if-ne v0, p1, :cond_f0

    goto :goto_e9

    :cond_f0
    sget-object p1, Lq3/o1;->d:Lv3/y;

    if-ne v0, p1, :cond_f5

    goto :goto_f9

    :cond_f5
    invoke-virtual {p0, v0}, Lq3/n1;->B(Ljava/lang/Object;)V

    goto :goto_e9

    :goto_f9
    return v3
.end method

.method public D(Ljava/lang/Throwable;)V
    .registers 2

    invoke-virtual {p0, p1}, Lq3/n1;->C(Ljava/lang/Object;)Z

    return-void
.end method

.method public final E(Ljava/lang/Throwable;)Z
    .registers 5

    invoke-virtual {p0}, Lq3/n1;->T()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    iget-object p0, p0, Lq3/n1;->_parentHandle:Ljava/lang/Object;

    check-cast p0, Lq3/p;

    if-eqz p0, :cond_20

    sget-object v2, Lq3/t1;->a:Lq3/t1;

    if-ne p0, v2, :cond_15

    goto :goto_20

    :cond_15
    invoke-interface {p0, p1}, Lq3/p;->d(Ljava/lang/Throwable;)Z

    move-result p0

    if-nez p0, :cond_1f

    if-eqz v0, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :cond_1f
    :goto_1f
    return v1

    :cond_20
    :goto_20
    return v0
.end method

.method public F()Ljava/lang/String;
    .registers 1

    const-string p0, "Job was cancelled"

    return-object p0
.end method

.method public G(Ljava/lang/Throwable;)Z
    .registers 4

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p0, p1}, Lq3/n1;->C(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-virtual {p0}, Lq3/n1;->L()Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method public final H(Lq3/f1;Ljava/lang/Object;)V
    .registers 11

    iget-object v0, p0, Lq3/n1;->_parentHandle:Ljava/lang/Object;

    check-cast v0, Lq3/p;

    if-nez v0, :cond_7

    goto :goto_e

    :cond_7
    invoke-interface {v0}, Lq3/s0;->dispose()V

    sget-object v0, Lq3/t1;->a:Lq3/t1;

    iput-object v0, p0, Lq3/n1;->_parentHandle:Ljava/lang/Object;

    :goto_e
    instance-of v0, p2, Lq3/u;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    check-cast p2, Lq3/u;

    goto :goto_17

    :cond_16
    move-object p2, v1

    :goto_17
    if-nez p2, :cond_1b

    move-object p2, v1

    goto :goto_1d

    :cond_1b
    iget-object p2, p2, Lq3/u;->a:Ljava/lang/Throwable;

    :goto_1d
    instance-of v0, p1, Lq3/m1;

    const-string v2, " for "

    const-string v3, "Exception in completion handler "

    if-eqz v0, :cond_4c

    :try_start_25
    move-object v0, p1

    check-cast v0, Lq3/m1;

    invoke-virtual {v0, p2}, Lq3/w;->s(Ljava/lang/Throwable;)V
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_2d

    goto/16 :goto_9b

    :catchall_2d
    move-exception p2

    new-instance v0, Lq3/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lq3/x;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lq3/n1;->R(Ljava/lang/Throwable;)V

    goto :goto_9b

    :cond_4c
    invoke-interface {p1}, Lq3/f1;->e()Lq3/s1;

    move-result-object p1

    if-nez p1, :cond_53

    goto :goto_9b

    :cond_53
    invoke-virtual {p1}, Lv3/l;->j()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv3/l;

    move-object v4, v1

    :goto_5a
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_95

    instance-of v5, v0, Lq3/m1;

    if-eqz v5, :cond_90

    move-object v5, v0

    check-cast v5, Lq3/m1;

    :try_start_67
    invoke-virtual {v5, p2}, Lq3/w;->s(Ljava/lang/Throwable;)V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_6b

    goto :goto_90

    :catchall_6b
    move-exception v6

    if-nez v4, :cond_70

    move-object v7, v1

    goto :goto_74

    :cond_70
    invoke-static {v4, v6}, Ll0/b;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    move-object v7, v4

    :goto_74
    if-nez v7, :cond_90

    new-instance v4, Lq3/x;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v6}, Lq3/x;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_90
    :goto_90
    invoke-virtual {v0}, Lv3/l;->k()Lv3/l;

    move-result-object v0

    goto :goto_5a

    :cond_95
    if-nez v4, :cond_98

    goto :goto_9b

    :cond_98
    invoke-virtual {p0, v4}, Lq3/n1;->R(Ljava/lang/Throwable;)V

    :goto_9b
    return-void
.end method

.method public final I(Ljava/lang/Object;)Ljava/lang/Throwable;
    .registers 4

    if-nez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_6

    :cond_4
    instance-of v0, p1, Ljava/lang/Throwable;

    :goto_6
    if-eqz v0, :cond_18

    check-cast p1, Ljava/lang/Throwable;

    if-nez p1, :cond_23

    const/4 p1, 0x0

    new-instance v0, Lq3/j1;

    invoke-virtual {p0}, Lq3/n1;->F()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lq3/j1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lq3/i1;)V

    move-object p1, v0

    goto :goto_23

    :cond_18
    const-string p0, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob"

    invoke-static {p1, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lq3/v1;

    invoke-interface {p1}, Lq3/v1;->w()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    :cond_23
    :goto_23
    return-object p1
.end method

.method public final J(Lq3/n1$b;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    instance-of v0, p2, Lq3/u;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    move-object v0, p2

    check-cast v0, Lq3/u;

    goto :goto_a

    :cond_9
    move-object v0, v1

    :goto_a
    if-nez v0, :cond_d

    goto :goto_f

    :cond_d
    iget-object v1, v0, Lq3/u;->a:Ljava/lang/Throwable;

    :goto_f
    monitor-enter p1

    :try_start_10
    invoke-virtual {p1}, Lq3/n1$b;->f()Z

    invoke-virtual {p1, v1}, Lq3/n1$b;->i(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lq3/n1;->K(Lq3/n1$b;Ljava/util/List;)Ljava/lang/Throwable;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_54

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-gt v4, v3, :cond_25

    goto :goto_54

    :cond_25
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-instance v5, Ljava/util/IdentityHashMap;

    invoke-direct {v5, v4}, Ljava/util/IdentityHashMap;-><init>(I)V

    invoke-static {v5}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_36
    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_54

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    if-eq v5, v2, :cond_36

    if-eq v5, v2, :cond_36

    instance-of v6, v5, Ljava/util/concurrent/CancellationException;

    if-nez v6, :cond_36

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_36

    invoke-static {v2, v5}, Ll0/b;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_53
    .catchall {:try_start_10 .. :try_end_53} :catchall_9d

    goto :goto_36

    :cond_54
    :goto_54
    monitor-exit p1

    const/4 v0, 0x0

    if-nez v2, :cond_59

    goto :goto_62

    :cond_59
    if-ne v2, v1, :cond_5c

    goto :goto_62

    :cond_5c
    new-instance p2, Lq3/u;

    const/4 v1, 0x2

    invoke-direct {p2, v2, v0, v1}, Lq3/u;-><init>(Ljava/lang/Throwable;ZI)V

    :goto_62
    if-eqz v2, :cond_83

    invoke-virtual {p0, v2}, Lq3/n1;->E(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_73

    invoke-virtual {p0, v2}, Lq3/n1;->Q(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_71

    goto :goto_73

    :cond_71
    move v1, v0

    goto :goto_74

    :cond_73
    :goto_73
    move v1, v3

    :goto_74
    if-eqz v1, :cond_83

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v1, p2

    check-cast v1, Lq3/u;

    sget-object v2, Lq3/u;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v2, v1, v0, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    :cond_83
    invoke-virtual {p0, p2}, Lq3/n1;->Y(Ljava/lang/Object;)V

    sget-object v0, Lq3/n1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    instance-of v1, p2, Lq3/f1;

    if-eqz v1, :cond_95

    new-instance v1, Lq3/g1;

    move-object v2, p2

    check-cast v2, Lq3/f1;

    invoke-direct {v1, v2}, Lq3/g1;-><init>(Lq3/f1;)V

    goto :goto_96

    :cond_95
    move-object v1, p2

    :goto_96
    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, p2}, Lq3/n1;->H(Lq3/f1;Ljava/lang/Object;)V

    return-object p2

    :catchall_9d
    move-exception p0

    monitor-exit p1

    throw p0
.end method

.method public final K(Lq3/n1$b;Ljava/util/List;)Ljava/lang/Throwable;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/n1$b;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Lq3/n1$b;->f()Z

    move-result p1

    if-eqz p1, :cond_17

    new-instance p1, Lq3/j1;

    invoke-virtual {p0}, Lq3/n1;->F()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v1, p0}, Lq3/j1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lq3/i1;)V

    return-object p1

    :cond_17
    return-object v1

    :cond_18
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_30

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/Throwable;

    instance-of v2, v2, Ljava/util/concurrent/CancellationException;

    xor-int/2addr v2, v0

    if-eqz v2, :cond_1c

    goto :goto_31

    :cond_30
    move-object p1, v1

    :goto_31
    check-cast p1, Ljava/lang/Throwable;

    if-eqz p1, :cond_36

    return-object p1

    :cond_36
    const/4 p0, 0x0

    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    instance-of v2, p1, Lq3/c2;

    if-eqz v2, :cond_63

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_45
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Throwable;

    if-eq v3, p1, :cond_5a

    instance-of v3, v3, Lq3/c2;

    if-eqz v3, :cond_5a

    move v3, v0

    goto :goto_5b

    :cond_5a
    move v3, p0

    :goto_5b
    if-eqz v3, :cond_45

    move-object v1, v2

    :cond_5e
    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_63

    return-object v1

    :cond_63
    return-object p1
.end method

.method public L()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public M()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final N(Lq3/f1;)Lq3/s1;
    .registers 3

    invoke-interface {p1}, Lq3/f1;->e()Lq3/s1;

    move-result-object v0

    if-nez v0, :cond_2b

    instance-of v0, p1, Lq3/u0;

    if-eqz v0, :cond_10

    new-instance v0, Lq3/s1;

    invoke-direct {v0}, Lq3/s1;-><init>()V

    goto :goto_2b

    :cond_10
    instance-of v0, p1, Lq3/m1;

    if-eqz v0, :cond_1b

    check-cast p1, Lq3/m1;

    invoke-virtual {p0, p1}, Lq3/n1;->a0(Lq3/m1;)V

    const/4 v0, 0x0

    goto :goto_2b

    :cond_1b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "State should have list: "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2b
    :goto_2b
    return-object v0
.end method

.method public final O()Lq3/p;
    .registers 1

    iget-object p0, p0, Lq3/n1;->_parentHandle:Ljava/lang/Object;

    check-cast p0, Lq3/p;

    return-object p0
.end method

.method public final P()Ljava/lang/Object;
    .registers 3

    :goto_0
    iget-object v0, p0, Lq3/n1;->_state:Ljava/lang/Object;

    instance-of v1, v0, Lv3/t;

    if-nez v1, :cond_7

    return-object v0

    :cond_7
    check-cast v0, Lv3/t;

    invoke-virtual {v0, p0}, Lv3/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public Q(Ljava/lang/Throwable;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public R(Ljava/lang/Throwable;)V
    .registers 2

    throw p1
.end method

.method public final S(Lq3/i1;)V
    .registers 3

    if-nez p1, :cond_7

    sget-object p1, Lq3/t1;->a:Lq3/t1;

    iput-object p1, p0, Lq3/n1;->_parentHandle:Ljava/lang/Object;

    return-void

    :cond_7
    invoke-interface {p1}, Lq3/i1;->start()Z

    invoke-interface {p1, p0}, Lq3/i1;->t(Lq3/r;)Lq3/p;

    move-result-object p1

    iput-object p1, p0, Lq3/n1;->_parentHandle:Ljava/lang/Object;

    invoke-virtual {p0}, Lq3/n1;->P()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lq3/f1;

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_21

    invoke-interface {p1}, Lq3/s0;->dispose()V

    sget-object p1, Lq3/t1;->a:Lq3/t1;

    iput-object p1, p0, Lq3/n1;->_parentHandle:Ljava/lang/Object;

    :cond_21
    return-void
.end method

.method public T()Z
    .registers 1

    instance-of p0, p0, Lq3/e;

    return p0
.end method

.method public final U(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    :goto_0
    invoke-virtual {p0}, Lq3/n1;->P()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lq3/n1;->f0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lq3/o1;->a:Lv3/y;

    if-ne v0, v1, :cond_39

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Job "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is already complete or completing, but is being completed with "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    instance-of v1, p1, Lq3/u;

    const/4 v2, 0x0

    if-eqz v1, :cond_2f

    check-cast p1, Lq3/u;

    goto :goto_30

    :cond_2f
    move-object p1, v2

    :goto_30
    if-nez p1, :cond_33

    goto :goto_35

    :cond_33
    iget-object v2, p1, Lq3/u;->a:Ljava/lang/Throwable;

    :goto_35
    invoke-direct {v0, p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_39
    sget-object v1, Lq3/o1;->c:Lv3/y;

    if-ne v0, v1, :cond_3e

    goto :goto_0

    :cond_3e
    return-object v0
.end method

.method public V()Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final W(Lv3/l;)Lq3/q;
    .registers 2

    :goto_0
    invoke-virtual {p1}, Lv3/l;->o()Z

    move-result p0

    if-eqz p0, :cond_b

    invoke-virtual {p1}, Lv3/l;->l()Lv3/l;

    move-result-object p1

    goto :goto_0

    :cond_b
    :goto_b
    invoke-virtual {p1}, Lv3/l;->k()Lv3/l;

    move-result-object p1

    invoke-virtual {p1}, Lv3/l;->o()Z

    move-result p0

    if-eqz p0, :cond_16

    goto :goto_b

    :cond_16
    instance-of p0, p1, Lq3/q;

    if-eqz p0, :cond_1d

    check-cast p1, Lq3/q;

    return-object p1

    :cond_1d
    instance-of p0, p1, Lq3/s1;

    if-eqz p0, :cond_b

    const/4 p0, 0x0

    return-object p0
.end method

.method public final X(Lq3/s1;Ljava/lang/Throwable;)V
    .registers 10

    invoke-virtual {p1}, Lv3/l;->j()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv3/l;

    const/4 v1, 0x0

    move-object v2, v1

    :goto_8
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_47

    instance-of v3, v0, Lq3/k1;

    if-eqz v3, :cond_42

    move-object v3, v0

    check-cast v3, Lq3/m1;

    :try_start_15
    invoke-virtual {v3, p2}, Lq3/w;->s(Ljava/lang/Throwable;)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_19

    goto :goto_42

    :catchall_19
    move-exception v4

    if-nez v2, :cond_1e

    move-object v5, v1

    goto :goto_22

    :cond_1e
    invoke-static {v2, v4}, Ll0/b;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    move-object v5, v2

    :goto_22
    if-nez v5, :cond_42

    new-instance v2, Lq3/x;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in completion handler "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Lq3/x;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_42
    :goto_42
    invoke-virtual {v0}, Lv3/l;->k()Lv3/l;

    move-result-object v0

    goto :goto_8

    :cond_47
    if-nez v2, :cond_4a

    goto :goto_4d

    :cond_4a
    invoke-virtual {p0, v2}, Lq3/n1;->R(Ljava/lang/Throwable;)V

    :goto_4d
    invoke-virtual {p0, p2}, Lq3/n1;->E(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public Y(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public Z()V
    .registers 1

    return-void
.end method

.method public a()Z
    .registers 2

    invoke-virtual {p0}, Lq3/n1;->P()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lq3/f1;

    if-eqz v0, :cond_12

    check-cast p0, Lq3/f1;

    invoke-interface {p0}, Lq3/f1;->a()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public final a0(Lq3/m1;)V
    .registers 4

    new-instance v0, Lq3/s1;

    invoke-direct {v0}, Lq3/s1;-><init>()V

    sget-object v1, Lv3/l;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lv3/l;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_f
    invoke-virtual {p1}, Lv3/l;->j()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_16

    goto :goto_21

    :cond_16
    sget-object v1, Lv3/l;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p1, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v0, p1}, Lv3/l;->i(Lv3/l;)V

    :goto_21
    invoke-virtual {p1}, Lv3/l;->k()Lv3/l;

    move-result-object v0

    sget-object v1, Lq3/n1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Ljava/util/concurrent/CancellationException;)V
    .registers 4

    if-nez p1, :cond_d

    const/4 p1, 0x0

    new-instance v0, Lq3/j1;

    invoke-virtual {p0}, Lq3/n1;->F()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lq3/j1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lq3/i1;)V

    move-object p1, v0

    :cond_d
    invoke-virtual {p0, p1}, Lq3/n1;->D(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final b0(Ljava/lang/Object;)I
    .registers 6

    instance-of v0, p1, Lq3/u0;

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1e

    move-object v0, p1

    check-cast v0, Lq3/u0;

    iget-boolean v0, v0, Lq3/u0;->a:Z

    if-eqz v0, :cond_f

    return v3

    :cond_f
    sget-object v0, Lq3/n1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v3, Lq3/o1;->g:Lq3/u0;

    invoke-virtual {v0, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    return v1

    :cond_1a
    invoke-virtual {p0}, Lq3/n1;->Z()V

    return v2

    :cond_1e
    instance-of v0, p1, Lq3/e1;

    if-eqz v0, :cond_34

    sget-object v0, Lq3/n1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-object v3, p1

    check-cast v3, Lq3/e1;

    iget-object v3, v3, Lq3/e1;->a:Lq3/s1;

    invoke-virtual {v0, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_30

    return v1

    :cond_30
    invoke-virtual {p0}, Lq3/n1;->Z()V

    return v2

    :cond_34
    return v3
.end method

.method public final c0(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    instance-of p0, p1, Lq3/n1$b;

    const-string v0, "Active"

    if-eqz p0, :cond_1a

    check-cast p1, Lq3/n1$b;

    invoke-virtual {p1}, Lq3/n1$b;->f()Z

    move-result p0

    if-eqz p0, :cond_11

    const-string v0, "Cancelling"

    goto :goto_33

    :cond_11
    invoke-virtual {p1}, Lq3/n1$b;->g()Z

    move-result p0

    if-eqz p0, :cond_33

    const-string v0, "Completing"

    goto :goto_33

    :cond_1a
    instance-of p0, p1, Lq3/f1;

    if-eqz p0, :cond_2a

    check-cast p1, Lq3/f1;

    invoke-interface {p1}, Lq3/f1;->a()Z

    move-result p0

    if-eqz p0, :cond_27

    goto :goto_33

    :cond_27
    const-string v0, "New"

    goto :goto_33

    :cond_2a
    instance-of p0, p1, Lq3/u;

    if-eqz p0, :cond_31

    const-string v0, "Cancelled"

    goto :goto_33

    :cond_31
    const-string v0, "Completed"

    :cond_33
    :goto_33
    return-object v0
.end method

.method public final d0(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;
    .registers 4

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/CancellationException;

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    if-nez v0, :cond_16

    new-instance v0, Lq3/j1;

    if-nez p2, :cond_13

    invoke-virtual {p0}, Lq3/n1;->F()Ljava/lang/String;

    move-result-object p2

    :cond_13
    invoke-direct {v0, p2, p1, p0}, Lq3/j1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lq3/i1;)V

    :cond_16
    return-object v0
.end method

.method public final f0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    instance-of v0, p1, Lq3/f1;

    if-nez v0, :cond_7

    sget-object p0, Lq3/o1;->a:Lv3/y;

    return-object p0

    :cond_7
    instance-of v0, p1, Lq3/u0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_11

    instance-of v0, p1, Lq3/m1;

    if-eqz v0, :cond_3f

    :cond_11
    instance-of v0, p1, Lq3/q;

    if-nez v0, :cond_3f

    instance-of v0, p2, Lq3/u;

    if-nez v0, :cond_3f

    check-cast p1, Lq3/f1;

    sget-object v0, Lq3/n1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    instance-of v3, p2, Lq3/f1;

    if-eqz v3, :cond_2a

    new-instance v3, Lq3/g1;

    move-object v4, p2

    check-cast v4, Lq3/f1;

    invoke-direct {v3, v4}, Lq3/g1;-><init>(Lq3/f1;)V

    goto :goto_2b

    :cond_2a
    move-object v3, p2

    :goto_2b
    invoke-virtual {v0, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    move v1, v2

    goto :goto_39

    :cond_33
    invoke-virtual {p0, p2}, Lq3/n1;->Y(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lq3/n1;->H(Lq3/f1;Ljava/lang/Object;)V

    :goto_39
    if-eqz v1, :cond_3c

    return-object p2

    :cond_3c
    sget-object p0, Lq3/o1;->c:Lv3/y;

    return-object p0

    :cond_3f
    check-cast p1, Lq3/f1;

    invoke-virtual {p0, p1}, Lq3/n1;->N(Lq3/f1;)Lq3/s1;

    move-result-object v0

    if-nez v0, :cond_4b

    sget-object p0, Lq3/o1;->c:Lv3/y;

    goto/16 :goto_c5

    :cond_4b
    instance-of v3, p1, Lq3/n1$b;

    const/4 v4, 0x0

    if-eqz v3, :cond_54

    move-object v3, p1

    check-cast v3, Lq3/n1$b;

    goto :goto_55

    :cond_54
    move-object v3, v4

    :goto_55
    if-nez v3, :cond_5c

    new-instance v3, Lq3/n1$b;

    invoke-direct {v3, v0, v2, v4}, Lq3/n1$b;-><init>(Lq3/s1;ZLjava/lang/Throwable;)V

    :cond_5c
    monitor-enter v3

    :try_start_5d
    invoke-virtual {v3}, Lq3/n1$b;->g()Z

    move-result v2

    if-eqz v2, :cond_68

    sget-object p0, Lq3/o1;->a:Lv3/y;
    :try_end_65
    .catchall {:try_start_5d .. :try_end_65} :catchall_c6

    monitor-exit v3

    goto/16 :goto_c5

    :cond_68
    :try_start_68
    invoke-virtual {v3, v1}, Lq3/n1$b;->j(Z)V

    if-eq v3, p1, :cond_79

    sget-object v2, Lq3/n1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_79

    sget-object p0, Lq3/o1;->c:Lv3/y;
    :try_end_77
    .catchall {:try_start_68 .. :try_end_77} :catchall_c6

    monitor-exit v3

    goto :goto_c5

    :cond_79
    :try_start_79
    invoke-virtual {v3}, Lq3/n1$b;->f()Z

    move-result v2

    instance-of v5, p2, Lq3/u;

    if-eqz v5, :cond_85

    move-object v5, p2

    check-cast v5, Lq3/u;

    goto :goto_86

    :cond_85
    move-object v5, v4

    :goto_86
    if-nez v5, :cond_89

    goto :goto_8e

    :cond_89
    iget-object v5, v5, Lq3/u;->a:Ljava/lang/Throwable;

    invoke-virtual {v3, v5}, Lq3/n1$b;->b(Ljava/lang/Throwable;)V

    :goto_8e
    invoke-virtual {v3}, Lq3/n1$b;->d()Ljava/lang/Throwable;

    move-result-object v5
    :try_end_92
    .catchall {:try_start_79 .. :try_end_92} :catchall_c6

    xor-int/2addr v1, v2

    if-eqz v1, :cond_96

    goto :goto_97

    :cond_96
    move-object v5, v4

    :goto_97
    monitor-exit v3

    if-nez v5, :cond_9b

    goto :goto_9e

    :cond_9b
    invoke-virtual {p0, v0, v5}, Lq3/n1;->X(Lq3/s1;Ljava/lang/Throwable;)V

    :goto_9e
    instance-of v0, p1, Lq3/q;

    if-eqz v0, :cond_a6

    move-object v0, p1

    check-cast v0, Lq3/q;

    goto :goto_a7

    :cond_a6
    move-object v0, v4

    :goto_a7
    if-nez v0, :cond_b5

    invoke-interface {p1}, Lq3/f1;->e()Lq3/s1;

    move-result-object p1

    if-nez p1, :cond_b0

    goto :goto_b6

    :cond_b0
    invoke-virtual {p0, p1}, Lq3/n1;->W(Lv3/l;)Lq3/q;

    move-result-object v4

    goto :goto_b6

    :cond_b5
    move-object v4, v0

    :goto_b6
    if-eqz v4, :cond_c1

    invoke-virtual {p0, v3, v4, p2}, Lq3/n1;->g0(Lq3/n1$b;Lq3/q;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c1

    sget-object p0, Lq3/o1;->b:Lv3/y;

    goto :goto_c5

    :cond_c1
    invoke-virtual {p0, v3, p2}, Lq3/n1;->J(Lq3/n1$b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_c5
    return-object p0

    :catchall_c6
    move-exception p0

    monitor-exit v3

    throw p0
.end method

.method public fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lkotlin/jvm/functions/Function2<",
            "-TR;-",
            "Lb3/f$a;",
            "+TR;>;)TR;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lb3/f$a$a;->a(Lb3/f$a;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final g(ZZLkotlin/jvm/functions/Function1;)Lq3/s0;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Ly2/p;",
            ">;)",
            "Lq3/s0;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_14

    instance-of v1, p3, Lq3/k1;

    if-eqz v1, :cond_b

    move-object v1, p3

    check-cast v1, Lq3/k1;

    goto :goto_c

    :cond_b
    move-object v1, v0

    :goto_c
    if-nez v1, :cond_27

    new-instance v1, Lq3/h1;

    invoke-direct {v1, p3}, Lq3/h1;-><init>(Lkotlin/jvm/functions/Function1;)V

    goto :goto_27

    :cond_14
    instance-of v1, p3, Lq3/m1;

    if-eqz v1, :cond_1c

    move-object v1, p3

    check-cast v1, Lq3/m1;

    goto :goto_1d

    :cond_1c
    move-object v1, v0

    :goto_1d
    if-nez v1, :cond_20

    move-object v1, v0

    :cond_20
    if-nez v1, :cond_27

    new-instance v1, Lq3/t0;

    invoke-direct {v1, p3}, Lq3/t0;-><init>(Lkotlin/jvm/functions/Function1;)V

    :cond_27
    :goto_27
    iput-object p0, v1, Lq3/m1;->d:Lq3/n1;

    :cond_29
    :goto_29
    invoke-virtual {p0}, Lq3/n1;->P()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lq3/u0;

    if-eqz v3, :cond_57

    move-object v3, v2

    check-cast v3, Lq3/u0;

    iget-boolean v4, v3, Lq3/u0;->a:Z

    if-eqz v4, :cond_41

    sget-object v3, Lq3/n1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    return-object v1

    :cond_41
    new-instance v2, Lq3/s1;

    invoke-direct {v2}, Lq3/s1;-><init>()V

    iget-boolean v4, v3, Lq3/u0;->a:Z

    if-eqz v4, :cond_4b

    goto :goto_51

    :cond_4b
    new-instance v4, Lq3/e1;

    invoke-direct {v4, v2}, Lq3/e1;-><init>(Lq3/s1;)V

    move-object v2, v4

    :goto_51
    sget-object v4, Lq3/n1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, p0, v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_29

    :cond_57
    instance-of v3, v2, Lq3/f1;

    if-eqz v3, :cond_b0

    move-object v3, v2

    check-cast v3, Lq3/f1;

    invoke-interface {v3}, Lq3/f1;->e()Lq3/s1;

    move-result-object v3

    if-nez v3, :cond_6f

    const-string v3, "null cannot be cast to non-null type kotlinx.coroutines.JobNode"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Lq3/m1;

    invoke-virtual {p0, v2}, Lq3/n1;->a0(Lq3/m1;)V

    goto :goto_29

    :cond_6f
    sget-object v4, Lq3/t1;->a:Lq3/t1;

    if-eqz p1, :cond_a0

    instance-of v5, v2, Lq3/n1$b;

    if-eqz v5, :cond_a0

    monitor-enter v2

    :try_start_78
    move-object v5, v2

    check-cast v5, Lq3/n1$b;

    invoke-virtual {v5}, Lq3/n1$b;->d()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_8e

    instance-of v6, p3, Lq3/q;

    if-eqz v6, :cond_9b

    move-object v6, v2

    check-cast v6, Lq3/n1$b;

    invoke-virtual {v6}, Lq3/n1$b;->g()Z

    move-result v6

    if-nez v6, :cond_9b

    :cond_8e
    invoke-virtual {p0, v2, v3, v1}, Lq3/n1;->A(Ljava/lang/Object;Lq3/s1;Lq3/m1;)Z

    move-result v4
    :try_end_92
    .catchall {:try_start_78 .. :try_end_92} :catchall_9d

    if-nez v4, :cond_96

    monitor-exit v2

    goto :goto_29

    :cond_96
    if-nez v5, :cond_9a

    monitor-exit v2

    return-object v1

    :cond_9a
    move-object v4, v1

    :cond_9b
    monitor-exit v2

    goto :goto_a1

    :catchall_9d
    move-exception p0

    monitor-exit v2

    throw p0

    :cond_a0
    move-object v5, v0

    :goto_a1
    if-eqz v5, :cond_a9

    if-eqz p2, :cond_a8

    invoke-interface {p3, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a8
    return-object v4

    :cond_a9
    invoke-virtual {p0, v2, v3, v1}, Lq3/n1;->A(Ljava/lang/Object;Lq3/s1;Lq3/m1;)Z

    move-result v2

    if-eqz v2, :cond_29

    return-object v1

    :cond_b0
    if-eqz p2, :cond_c2

    instance-of p0, v2, Lq3/u;

    if-eqz p0, :cond_b9

    check-cast v2, Lq3/u;

    goto :goto_ba

    :cond_b9
    move-object v2, v0

    :goto_ba
    if-nez v2, :cond_bd

    goto :goto_bf

    :cond_bd
    iget-object v0, v2, Lq3/u;->a:Ljava/lang/Throwable;

    :goto_bf
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c2
    sget-object p0, Lq3/t1;->a:Lq3/t1;

    return-object p0
.end method

.method public final g0(Lq3/n1$b;Lq3/q;Ljava/lang/Object;)Z
    .registers 10

    :cond_0
    iget-object v0, p2, Lq3/q;->e:Lq3/r;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lq3/n1$a;

    invoke-direct {v3, p0, p1, p2, p3}, Lq3/n1$a;-><init>(Lq3/n1;Lq3/n1$b;Lq3/q;Ljava/lang/Object;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lq3/i1$a;->b(Lq3/i1;ZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lq3/s0;

    move-result-object v0

    sget-object v1, Lq3/t1;->a:Lq3/t1;

    if-eq v0, v1, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    invoke-virtual {p0, p2}, Lq3/n1;->W(Lv3/l;)Lq3/q;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0
.end method

.method public get(Lb3/f$b;)Lb3/f$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lb3/f$a;",
            ">(",
            "Lb3/f$b<",
            "TE;>;)TE;"
        }
    .end annotation

    invoke-static {p0, p1}, Lb3/f$a$a;->b(Lb3/f$a;Lb3/f$b;)Lb3/f$a;

    move-result-object p0

    return-object p0
.end method

.method public final getKey()Lb3/f$b;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb3/f$b<",
            "*>;"
        }
    .end annotation

    sget-object p0, Lq3/i1$b;->a:Lq3/i1$b;

    return-object p0
.end method

.method public final h(Lb3/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    :cond_0
    invoke-virtual {p0}, Lq3/n1;->P()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lq3/f1;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_c

    move v0, v3

    goto :goto_13

    :cond_c
    invoke-virtual {p0, v0}, Lq3/n1;->b0(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    move v0, v2

    :goto_13
    if-nez v0, :cond_1f

    invoke-interface {p1}, Lb3/d;->getContext()Lb3/f;

    move-result-object p0

    invoke-static {p0}, Lq3/g;->d(Lb3/f;)V

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0

    :cond_1f
    new-instance v0, Lq3/l;

    invoke-static {p1}, Lq/d;->l(Lb3/d;)Lb3/d;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lq3/l;-><init>(Lb3/d;I)V

    invoke-virtual {v0}, Lq3/l;->u()V

    new-instance v1, Lq3/t0;

    invoke-direct {v1, v0}, Lq3/t0;-><init>(Lb3/d;)V

    invoke-virtual {p0, v3, v2, v1}, Lq3/n1;->g(ZZLkotlin/jvm/functions/Function1;)Lq3/s0;

    move-result-object p0

    new-instance v1, Lq3/h;

    invoke-direct {v1, p0}, Lq3/h;-><init>(Lq3/s0;)V

    invoke-virtual {v0, v1}, Lq3/l;->j(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0}, Lq3/l;->t()Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lc3/a;->a:Lc3/a;

    if-ne p0, v0, :cond_49

    const-string v1, "frame"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_49
    if-ne p0, v0, :cond_4c

    goto :goto_4e

    :cond_4c
    sget-object p0, Ly2/p;->a:Ly2/p;

    :goto_4e
    if-ne p0, v0, :cond_51

    return-object p0

    :cond_51
    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method

.method public final i()Ljava/util/concurrent/CancellationException;
    .registers 5

    invoke-virtual {p0}, Lq3/n1;->P()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lq3/n1$b;

    const-string v2, "Job is still new or active: "

    const/4 v3, 0x0

    if-eqz v1, :cond_37

    check-cast v0, Lq3/n1$b;

    invoke-virtual {v0}, Lq3/n1$b;->d()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_26

    :cond_14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v3, " is cancelling"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lq3/n1;->d0(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    move-result-object v3

    :goto_26
    if-eqz v3, :cond_29

    goto :goto_5d

    :cond_29
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    instance-of v1, v0, Lq3/f1;

    if-nez v1, :cond_5e

    instance-of v1, v0, Lq3/u;

    if-eqz v1, :cond_49

    check-cast v0, Lq3/u;

    iget-object v0, v0, Lq3/u;->a:Ljava/lang/Throwable;

    const/4 v1, 0x1

    invoke-static {p0, v0, v3, v1, v3}, Lq3/n1;->e0(Lq3/n1;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;

    move-result-object v3

    goto :goto_5d

    :cond_49
    new-instance v0, Lq3/j1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, " has completed normally"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3, p0}, Lq3/j1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lq3/i1;)V

    move-object v3, v0

    :goto_5d
    return-object v3

    :cond_5e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final k(Lq3/v1;)V
    .registers 2

    invoke-virtual {p0, p1}, Lq3/n1;->C(Ljava/lang/Object;)Z

    return-void
.end method

.method public minusKey(Lb3/f$b;)Lb3/f;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb3/f$b<",
            "*>;)",
            "Lb3/f;"
        }
    .end annotation

    invoke-static {p0, p1}, Lb3/f$a$a;->c(Lb3/f$a;Lb3/f$b;)Lb3/f;

    move-result-object p0

    return-object p0
.end method

.method public final o(Lkotlin/jvm/functions/Function1;)Lq3/s0;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Ly2/p;",
            ">;)",
            "Lq3/s0;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lq3/n1;->g(ZZLkotlin/jvm/functions/Function1;)Lq3/s0;

    move-result-object p0

    return-object p0
.end method

.method public plus(Lb3/f;)Lb3/f;
    .registers 2

    invoke-static {p0, p1}, Lb3/f$a$a;->d(Lb3/f$a;Lb3/f;)Lb3/f;

    move-result-object p0

    return-object p0
.end method

.method public final start()Z
    .registers 3

    :goto_0
    invoke-virtual {p0}, Lq3/n1;->P()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lq3/n1;->b0(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_f

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    goto :goto_0

    :cond_e
    return v1

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public final t(Lq3/r;)Lq3/p;
    .registers 8

    new-instance v3, Lq3/q;

    invoke-direct {v3, p1}, Lq3/q;-><init>(Lq3/r;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lq3/i1$a;->b(Lq3/i1;ZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lq3/s0;

    move-result-object p0

    check-cast p0, Lq3/p;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lq3/n1;->V()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lq3/n1;->P()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lq3/n1;->c0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lq3/h0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public w()Ljava/util/concurrent/CancellationException;
    .registers 5

    invoke-virtual {p0}, Lq3/n1;->P()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lq3/n1$b;

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    move-object v1, v0

    check-cast v1, Lq3/n1$b;

    invoke-virtual {v1}, Lq3/n1$b;->d()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_20

    :cond_11
    instance-of v1, v0, Lq3/u;

    if-eqz v1, :cond_1b

    move-object v1, v0

    check-cast v1, Lq3/u;

    iget-object v1, v1, Lq3/u;->a:Ljava/lang/Throwable;

    goto :goto_20

    :cond_1b
    instance-of v1, v0, Lq3/f1;

    if-nez v1, :cond_39

    move-object v1, v2

    :goto_20
    instance-of v3, v1, Ljava/util/concurrent/CancellationException;

    if-eqz v3, :cond_27

    move-object v2, v1

    check-cast v2, Ljava/util/concurrent/CancellationException;

    :cond_27
    if-nez v2, :cond_38

    new-instance v2, Lq3/j1;

    invoke-virtual {p0, v0}, Lq3/n1;->c0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Parent job is "

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1, p0}, Lq3/j1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lq3/i1;)V

    :cond_38
    return-object v2

    :cond_39
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot be cancelling child in this state: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
