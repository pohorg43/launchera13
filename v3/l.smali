.class public Lv3/l;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv3/l$a;,
        Lv3/l$b;
    }
.end annotation


# static fields
.field public static final synthetic a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field public volatile synthetic _next:Ljava/lang/Object;

.field public volatile synthetic _prev:Ljava/lang/Object;

.field private volatile synthetic _removedRef:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Ljava/lang/Object;

    const-class v1, Lv3/l;

    const-string v2, "_next"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    sput-object v2, Lv3/l;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v2, "_prev"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    sput-object v2, Lv3/l;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v2, "_removedRef"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lv3/l;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lv3/l;->_next:Ljava/lang/Object;

    iput-object p0, p0, Lv3/l;->_prev:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lv3/l;->_removedRef:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final g(Lv3/l;Lv3/l;)Z
    .registers 4

    sget-object v0, Lv3/l;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lv3/l;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p0, p2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x0

    return p0

    :cond_12
    invoke-virtual {p1, p2}, Lv3/l;->i(Lv3/l;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final h(Lv3/t;)Lv3/l;
    .registers 8

    :goto_0
    iget-object p1, p0, Lv3/l;->_prev:Ljava/lang/Object;

    check-cast p1, Lv3/l;

    const/4 v0, 0x0

    move-object v1, p1

    :goto_6
    move-object v2, v0

    :goto_7
    iget-object v3, v1, Lv3/l;->_next:Ljava/lang/Object;

    if-ne v3, p0, :cond_18

    if-ne p1, v1, :cond_e

    return-object v1

    :cond_e
    sget-object v0, Lv3/l;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    goto :goto_0

    :cond_17
    return-object v1

    :cond_18
    invoke-virtual {p0}, Lv3/l;->o()Z

    move-result v4

    if-eqz v4, :cond_1f

    return-object v0

    :cond_1f
    if-nez v3, :cond_22

    return-object v1

    :cond_22
    instance-of v4, v3, Lv3/t;

    if-eqz v4, :cond_2c

    check-cast v3, Lv3/t;

    invoke-virtual {v3, v1}, Lv3/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2c
    instance-of v4, v3, Lv3/u;

    if-eqz v4, :cond_46

    if-eqz v2, :cond_41

    sget-object v4, Lv3/l;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    check-cast v3, Lv3/u;

    iget-object v3, v3, Lv3/u;->a:Lv3/l;

    invoke-virtual {v4, v2, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    goto :goto_0

    :cond_3f
    move-object v1, v2

    goto :goto_6

    :cond_41
    iget-object v1, v1, Lv3/l;->_prev:Ljava/lang/Object;

    check-cast v1, Lv3/l;

    goto :goto_7

    :cond_46
    move-object v2, v3

    check-cast v2, Lv3/l;

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_7
.end method

.method public final i(Lv3/l;)V
    .registers 4

    :cond_0
    iget-object v0, p1, Lv3/l;->_prev:Ljava/lang/Object;

    check-cast v0, Lv3/l;

    invoke-virtual {p0}, Lv3/l;->j()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_b

    return-void

    :cond_b
    sget-object v1, Lv3/l;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p1, v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lv3/l;->o()Z

    move-result p0

    if-eqz p0, :cond_1d

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lv3/l;->h(Lv3/t;)Lv3/l;

    :cond_1d
    return-void
.end method

.method public final j()Ljava/lang/Object;
    .registers 3

    :goto_0
    iget-object v0, p0, Lv3/l;->_next:Ljava/lang/Object;

    instance-of v1, v0, Lv3/t;

    if-nez v1, :cond_7

    return-object v0

    :cond_7
    check-cast v0, Lv3/t;

    invoke-virtual {v0, p0}, Lv3/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final k()Lv3/l;
    .registers 3

    invoke-virtual {p0}, Lv3/l;->j()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lv3/u;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Lv3/u;

    goto :goto_e

    :cond_d
    move-object v0, v1

    :goto_e
    if-nez v0, :cond_11

    goto :goto_13

    :cond_11
    iget-object v1, v0, Lv3/u;->a:Lv3/l;

    :goto_13
    if-nez v1, :cond_18

    move-object v1, p0

    check-cast v1, Lv3/l;

    :cond_18
    return-object v1
.end method

.method public final l()Lv3/l;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lv3/l;->h(Lv3/t;)Lv3/l;

    move-result-object v0

    if-nez v0, :cond_19

    iget-object p0, p0, Lv3/l;->_prev:Ljava/lang/Object;

    check-cast p0, Lv3/l;

    move-object v0, p0

    :goto_c
    invoke-virtual {v0}, Lv3/l;->o()Z

    move-result p0

    if-nez p0, :cond_13

    goto :goto_19

    :cond_13
    iget-object p0, v0, Lv3/l;->_prev:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lv3/l;

    goto :goto_c

    :cond_19
    :goto_19
    return-object v0
.end method

.method public final m()V
    .registers 1

    invoke-virtual {p0}, Lv3/l;->j()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv3/u;

    iget-object p0, p0, Lv3/u;->a:Lv3/l;

    invoke-virtual {p0}, Lv3/l;->n()V

    return-void
.end method

.method public final n()V
    .registers 3

    :goto_0
    invoke-virtual {p0}, Lv3/l;->j()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lv3/u;

    if-nez v1, :cond_d

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lv3/l;->h(Lv3/t;)Lv3/l;

    return-void

    :cond_d
    check-cast v0, Lv3/u;

    iget-object p0, v0, Lv3/u;->a:Lv3/l;

    goto :goto_0
.end method

.method public o()Z
    .registers 1

    invoke-virtual {p0}, Lv3/l;->j()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lv3/u;

    return p0
.end method

.method public p()Z
    .registers 1

    invoke-virtual {p0}, Lv3/l;->q()Lv3/l;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public final q()Lv3/l;
    .registers 5

    :cond_0
    invoke-virtual {p0}, Lv3/l;->j()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lv3/u;

    if-eqz v1, :cond_d

    check-cast v0, Lv3/u;

    iget-object p0, v0, Lv3/u;->a:Lv3/l;

    return-object p0

    :cond_d
    if-ne v0, p0, :cond_12

    check-cast v0, Lv3/l;

    return-object v0

    :cond_12
    move-object v1, v0

    check-cast v1, Lv3/l;

    iget-object v2, v1, Lv3/l;->_removedRef:Ljava/lang/Object;

    check-cast v2, Lv3/u;

    if-nez v2, :cond_25

    new-instance v2, Lv3/u;

    invoke-direct {v2, v1}, Lv3/u;-><init>(Lv3/l;)V

    sget-object v3, Lv3/l;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    sget-object v3, Lv3/l;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Lv3/l;->h(Lv3/t;)Lv3/l;

    return-object p0
.end method

.method public final r(Lv3/l;Lv3/l;Lv3/l$a;)I
    .registers 5

    sget-object v0, Lv3/l;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lv3/l;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p3, Lv3/l$a;->c:Lv3/l;

    invoke-virtual {v0, p0, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    const/4 p0, 0x0

    return p0

    :cond_14
    invoke-virtual {p3, p0}, Lv3/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1c

    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x2

    :goto_1d
    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lv3/l$c;

    invoke-direct {v1, p0}, Lv3/l$c;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lq3/h0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
