.class public final Lx3/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lx3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx3/c$c;,
        Lx3/c$b;,
        Lx3/c$a;,
        Lx3/c$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lx3/b;"
    }
.end annotation


# static fields
.field public static final synthetic a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field public volatile synthetic _state:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-class v0, Lx3/c;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_state"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lx3/c;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    sget-object p1, Lx3/e;->d:Lx3/a;

    goto :goto_a

    :cond_8
    sget-object p1, Lx3/e;->e:Lx3/a;

    :goto_a
    iput-object p1, p0, Lx3/c;->_state:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 4

    :goto_0
    iget-object v0, p0, Lx3/c;->_state:Ljava/lang/Object;

    instance-of v1, v0, Lx3/a;

    const/4 v2, 0x1

    if-eqz v1, :cond_12

    check-cast v0, Lx3/a;

    iget-object p0, v0, Lx3/a;->a:Ljava/lang/Object;

    sget-object v0, Lx3/e;->c:Lv3/y;

    if-eq p0, v0, :cond_10

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    return v2

    :cond_12
    instance-of v1, v0, Lx3/c$c;

    if-eqz v1, :cond_17

    return v2

    :cond_17
    instance-of v1, v0, Lv3/t;

    if-eqz v1, :cond_21

    check-cast v0, Lv3/t;

    invoke-virtual {v0, p0}, Lv3/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_21
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal state "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b(Ljava/lang/Object;)V
    .registers 9

    :cond_0
    :goto_0
    iget-object v0, p0, Lx3/c;->_state:Ljava/lang/Object;

    instance-of v1, v0, Lx3/a;

    const-string v2, " but expected "

    const-string v3, "Mutex is locked by "

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_5b

    if-nez p1, :cond_28

    move-object v1, v0

    check-cast v1, Lx3/a;

    iget-object v1, v1, Lx3/a;->a:Ljava/lang/Object;

    sget-object v2, Lx3/e;->c:Lv3/y;

    if-eq v1, v2, :cond_18

    goto :goto_19

    :cond_18
    move v4, v5

    :goto_19
    if-eqz v4, :cond_1c

    goto :goto_33

    :cond_1c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Mutex is not locked"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_28
    move-object v1, v0

    check-cast v1, Lx3/a;

    iget-object v6, v1, Lx3/a;->a:Ljava/lang/Object;

    if-ne v6, p1, :cond_30

    goto :goto_31

    :cond_30
    move v4, v5

    :goto_31
    if-eqz v4, :cond_3e

    :goto_33
    sget-object v1, Lx3/c;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v2, Lx3/e;->e:Lx3/a;

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_3e
    invoke-static {v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object v0, v1, Lx3/a;->a:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5b
    instance-of v1, v0, Lv3/t;

    if-eqz v1, :cond_65

    check-cast v0, Lv3/t;

    invoke-virtual {v0, p0}, Lv3/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_65
    instance-of v1, v0, Lx3/c$c;

    if-eqz v1, :cond_d5

    if-eqz p1, :cond_94

    move-object v1, v0

    check-cast v1, Lx3/c$c;

    iget-object v6, v1, Lx3/c$c;->d:Ljava/lang/Object;

    if-ne v6, p1, :cond_73

    goto :goto_74

    :cond_73
    move v4, v5

    :goto_74
    if-eqz v4, :cond_77

    goto :goto_94

    :cond_77
    invoke-static {v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object v0, v1, Lx3/c$c;->d:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_94
    :goto_94
    move-object v1, v0

    check-cast v1, Lx3/c$c;

    :goto_97
    invoke-virtual {v1}, Lv3/l;->j()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv3/l;

    if-ne v2, v1, :cond_a1

    const/4 v2, 0x0

    goto :goto_a7

    :cond_a1
    invoke-virtual {v2}, Lv3/l;->p()Z

    move-result v3

    if-eqz v3, :cond_d1

    :goto_a7
    if-nez v2, :cond_bd

    new-instance v2, Lx3/c$d;

    invoke-direct {v2, v1}, Lx3/c$d;-><init>(Lx3/c$c;)V

    sget-object v1, Lx3/c;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, p0}, Lv3/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_bd
    check-cast v2, Lx3/c$b;

    invoke-virtual {v2}, Lx3/c$b;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, v2, Lx3/c$b;->d:Ljava/lang/Object;

    if-nez p0, :cond_cb

    sget-object p0, Lx3/e;->b:Lv3/y;

    :cond_cb
    iput-object p0, v1, Lx3/c$c;->d:Ljava/lang/Object;

    invoke-virtual {v2}, Lx3/c$b;->s()V

    return-void

    :cond_d1
    invoke-virtual {v2}, Lv3/l;->m()V

    goto :goto_97

    :cond_d5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Illegal state "

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c(Ljava/lang/Object;Lb3/d;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    :cond_0
    :goto_0
    iget-object p1, p0, Lx3/c;->_state:Ljava/lang/Object;

    instance-of v0, p1, Lx3/a;

    const-string v1, "Already locked by "

    const-string v2, "Illegal state "

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_23

    move-object v0, p1

    check-cast v0, Lx3/a;

    iget-object v0, v0, Lx3/a;->a:Ljava/lang/Object;

    sget-object v6, Lx3/e;->c:Lv3/y;

    if-eq v0, v6, :cond_17

    goto :goto_32

    :cond_17
    sget-object v0, Lx3/e;->d:Lx3/a;

    sget-object v6, Lx3/c;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v6, p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v4

    goto :goto_33

    :cond_23
    instance-of v0, p1, Lx3/c$c;

    if-eqz v0, :cond_fa

    check-cast p1, Lx3/c$c;

    iget-object p1, p1, Lx3/c$c;->d:Ljava/lang/Object;

    if-eqz p1, :cond_2f

    move p1, v4

    goto :goto_30

    :cond_2f
    move p1, v3

    :goto_30
    if-eqz p1, :cond_ec

    :goto_32
    move p1, v3

    :goto_33
    if-eqz p1, :cond_38

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0

    :cond_38
    invoke-static {p2}, Lq/d;->l(Lb3/d;)Lb3/d;

    move-result-object p1

    invoke-static {p1}, Lq/d;->k(Lb3/d;)Lq3/l;

    move-result-object p1

    new-instance v0, Lx3/c$a;

    invoke-direct {v0, p0, v5, p1}, Lx3/c$a;-><init>(Lx3/c;Ljava/lang/Object;Lq3/k;)V

    :cond_45
    :goto_45
    iget-object v6, p0, Lx3/c;->_state:Ljava/lang/Object;

    instance-of v7, v6, Lx3/a;

    if-eqz v7, :cond_78

    move-object v7, v6

    check-cast v7, Lx3/a;

    iget-object v8, v7, Lx3/a;->a:Ljava/lang/Object;

    sget-object v9, Lx3/e;->c:Lv3/y;

    if-eq v8, v9, :cond_61

    sget-object v8, Lx3/c;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    new-instance v9, Lx3/c$c;

    iget-object v7, v7, Lx3/a;->a:Ljava/lang/Object;

    invoke-direct {v9, v7}, Lx3/c$c;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v8, p0, v6, v9}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_45

    :cond_61
    sget-object v7, Lx3/e;->d:Lx3/a;

    sget-object v8, Lx3/c;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v8, p0, v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_45

    sget-object v0, Ly2/p;->a:Ly2/p;

    new-instance v1, Lx3/d;

    invoke-direct {v1, p0, v5}, Lx3/d;-><init>(Lx3/c;Ljava/lang/Object;)V

    iget p0, p1, Lq3/p0;->c:I

    invoke-virtual {p1, v0, p0, v1}, Lq3/l;->D(Ljava/lang/Object;ILkotlin/jvm/functions/Function1;)V

    goto :goto_ad

    :cond_78
    instance-of v7, v6, Lx3/c$c;

    if-eqz v7, :cond_d3

    move-object v7, v6

    check-cast v7, Lx3/c$c;

    iget-object v8, v7, Lx3/c$c;->d:Ljava/lang/Object;

    if-eqz v8, :cond_85

    move v8, v4

    goto :goto_86

    :cond_85
    move v8, v3

    :goto_86
    if-eqz v8, :cond_c5

    :cond_88
    invoke-virtual {v7}, Lv3/l;->l()Lv3/l;

    move-result-object v8

    invoke-virtual {v8, v0, v7}, Lv3/l;->g(Lv3/l;Lv3/l;)Z

    move-result v8

    if-eqz v8, :cond_88

    iget-object v7, p0, Lx3/c;->_state:Ljava/lang/Object;

    if-eq v7, v6, :cond_a5

    sget-object v6, Lx3/c$b;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v6, v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v6

    if-nez v6, :cond_9f

    goto :goto_a5

    :cond_9f
    new-instance v0, Lx3/c$a;

    invoke-direct {v0, p0, v5, p1}, Lx3/c$a;-><init>(Lx3/c;Ljava/lang/Object;Lq3/k;)V

    goto :goto_45

    :cond_a5
    :goto_a5
    new-instance p0, Lq3/w1;

    invoke-direct {p0, v0}, Lq3/w1;-><init>(Lv3/l;)V

    invoke-virtual {p1, p0}, Lq3/l;->j(Lkotlin/jvm/functions/Function1;)V

    :goto_ad
    invoke-virtual {p1}, Lq3/l;->t()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lc3/a;->a:Lc3/a;

    if-ne p0, p1, :cond_ba

    const-string v0, "frame"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_ba
    if-ne p0, p1, :cond_bd

    goto :goto_bf

    :cond_bd
    sget-object p0, Ly2/p;->a:Ly2/p;

    :goto_bf
    if-ne p0, p1, :cond_c2

    return-object p0

    :cond_c2
    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0

    :cond_c5
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d3
    instance-of v7, v6, Lv3/t;

    if-eqz v7, :cond_de

    check-cast v6, Lv3/t;

    invoke-virtual {v6, p0}, Lv3/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_45

    :cond_de
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_ec
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_fa
    instance-of v0, p1, Lv3/t;

    if-eqz v0, :cond_105

    check-cast p1, Lv3/t;

    invoke-virtual {p1, p0}, Lv3/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_105
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    :goto_0
    iget-object v0, p0, Lx3/c;->_state:Ljava/lang/Object;

    instance-of v1, v0, Lx3/a;

    const/16 v2, 0x5d

    const-string v3, "Mutex["

    if-eqz v1, :cond_1d

    invoke-static {v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    check-cast v0, Lx3/a;

    iget-object v0, v0, Lx3/a;->a:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1d
    instance-of v1, v0, Lv3/t;

    if-eqz v1, :cond_27

    check-cast v0, Lv3/t;

    invoke-virtual {v0, p0}, Lv3/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_27
    instance-of p0, v0, Lx3/c$c;

    if-eqz p0, :cond_3e

    invoke-static {v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    check-cast v0, Lx3/c$c;

    iget-object v0, v0, Lx3/c$c;->d:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal state "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
