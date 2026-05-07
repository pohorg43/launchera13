.class public final Lq3/o0;
.super Lv3/w;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lv3/w<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final synthetic d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile synthetic _decision:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-class v0, Lq3/o0;

    const-string v1, "_decision"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lq3/o0;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lb3/f;Lb3/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb3/f;",
            "Lb3/d<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lv3/w;-><init>(Lb3/f;Lb3/d;)V

    const/4 p1, 0x0

    iput p1, p0, Lq3/o0;->_decision:I

    return-void
.end method


# virtual methods
.method public B(Ljava/lang/Object;)V
    .registers 2

    invoke-virtual {p0, p1}, Lq3/o0;->h0(Ljava/lang/Object;)V

    return-void
.end method

.method public h0(Ljava/lang/Object;)V
    .registers 6

    :cond_0
    iget v0, p0, Lq3/o0;->_decision:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v0, :cond_16

    if-ne v0, v2, :cond_a

    goto :goto_1f

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already resumed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16
    sget-object v0, Lq3/o0;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    :goto_1f
    if-eqz v1, :cond_22

    return-void

    :cond_22
    iget-object v0, p0, Lv3/w;->c:Lb3/d;

    invoke-static {v0}, Lq/d;->l(Lb3/d;)Lb3/d;

    move-result-object v0

    iget-object p0, p0, Lv3/w;->c:Lb3/d;

    invoke-static {p1, p0}, Li1/k;->c(Ljava/lang/Object;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {v0, p0, p1, v3}, Lv3/g;->b(Lb3/d;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;I)V

    return-void
.end method

.method public final l0()Ljava/lang/Object;
    .registers 4

    :cond_0
    iget v0, p0, Lq3/o0;->_decision:I

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    const/4 v2, 0x2

    if-ne v0, v2, :cond_9

    goto :goto_1f

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Already suspended"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    sget-object v0, Lq3/o0;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    :goto_1f
    if-eqz v1, :cond_24

    sget-object p0, Lc3/a;->a:Lc3/a;

    return-object p0

    :cond_24
    invoke-virtual {p0}, Lq3/n1;->P()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lq3/o1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lq3/u;

    if-nez v0, :cond_31

    return-object p0

    :cond_31
    check-cast p0, Lq3/u;

    iget-object p0, p0, Lq3/u;->a:Ljava/lang/Throwable;

    throw p0
.end method
