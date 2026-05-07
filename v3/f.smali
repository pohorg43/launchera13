.class public final Lv3/f;
.super Lq3/p0;
.source ""

# interfaces
.implements Ld3/d;
.implements Lb3/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lq3/p0<",
        "TT;>;",
        "Ld3/d;",
        "Lb3/d<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final synthetic h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _reusableCancellableContinuation:Ljava/lang/Object;

.field public final d:Lq3/b0;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final e:Lb3/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb3/d<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public f:Ljava/lang/Object;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final g:Ljava/lang/Object;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-class v0, Lv3/f;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_reusableCancellableContinuation"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lv3/f;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lq3/b0;Lb3/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/b0;",
            "Lb3/d<",
            "-TT;>;)V"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lq3/p0;-><init>(I)V

    iput-object p1, p0, Lv3/f;->d:Lq3/b0;

    iput-object p2, p0, Lv3/f;->e:Lb3/d;

    sget-object p1, Lv3/g;->a:Lv3/y;

    iput-object p1, p0, Lv3/f;->f:Ljava/lang/Object;

    invoke-virtual {p0}, Lv3/f;->getContext()Lb3/f;

    move-result-object p1

    invoke-static {p1}, Lv3/a0;->b(Lb3/f;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lv3/f;->g:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lv3/f;->_reusableCancellableContinuation:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3

    instance-of p0, p1, Lq3/v;

    if-eqz p0, :cond_b

    check-cast p1, Lq3/v;

    iget-object p0, p1, Lq3/v;->b:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method public c()Lb3/d;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb3/d<",
            "TT;>;"
        }
    .end annotation

    return-object p0
.end method

.method public getCallerFrame()Ld3/d;
    .registers 2

    iget-object p0, p0, Lv3/f;->e:Lb3/d;

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

    iget-object p0, p0, Lv3/f;->e:Lb3/d;

    invoke-interface {p0}, Lb3/d;->getContext()Lb3/f;

    move-result-object p0

    return-object p0
.end method

.method public h()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lv3/f;->f:Ljava/lang/Object;

    sget-object v1, Lv3/g;->a:Lv3/y;

    iput-object v1, p0, Lv3/f;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public final i()Lq3/l;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/l<",
            "TT;>;"
        }
    .end annotation

    :cond_0
    :goto_0
    iget-object v0, p0, Lv3/f;->_reusableCancellableContinuation:Ljava/lang/Object;

    if-nez v0, :cond_a

    sget-object v0, Lv3/g;->b:Lv3/y;

    iput-object v0, p0, Lv3/f;->_reusableCancellableContinuation:Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0

    :cond_a
    instance-of v1, v0, Lq3/l;

    if-eqz v1, :cond_1b

    sget-object v1, Lv3/f;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v2, Lv3/g;->b:Lv3/y;

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lq3/l;

    return-object v0

    :cond_1b
    sget-object v1, Lv3/g;->b:Lv3/y;

    if-ne v0, v1, :cond_20

    goto :goto_0

    :cond_20
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_25

    goto :goto_0

    :cond_25
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Inconsistent state "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final k()Z
    .registers 1

    iget-object p0, p0, Lv3/f;->_reusableCancellableContinuation:Ljava/lang/Object;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public final n(Ljava/lang/Throwable;)Z
    .registers 6

    :cond_0
    iget-object v0, p0, Lv3/f;->_reusableCancellableContinuation:Ljava/lang/Object;

    sget-object v1, Lv3/g;->b:Lv3/y;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_14

    sget-object v0, Lv3/f;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_14
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_19

    return v3

    :cond_19
    sget-object v1, Lv3/f;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0
.end method

.method public final o()V
    .registers 2

    iget-object p0, p0, Lv3/f;->_reusableCancellableContinuation:Ljava/lang/Object;

    instance-of v0, p0, Lq3/l;

    if-eqz v0, :cond_9

    check-cast p0, Lq3/l;

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    if-nez p0, :cond_d

    goto :goto_10

    :cond_d
    invoke-virtual {p0}, Lq3/l;->p()V

    :goto_10
    return-void
