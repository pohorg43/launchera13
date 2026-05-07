.class public Lq3/l;
.super Lq3/p0;
.source ""

# interfaces
.implements Lq3/k;
.implements Ld3/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lq3/p0<",
        "TT;>;",
        "Lq3/k<",
        "TT;>;",
        "Ld3/d;"
    }
.end annotation


# static fields
.field public static final synthetic g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final synthetic h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _decision:I

.field private volatile synthetic _state:Ljava/lang/Object;

.field public final d:Lb3/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb3/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final e:Lb3/f;

.field public f:Lq3/s0;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-class v0, Lq3/l;

    const-string v1, "_decision"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lq3/l;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-class v0, Lq3/l;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_state"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lq3/l;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lb3/d;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb3/d<",
            "-TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lq3/p0;-><init>(I)V

    iput-object p1, p0, Lq3/l;->d:Lb3/d;

    invoke-interface {p1}, Lb3/d;->getContext()Lb3/f;

    move-result-object p1

    iput-object p1, p0, Lq3/l;->e:Lb3/f;

    const/4 p1, 0x0

    iput p1, p0, Lq3/l;->_decision:I

    sget-object p1, Lq3/b;->a:Lq3/b;

    iput-object p1, p0, Lq3/l;->_state:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final A()V
    .registers 4

    iget-object v0, p0, Lq3/l;->d:Lb3/d;

    instance-of v1, v0, Lv3/f;

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    check-cast v0, Lv3/f;

    goto :goto_b

    :cond_a
    move-object v0, v2

    :goto_b
    if-nez v0, :cond_e

    goto :goto_12

    :cond_e
    invoke-virtual {v0, p0}, Lv3/f;->p(Lq3/k;)Ljava/lang/Throwable;

    move-result-object v2

    :goto_12
    if-nez v2, :cond_15

    return-void

    :cond_15
    invoke-virtual {p0}, Lq3/l;->p()V

    invoke-virtual {p0, v2}, Lq3/l;->o(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final B()Z
    .registers 4
    .annotation build Lkotlin/jvm/JvmName;
        name = "resetStateReusable"
    .end annotation

    iget-object v0, p0, Lq3/l;->_state:Ljava/lang/Object;

    instance-of v1, v0, Lq3/t;

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    check-cast v0, Lq3/t;

    iget-object v0, v0, Lq3/t;->d:Ljava/lang/Object;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lq3/l;->p()V

    return v2

    :cond_11
    iput v2, p0, Lq3/l;->_decision:I

    sget-object v0, Lq3/b;->a:Lq3/b;

    iput-object v0, p0, Lq3/l;->_state:Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method

.method public C(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Ly2/p;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lq3/p0;->c:I

    invoke-virtual {p0, p1, v0, p2}, Lq3/l;->D(Ljava/lang/Object;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final D(Ljava/lang/Object;ILkotlin/jvm/functions/Function1;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Ly2/p;",
            ">;)V"
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lq3/l;->_state:Ljava/lang/Object;

    instance-of v1, v0, Lq3/u1;

    if-eqz v1, :cond_22

    move-object v3, v0

    check-cast v3, Lq3/u1;

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Lq3/l;->E(Lq3/u1;Ljava/lang/Object;ILkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lq3/l;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_0

    :cond_1b
    invoke-virtual {p0}, Lq3/l;->q()V

    invoke-virtual {p0, p2}, Lq3/l;->s(I)V

    return-void

    :cond_22
    instance-of p2, v0, Lq3/n;

    if-eqz p2, :cond_3e

    check-cast v0, Lq3/n;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lq3/n;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p2, v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result p2

    if-eqz p2, :cond_3e

    if-nez p3, :cond_38

    goto :goto_3d

    :cond_38
    iget-object p1, v0, Lq3/u;->a:Ljava/lang/Throwable;

    invoke-virtual {p0, p3, p1}, Lq3/l;->n(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V

    :goto_3d
    return-void

    :cond_3e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p2, "Already resumed, but proposed with update "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final E(Lq3/u1;Ljava/lang/Object;ILkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/u1;",
            "Ljava/lang/Object;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Ly2/p;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of p0, p2, Lq3/u;

    if-eqz p0, :cond_5

    goto :goto_30

    :cond_5
    invoke-static {p3}, Lq/d;->m(I)Z

    move-result p0

    if-nez p0, :cond_e

    if-nez p5, :cond_e

    goto :goto_30

    :cond_e
    if-nez p4, :cond_1a

    instance-of p0, p1, Lq3/i;

    if-eqz p0, :cond_18

    instance-of p0, p1, Lq3/d;

    if-eqz p0, :cond_1a

    :cond_18
    if-eqz p5, :cond_30

    :cond_1a
    new-instance p0, Lq3/t;

    instance-of p3, p1, Lq3/i;

    if-eqz p3, :cond_23

    check-cast p1, Lq3/i;

    goto :goto_24

    :cond_23
    const/4 p1, 0x0

    :goto_24
    move-object v2, p1

    const/4 v5, 0x0

    const/16 v6, 0x10

    move-object v0, p0

    move-object v1, p2

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Lq3/t;-><init>(Ljava/lang/Object;Lq3/i;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ljava/lang/Throwable;I)V

    move-object p2, p0

    :cond_30
    :goto_30
    return-object p2
.end method

.method public final F(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lv3/y;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Ly2/p;",
            ">;)",
            "Lv3/y;"
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lq3/l;->_state:Ljava/lang/Object;

    instance-of v1, v0, Lq3/u1;

    if-eqz v1, :cond_22

    move-object v3, v0

    check-cast v3, Lq3/u1;

    iget v5, p0, Lq3/p0;->c:I

    move-object v2, p0

    move-object v4, p1

    move-object v6, p3

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Lq3/l;->E(Lq3/u1;Ljava/lang/Object;ILkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lq3/l;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_0

    :cond_1c
    invoke-virtual {p0}, Lq3/l;->q()V

    sget-object p0, Lq3/m;->a:Lv3/y;

    return-object p0

    :cond_22
    instance-of p0, v0, Lq3/t;

    const/4 p1, 0x0

    if-eqz p0, :cond_31

    if-eqz p2, :cond_31

    check-cast v0, Lq3/t;

    iget-object p0, v0, Lq3/t;->d:Ljava/lang/Object;

    if-ne p0, p2, :cond_31

    sget-object p1, Lq3/m;->a:Lv3/y;

    :cond_31
    return-object p1
.end method

.method public a()Z
    .registers 1

    iget-object p0, p0, Lq3/l;->_state:Ljava/lang/Object;

    instance-of p0, p0, Lq3/u1;

    return p0
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 12

    :cond_0
    iget-object p1, p0, Lq3/l;->_state:Ljava/lang/Object;

    instance-of v0, p1, Lq3/u1;

    if-nez v0, :cond_64

    instance-of v0, p1, Lq3/u;

    if-eqz v0, :cond_b

    return-void

    :cond_b
    instance-of v0, p1, Lq3/t;

    if-eqz v0, :cond_4e

    move-object v0, p1

    check-cast v0, Lq3/t;

    iget-object v1, v0, Lq3/t;->e:Ljava/lang/Throwable;

    const/4 v2, 0x1

    if-eqz v1, :cond_19

    move v1, v2

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    xor-int/2addr v1, v2

    if-eqz v1, :cond_42

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xf

    move-object v1, v0

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Lq3/t;->a(Lq3/t;Ljava/lang/Object;Lq3/i;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ljava/lang/Throwable;I)Lq3/t;

    move-result-object v1

    sget-object v2, Lq3/l;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, v0, Lq3/t;->b:Lq3/i;

    if-nez p1, :cond_36

    goto :goto_39

    :cond_36
    invoke-virtual {p0, p1, p2}, Lq3/l;->k(Lq3/i;Ljava/lang/Throwable;)V

    :goto_39
    iget-object p1, v0, Lq3/t;->c:Lkotlin/jvm/functions/Function1;

    if-nez p1, :cond_3e

    goto :goto_41

    :cond_3e
    invoke-virtual {p0, p1, p2}, Lq3/l;->n(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V

    :goto_41
    return-void

    :cond_42
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Must be called at most once"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4e
    sget-object v7, Lq3/l;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    new-instance v8, Lq3/t;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0xe

    move-object v0, v8

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lq3/t;-><init>(Ljava/lang/Object;Lq3/i;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ljava/lang/Throwable;I)V

    invoke-virtual {v7, p0, p1, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_64
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not completed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c()Lb3/d;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb3/d<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lq3/l;->d:Lb3/d;

    return-object p0
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lq3/l;->F(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lv3/y;

    move-result-object p0

    return-object p0
.end method

.method public e(Ljava/lang/Object;)Ljava/lang/Throwable;
    .registers 2

    invoke-super {p0, p1}, Lq3/p0;->e(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_7

    const/4 p0, 0x0

    :cond_7
    return-object p0
.end method

.method public f(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    instance-of p0, p1, Lq3/t;

    if-eqz p0, :cond_8

    check-cast p1, Lq3/t;

    iget-object p1, p1, Lq3/t;->a:Ljava/lang/Object;

    :cond_8
    return-object p1
.end method

.method public getCallerFrame()Ld3/d;
    .registers 2

    iget-object p0, p0, Lq3/l;->d:Lb3/d;

    instance-of v0, p0, Ld3/d;

    if-eqz v0, :cond_9

    check-cast p0, Ld3/d;

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public getContext()Lb3/f;
    .registers 1

    iget-object p0, p0, Lq3/l;->e:Lb3/f;

    return-object p0
.end method

.method public h()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lq3/l;->_state:Ljava/lang/Object;

    return-object p0
.end method

.method public final i(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Ly2/p;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    goto :goto_15

    :catchall_4
    move-exception p1

    iget-object p2, p0, Lq3/l;->e:Lb3/f;

    new-instance v0, Lq3/x;

    const-string v1, "Exception in invokeOnCancellation handler for "

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lq3/x;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p2, v0}, Li1/i;->g(Lb3/f;Ljava/lang/Throwable;)V

    :goto_15
    return-void
.end method

.method public j(Lkotlin/jvm/functions/Function1;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Ly2/p;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lq3/i;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Lq3/i;

    goto :goto_d

    :cond_8
    new-instance v0, Lq3/h;

    invoke-direct {v0, p1}, Lq3/h;-><init>(Lkotlin/jvm/functions/Function1;)V

    :cond_d
    :goto_d
    iget-object v8, p0, Lq3/l;->_state:Ljava/lang/Object;

    instance-of v1, v8, Lq3/b;

    if-eqz v1, :cond_1c

    sget-object v1, Lq3/l;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, v8, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    return-void

    :cond_1c
    instance-of v1, v8, Lq3/i;

    const/4 v2, 0x0

    if-nez v1, :cond_99

    instance-of v1, v8, Lq3/u;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_4a

    move-object v0, v8

    check-cast v0, Lq3/u;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lq3/u;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v5, v0, v4, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_46

    instance-of v3, v8, Lq3/n;

    if-eqz v3, :cond_45

    if-eqz v1, :cond_3c

    goto :goto_3d

    :cond_3c
    move-object v0, v2

    :goto_3d
    if-nez v0, :cond_40

    goto :goto_42

    :cond_40
    iget-object v2, v0, Lq3/u;->a:Ljava/lang/Throwable;

    :goto_42
    invoke-virtual {p0, p1, v2}, Lq3/l;->i(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V

    :cond_45
    return-void

    :cond_46
    invoke-virtual {p0, p1, v8}, Lq3/l;->y(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    throw v2

    :cond_4a
    instance-of v1, v8, Lq3/t;

    if-eqz v1, :cond_7e

    move-object v1, v8

    check-cast v1, Lq3/t;

    iget-object v5, v1, Lq3/t;->b:Lq3/i;

    if-nez v5, :cond_7a

    instance-of v2, v0, Lq3/d;

    if-eqz v2, :cond_5a

    return-void

    :cond_5a
    iget-object v2, v1, Lq3/t;->e:Ljava/lang/Throwable;

    if-eqz v2, :cond_5f

    goto :goto_60

    :cond_5f
    move v3, v4

    :goto_60
    if-eqz v3, :cond_66

    invoke-virtual {p0, p1, v2}, Lq3/l;->i(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V

    return-void

    :cond_66
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1d

    move-object v3, v0

    invoke-static/range {v1 .. v7}, Lq3/t;->a(Lq3/t;Ljava/lang/Object;Lq3/i;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ljava/lang/Throwable;I)Lq3/t;

    move-result-object v1

    sget-object v2, Lq3/l;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v8, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    return-void

    :cond_7a
    invoke-virtual {p0, p1, v8}, Lq3/l;->y(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    throw v2

    :cond_7e
    instance-of v1, v0, Lq3/d;

    if-eqz v1, :cond_83

    return-void

    :cond_83
    new-instance v9, Lq3/t;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    move-object v1, v9

    move-object v2, v8

    move-object v3, v0

    invoke-direct/range {v1 .. v7}, Lq3/t;-><init>(Ljava/lang/Object;Lq3/i;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ljava/lang/Throwable;I)V

    sget-object v1, Lq3/l;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    return-void

    :cond_99
    invoke-virtual {p0, p1, v8}, Lq3/l;->y(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    throw v2
.end method

.method public final k(Lq3/i;Ljava/lang/Throwable;)V
    .registers 5

    :try_start_0
    invoke-virtual {p1, p2}, Lq3/j;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    goto :goto_15

    :catchall_4
    move-exception p1

    iget-object p2, p0, Lq3/l;->e:Lb3/f;

    new-instance v0, Lq3/x;

    const-string v1, "Exception in invokeOnCancellation handler for "

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lq3/x;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p2, v0}, Li1/i;->g(Lb3/f;Ljava/lang/Throwable;)V

    :goto_15
    return-void
.end method

.method public l(Ljava/lang/Throwable;)Ljava/lang/Object;
    .registers 5

    new-instance v0, Lq3/u;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p1, v1, v2}, Lq3/u;-><init>(Ljava/lang/Throwable;ZI)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1, p1}, Lq3/l;->F(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lv3/y;

    move-result-object p0

    return-object p0
.end method

.method public m(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Ly2/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lq3/l;->F(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lv3/y;

    move-result-object p0

    return-object p0
.end method

.method public final n(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Ly2/p;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    goto :goto_15

    :catchall_4
    move-exception p1

    iget-object p2, p0, Lq3/l;->e:Lb3/f;

    new-instance v0, Lq3/x;

    const-string v1, "Exception in resume onCancellation handler for "

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lq3/x;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p2, v0}, Li1/i;->g(Lb3/f;Ljava/lang/Throwable;)V

    :goto_15
    return-void
.end method

.method public o(Ljava/lang/Throwable;)Z
    .registers 6

    :goto_0
    iget-object v0, p0, Lq3/l;->_state:Ljava/lang/Object;

    instance-of v1, v0, Lq3/u1;

    if-nez v1, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    new-instance v1, Lq3/n;

    instance-of v2, v0, Lq3/i;

    invoke-direct {v1, p0, p1, v2}, Lq3/n;-><init>(Lb3/d;Ljava/lang/Throwable;Z)V

    sget-object v3, Lq3/l;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_0

    :cond_18
    if-eqz v2, :cond_1d

    check-cast v0, Lq3/i;

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    if-nez v0, :cond_21

    goto :goto_24

    :cond_21
    invoke-virtual {p0, v0, p1}, Lq3/l;->k(Lq3/i;Ljava/lang/Throwable;)V

    :goto_24
    invoke-virtual {p0}, Lq3/l;->q()V

    iget p1, p0, Lq3/p0;->c:I

    invoke-virtual {p0, p1}, Lq3/l;->s(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final p()V
    .registers 2

    iget-object v0, p0, Lq3/l;->f:Lq3/s0;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-interface {v0}, Lq3/s0;->dispose()V

    sget-object v0, Lq3/t1;->a:Lq3/t1;

    iput-object v0, p0, Lq3/l;->f:Lq3/s0;

    return-void
.end method

.method public final q()V
    .registers 2

    invoke-virtual {p0}, Lq3/l;->x()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lq3/l;->p()V

    :cond_9
    return-void
.end method

.method public r(Lq3/b0;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/b0;",
            "TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lq3/l;->d:Lb3/d;

    instance-of v1, v0, Lv3/f;

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    check-cast v0, Lv3/f;

    goto :goto_b

    :cond_a
    move-object v0, v2

    :goto_b
    if-nez v0, :cond_f

    move-object v0, v2

    goto :goto_11

    :cond_f
    iget-object v0, v0, Lv3/f;->d:Lq3/b0;

    :goto_11
    if-ne v0, p1, :cond_15

    const/4 p1, 0x4

    goto :goto_17

    :cond_15
    iget p1, p0, Lq3/p0;->c:I

    :goto_17
    invoke-virtual {p0, p2, p1, v2}, Lq3/l;->D(Ljava/lang/Object;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .registers 5

    invoke-static {p1}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_e

    :cond_7
    new-instance p1, Lq3/u;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p1, v0, v1, v2}, Lq3/u;-><init>(Ljava/lang/Throwable;ZI)V

    :goto_e
    iget v0, p0, Lq3/p0;->c:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lq3/l;->D(Ljava/lang/Object;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final s(I)V
    .registers 6

    :cond_0
    iget v0, p0, Lq3/l;->_decision:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    if-ne v0, v1, :cond_a

    move v0, v2

    goto :goto_20

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already resumed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16
    sget-object v0, Lq3/l;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v3, 0x2

    invoke-virtual {v0, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_20
    if-eqz v0, :cond_23

    return-void

    :cond_23
    invoke-virtual {p0}, Lq3/p0;->c()Lb3/d;

    move-result-object v0

    const/4 v3, 0x4

    if-ne p1, v3, :cond_2b

    move v2, v1

    :cond_2b
    if-nez v2, :cond_7f

    instance-of v3, v0, Lv3/f;

    if-eqz v3, :cond_7f

    invoke-static {p1}, Lq/d;->m(I)Z

    move-result p1

    iget v3, p0, Lq3/p0;->c:I

    invoke-static {v3}, Lq/d;->m(I)Z

    move-result v3

    if-ne p1, v3, :cond_7f

    move-object p1, v0

    check-cast p1, Lv3/f;

    iget-object p1, p1, Lv3/f;->d:Lq3/b0;

    invoke-interface {v0}, Lb3/d;->getContext()Lb3/f;

    move-result-object v0

    invoke-virtual {p1, v0}, Lq3/b0;->isDispatchNeeded(Lb3/f;)Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-virtual {p1, v0, p0}, Lq3/b0;->dispatch(Lb3/f;Ljava/lang/Runnable;)V

    goto :goto_82

    :cond_50
    sget-object p1, Lq3/b2;->a:Lq3/b2;

    invoke-static {}, Lq3/b2;->a()Lq3/v0;

    move-result-object p1

    invoke-virtual {p1}, Lq3/v0;->v()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-virtual {p1, p0}, Lq3/v0;->n(Lq3/p0;)V

    goto :goto_82

    :cond_60
    invoke-virtual {p1, v1}, Lq3/v0;->r(Z)V

    :try_start_63
    invoke-virtual {p0}, Lq3/p0;->c()Lb3/d;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lq/d;->n(Lq3/p0;Lb3/d;Z)V

    :cond_6a
    invoke-virtual {p1}, Lq3/v0;->y()Z

    move-result v0
    :try_end_6e
    .catchall {:try_start_63 .. :try_end_6e} :catchall_71

    if-nez v0, :cond_6a

    goto :goto_76

    :catchall_71
    move-exception v0

    const/4 v2, 0x0

    :try_start_73
    invoke-virtual {p0, v0, v2}, Lq3/p0;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_7a

    :goto_76
    invoke-virtual {p1, v1}, Lq3/v0;->l(Z)V

    goto :goto_82

    :catchall_7a
    move-exception p0

    invoke-virtual {p1, v1}, Lq3/v0;->l(Z)V

    throw p0

    :cond_7f
    invoke-static {p0, v0, v2}, Lq/d;->n(Lq3/p0;Lb3/d;Z)V

    :goto_82
    return-void
.end method

.method public final t()Ljava/lang/Object;
    .registers 5

    invoke-virtual {p0}, Lq3/l;->x()Z

    move-result v0

    :cond_4
    iget v1, p0, Lq3/l;->_decision:I

    const/4 v2, 0x0

    if-eqz v1, :cond_19

    const/4 v3, 0x2

    if-ne v1, v3, :cond_d

    goto :goto_23

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Already suspended"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    sget-object v1, Lq3/l;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_4

    move v2, v3

    :goto_23
    if-eqz v2, :cond_34

    iget-object v1, p0, Lq3/l;->f:Lq3/s0;

    if-nez v1, :cond_2c

    invoke-virtual {p0}, Lq3/l;->v()Lq3/s0;

    :cond_2c
    if-eqz v0, :cond_31

    invoke-virtual {p0}, Lq3/l;->A()V

    :cond_31
    sget-object p0, Lc3/a;->a:Lc3/a;

    return-object p0

    :cond_34
    if-eqz v0, :cond_39

    invoke-virtual {p0}, Lq3/l;->A()V

    :cond_39
    iget-object v0, p0, Lq3/l;->_state:Ljava/lang/Object;

    instance-of v1, v0, Lq3/u;

    if-nez v1, :cond_69

    iget v1, p0, Lq3/p0;->c:I

    invoke-static {v1}, Lq/d;->m(I)Z

    move-result v1

    if-eqz v1, :cond_64

    iget-object v1, p0, Lq3/l;->e:Lb3/f;

    sget v2, Lq3/i1;->C:I

    sget-object v2, Lq3/i1$b;->a:Lq3/i1$b;

    invoke-interface {v1, v2}, Lb3/f;->get(Lb3/f$b;)Lb3/f$a;

    move-result-object v1

    check-cast v1, Lq3/i1;

    if-eqz v1, :cond_64

    invoke-interface {v1}, Lq3/i1;->a()Z

    move-result v2

    if-eqz v2, :cond_5c

    goto :goto_64

    :cond_5c
    invoke-interface {v1}, Lq3/i1;->i()Ljava/util/concurrent/CancellationException;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lq3/l;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v1

    :cond_64
    :goto_64
    invoke-virtual {p0, v0}, Lq3/l;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_69
    check-cast v0, Lq3/u;

    iget-object p0, v0, Lq3/u;->a:Ljava/lang/Throwable;

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CancellableContinuation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lq3/l;->d:Lb3/d;

    invoke-static {v1}, Lq3/h0;->c(Lb3/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "){"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lq3/l;->_state:Ljava/lang/Object;

    instance-of v2, v1, Lq3/u1;

    if-eqz v2, :cond_26

    const-string v1, "Active"

    goto :goto_2f

    :cond_26
    instance-of v1, v1, Lq3/n;

    if-eqz v1, :cond_2d

    const-string v1, "Cancelled"

    goto :goto_2f

    :cond_2d
    const-string v1, "Completed"

    :goto_2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lq3/h0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u()V
    .registers 3

    invoke-virtual {p0}, Lq3/l;->v()Lq3/s0;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v1, p0, Lq3/l;->_state:Ljava/lang/Object;

    instance-of v1, v1, Lq3/u1;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Lq3/s0;->dispose()V

    sget-object v0, Lq3/t1;->a:Lq3/t1;

    iput-object v0, p0, Lq3/l;->f:Lq3/s0;

    :cond_16
    return-void
.end method

.method public final v()Lq3/s0;
    .registers 8

    iget-object v0, p0, Lq3/l;->e:Lb3/f;

    sget v1, Lq3/i1;->C:I

    sget-object v1, Lq3/i1$b;->a:Lq3/i1$b;

    invoke-interface {v0, v1}, Lb3/f;->get(Lb3/f$b;)Lb3/f$a;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lq3/i1;

    if-nez v1, :cond_11

    const/4 p0, 0x0

    return-object p0

    :cond_11
    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v4, Lq3/o;

    invoke-direct {v4, p0}, Lq3/o;-><init>(Lq3/l;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lq3/i1$a;->b(Lq3/i1;ZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lq3/s0;

    move-result-object v0

    iput-object v0, p0, Lq3/l;->f:Lq3/s0;

    return-object v0
.end method

.method public w()Z
    .registers 1

    iget-object p0, p0, Lq3/l;->_state:Ljava/lang/Object;

    instance-of p0, p0, Lq3/u1;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final x()Z
    .registers 5

    iget v0, p0, Lq3/p0;->c:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_9

    move v0, v2

    goto :goto_a

    :cond_9
    move v0, v3

    :goto_a
    if-eqz v0, :cond_17

    iget-object p0, p0, Lq3/l;->d:Lb3/d;

    check-cast p0, Lv3/f;

    invoke-virtual {p0}, Lv3/f;->k()Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_18

    :cond_17
    move v2, v3

    :goto_18
    return v2
.end method

.method public final y(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Ly2/p;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "It\'s prohibited to register multiple handlers, tried to register "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", already has "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public z(Ljava/lang/Object;)V
    .registers 2

    iget p1, p0, Lq3/p0;->c:I

    invoke-virtual {p0, p1}, Lq3/l;->s(I)V

    return-void
.end method