.end method

.method public final p(Lq3/k;)Ljava/lang/Throwable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/k<",
            "*>;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Lv3/f;->_reusableCancellableContinuation:Ljava/lang/Object;

    sget-object v1, Lv3/g;->b:Lv3/y;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_10

    sget-object v0, Lv3/f;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v2

    :cond_10
    instance-of p1, v0, Ljava/lang/Throwable;

    if-eqz p1, :cond_2b

    sget-object p1, Lv3/f;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    check-cast v0, Ljava/lang/Throwable;

    return-object v0

    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed requirement."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Inconsistent state "

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .registers 8

    iget-object v0, p0, Lv3/f;->e:Lb3/d;

    invoke-interface {v0}, Lb3/d;->getContext()Lb3/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v1}, Li1/k;->g(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lv3/f;->d:Lq3/b0;

    invoke-virtual {v3, v0}, Lq3/b0;->isDispatchNeeded(Lb3/f;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1e

    iput-object v2, p0, Lv3/f;->f:Ljava/lang/Object;

    iput v4, p0, Lq3/p0;->c:I

    iget-object p1, p0, Lv3/f;->d:Lq3/b0;

    invoke-virtual {p1, v0, p0}, Lq3/b0;->dispatch(Lb3/f;Ljava/lang/Runnable;)V

    goto :goto_5b

    :cond_1e
    sget-object v0, Lq3/b2;->a:Lq3/b2;

    invoke-static {}, Lq3/b2;->a()Lq3/v0;

    move-result-object v0

    invoke-virtual {v0}, Lq3/v0;->v()Z

    move-result v3

    if-eqz v3, :cond_32

    iput-object v2, p0, Lv3/f;->f:Ljava/lang/Object;

    iput v4, p0, Lq3/p0;->c:I

    invoke-virtual {v0, p0}, Lq3/v0;->n(Lq3/p0;)V

    goto :goto_5b

    :cond_32
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lq3/v0;->r(Z)V

    :try_start_36
    invoke-virtual {p0}, Lv3/f;->getContext()Lb3/f;

    move-result-object v3

    iget-object v4, p0, Lv3/f;->g:Ljava/lang/Object;

    invoke-static {v3, v4}, Lv3/a0;->c(Lb3/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_40
    .catchall {:try_start_36 .. :try_end_40} :catchall_54

    :try_start_40
    iget-object v5, p0, Lv3/f;->e:Lb3/d;

    invoke-interface {v5, p1}, Lb3/d;->resumeWith(Ljava/lang/Object;)V
    :try_end_45
    .catchall {:try_start_40 .. :try_end_45} :catchall_4f

    :try_start_45
    invoke-static {v3, v4}, Lv3/a0;->a(Lb3/f;Ljava/lang/Object;)V

    :cond_48
    invoke-virtual {v0}, Lq3/v0;->y()Z

    move-result p1

    if-nez p1, :cond_48

    goto :goto_58

    :catchall_4f
    move-exception p1

    invoke-static {v3, v4}, Lv3/a0;->a(Lb3/f;Ljava/lang/Object;)V

    throw p1
    :try_end_54
    .catchall {:try_start_45 .. :try_end_54} :catchall_54

    :catchall_54
    move-exception p1

    :try_start_55
    invoke-virtual {p0, p1, v1}, Lq3/p0;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_5c

    :goto_58
    invoke-virtual {v0, v2}, Lq3/v0;->l(Z)V

    :goto_5b
    return-void

    :catchall_5c
    move-exception p0

    invoke-virtual {v0, v2}, Lq3/v0;->l(Z)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "DispatchedContinuation["

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lv3/f;->d:Lq3/b0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lv3/f;->e:Lb3/d;

    invoke-static {p0}, Lq3/h0;->c(Lb3/d;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
