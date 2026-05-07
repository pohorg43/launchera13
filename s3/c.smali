.class public abstract Ls3/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ls3/w;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls3/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ls3/w<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final synthetic c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field public final a:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "TE;",
            "Ly2/p;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final b:Lv3/j;

.field private volatile synthetic onCloseHandler:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Ls3/c;

    const-class v1, Ljava/lang/Object;

    const-string v2, "onCloseHandler"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Ls3/c;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Ly2/p;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls3/c;->a:Lkotlin/jvm/functions/Function1;

    new-instance p1, Lv3/j;

    invoke-direct {p1}, Lv3/j;-><init>()V

    iput-object p1, p0, Ls3/c;->b:Lv3/j;

    const/4 p1, 0x0

    iput-object p1, p0, Ls3/c;->onCloseHandler:Ljava/lang/Object;

    return-void
.end method

.method public static final a(Ls3/c;Lb3/d;Ljava/lang/Object;Ls3/j;)V
    .registers 5

    invoke-virtual {p0, p3}, Ls3/c;->h(Ls3/j;)V

    invoke-virtual {p3}, Ls3/j;->y()Ljava/lang/Throwable;

    move-result-object p3

    iget-object p0, p0, Ls3/c;->a:Lkotlin/jvm/functions/Function1;

    if-nez p0, :cond_c

    goto :goto_13

    :cond_c
    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Lv3/s;->a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lv3/e0;)Lv3/e0;

    move-result-object p0

    if-nez p0, :cond_1d

    :goto_13
    invoke-static {p3}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p1, Lq3/l;

    invoke-virtual {p1, p0}, Lq3/l;->resumeWith(Ljava/lang/Object;)V

    goto :goto_29

    :cond_1d
    invoke-static {p0, p3}, Ll0/b;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    invoke-static {p0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p1, Lq3/l;

    invoke-virtual {p1, p0}, Lq3/l;->resumeWith(Ljava/lang/Object;)V

    :goto_29
    return-void
.end method


# virtual methods
.method public d(Ls3/v;)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p0}, Ls3/c;->i()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Ls3/c;->b:Lv3/j;

    :cond_8
    invoke-virtual {v0}, Lv3/l;->l()Lv3/l;

    move-result-object p0

    instance-of v1, p0, Ls3/t;

    if-eqz v1, :cond_11

    return-object p0

    :cond_11
    invoke-virtual {p0, p1, v0}, Lv3/l;->g(Lv3/l;Lv3/l;)Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_39

    :cond_18
    iget-object v0, p0, Ls3/c;->b:Lv3/j;

    new-instance v1, Ls3/c$b;

    invoke-direct {v1, p1, p0}, Ls3/c$b;-><init>(Lv3/l;Ls3/c;)V

    :goto_1f
    invoke-virtual {v0}, Lv3/l;->l()Lv3/l;

    move-result-object p0

    instance-of v2, p0, Ls3/t;

    if-eqz v2, :cond_28

    return-object p0

    :cond_28
    invoke-virtual {p0, p1, v0, v1}, Lv3/l;->r(Lv3/l;Lv3/l;Lv3/l$a;)I

    move-result p0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_34

    const/4 v2, 0x2

    if-eq p0, v2, :cond_33

    goto :goto_1f

    :cond_33
    const/4 v2, 0x0

    :cond_34
    if-nez v2, :cond_39

    sget-object p0, Ls3/b;->e:Lv3/y;

    return-object p0

    :cond_39
    :goto_39
    const/4 p0, 0x0

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .registers 1

    const-string p0, ""

    return-object p0
.end method

.method public final f(Ljava/lang/Object;Lb3/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ls3/c;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ls3/b;->b:Lv3/y;

    if-ne v0, v1, :cond_b

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0

    :cond_b
    invoke-static {p2}, Lq/d;->l(Lb3/d;)Lb3/d;

    move-result-object v0

    invoke-static {v0}, Lq/d;->k(Lb3/d;)Lq3/l;

    move-result-object v0

    :goto_13
    iget-object v1, p0, Ls3/c;->b:Lv3/j;

    invoke-virtual {v1}, Lv3/l;->k()Lv3/l;

    move-result-object v1

    instance-of v1, v1, Ls3/t;

    if-nez v1, :cond_25

    invoke-virtual {p0}, Ls3/c;->j()Z

    move-result v1

    if-eqz v1, :cond_25

    const/4 v1, 0x1

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    if-eqz v1, :cond_6c

    iget-object v1, p0, Ls3/c;->a:Lkotlin/jvm/functions/Function1;

    if-nez v1, :cond_32

    new-instance v1, Ls3/x;

    invoke-direct {v1, p1, v0}, Ls3/x;-><init>(Ljava/lang/Object;Lq3/k;)V

    goto :goto_39

    :cond_32
    new-instance v1, Ls3/y;

    iget-object v2, p0, Ls3/c;->a:Lkotlin/jvm/functions/Function1;

    invoke-direct {v1, p1, v0, v2}, Ls3/y;-><init>(Ljava/lang/Object;Lq3/k;Lkotlin/jvm/functions/Function1;)V

    :goto_39
    invoke-virtual {p0, v1}, Ls3/c;->d(Ls3/v;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_48

    new-instance p0, Lq3/w1;

    invoke-direct {p0, v1}, Lq3/w1;-><init>(Lv3/l;)V

    invoke-virtual {v0, p0}, Lq3/l;->j(Lkotlin/jvm/functions/Function1;)V

    goto :goto_88

    :cond_48
    instance-of v1, v2, Ls3/j;

    if-eqz v1, :cond_52

    check-cast v2, Ls3/j;

    invoke-static {p0, v0, p1, v2}, Ls3/c;->a(Ls3/c;Lb3/d;Ljava/lang/Object;Ls3/j;)V

    goto :goto_88

    :cond_52
    sget-object v1, Ls3/b;->e:Lv3/y;

    if-ne v2, v1, :cond_57

    goto :goto_6c

    :cond_57
    instance-of v1, v2, Ls3/r;

    if-eqz v1, :cond_5c

    goto :goto_6c

    :cond_5c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "enqueueSend returned "

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6c
    :goto_6c
    invoke-virtual {p0, p1}, Ls3/c;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ls3/b;->b:Lv3/y;

    if-ne v1, v2, :cond_7a

    sget-object p0, Ly2/p;->a:Ly2/p;

    invoke-virtual {v0, p0}, Lq3/l;->resumeWith(Ljava/lang/Object;)V

    goto :goto_88

    :cond_7a
    sget-object v2, Ls3/b;->c:Lv3/y;

    if-ne v1, v2, :cond_7f

    goto :goto_13

    :cond_7f
    instance-of v2, v1, Ls3/j;

    if-eqz v2, :cond_a0

    check-cast v1, Ls3/j;

    invoke-static {p0, v0, p1, v1}, Ls3/c;->a(Ls3/c;Lb3/d;Ljava/lang/Object;Ls3/j;)V

    :goto_88
    invoke-virtual {v0}, Lq3/l;->t()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lc3/a;->a:Lc3/a;

    if-ne p0, p1, :cond_95

    const-string v0, "frame"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_95
    if-ne p0, p1, :cond_98

    goto :goto_9a

    :cond_98
    sget-object p0, Ly2/p;->a:Ly2/p;

    :goto_9a
    if-ne p0, p1, :cond_9d

    return-object p0

    :cond_9d
    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0

    :cond_a0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "offerInternal returned "

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final g()Ls3/j;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ls3/j<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Ls3/c;->b:Lv3/j;

    invoke-virtual {v0}, Lv3/l;->l()Lv3/l;

    move-result-object v0

    instance-of v1, v0, Ls3/j;

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    check-cast v0, Ls3/j;

    goto :goto_f

    :cond_e
    move-object v0, v2

    :goto_f
    if-nez v0, :cond_12

    goto :goto_16

    :cond_12
    invoke-virtual {p0, v0}, Ls3/c;->h(Ls3/j;)V

    move-object v2, v0

    :goto_16
    return-object v2
.end method

.method public final h(Ls3/j;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls3/j<",
            "*>;)V"
        }
    .end annotation

    const/4 p0, 0x0

    move-object v0, p0

    :goto_2
    invoke-virtual {p1}, Lv3/l;->l()Lv3/l;

    move-result-object v1

    instance-of v2, v1, Ls3/r;

    if-eqz v2, :cond_d

    check-cast v1, Ls3/r;

    goto :goto_e

    :cond_d
    move-object v1, p0

    :goto_e
    if-nez v1, :cond_38

    if-nez v0, :cond_13

    goto :goto_37

    :cond_13
    instance-of p0, v0, Ljava/util/ArrayList;

    if-nez p0, :cond_1d

    check-cast v0, Ls3/r;

    invoke-virtual {v0, p1}, Ls3/r;->t(Ls3/j;)V

    goto :goto_37

    :cond_1d
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_37

    :goto_27
    add-int/lit8 v1, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ls3/r;

    invoke-virtual {p0, p1}, Ls3/r;->t(Ls3/j;)V

    if-gez v1, :cond_35

    goto :goto_37

    :cond_35
    move p0, v1

    goto :goto_27

    :cond_37
    :goto_37
    return-void

    :cond_38
    invoke-virtual {v1}, Lv3/l;->p()Z

    move-result v2

    if-nez v2, :cond_42

    invoke-virtual {v1}, Lv3/l;->m()V

    goto :goto_2

    :cond_42
    invoke-static {v0, v1}, Lv3/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2
.end method

.method public abstract i()Z
.end method

.method public abstract j()Z
.end method

.method public k(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    :cond_0
    invoke-virtual {p0}, Ls3/c;->l()Ls3/t;

    move-result-object v0

    if-nez v0, :cond_9

    sget-object p0, Ls3/b;->c:Lv3/y;

    return-object p0

    :cond_9
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ls3/t;->b(Ljava/lang/Object;Lv3/l$b;)Lv3/y;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ls3/t;->f(Ljava/lang/Object;)V

    invoke-interface {v0}, Ls3/t;->c()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public l()Ls3/t;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ls3/t<",
            "TE;>;"
        }
    .end annotation

    iget-object p0, p0, Ls3/c;->b:Lv3/j;

    :goto_2
    invoke-virtual {p0}, Lv3/l;->j()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv3/l;

    const/4 v1, 0x0

    if-ne v0, p0, :cond_d

    :goto_b
    move-object v0, v1

    goto :goto_26

    :cond_d
    instance-of v2, v0, Ls3/t;

    if-nez v2, :cond_12

    goto :goto_b

    :cond_12
    move-object v1, v0

    check-cast v1, Ls3/t;

    instance-of v1, v1, Ls3/j;

    if-eqz v1, :cond_20

    invoke-virtual {v0}, Lv3/l;->o()Z

    move-result v1

    if-nez v1, :cond_20

    goto :goto_26

    :cond_20
    invoke-virtual {v0}, Lv3/l;->q()Lv3/l;

    move-result-object v1

    if-nez v1, :cond_29

    :goto_26
    check-cast v0, Ls3/t;

    return-object v0

    :cond_29
    invoke-virtual {v1}, Lv3/l;->n()V

    goto :goto_2
.end method

.method public final m()Ls3/v;
    .registers 4

    iget-object p0, p0, Ls3/c;->b:Lv3/j;

    :goto_2
    invoke-virtual {p0}, Lv3/l;->j()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv3/l;

    const/4 v1, 0x0

    if-ne v0, p0, :cond_c

    goto :goto_10

    :cond_c
    instance-of v2, v0, Ls3/v;

    if-nez v2, :cond_12

    :goto_10
    move-object v0, v1

    goto :goto_26

    :cond_12
    move-object v1, v0

    check-cast v1, Ls3/v;

    instance-of v1, v1, Ls3/j;

    if-eqz v1, :cond_20

    invoke-virtual {v0}, Lv3/l;->o()Z

    move-result v1

    if-nez v1, :cond_20

    goto :goto_26

    :cond_20
    invoke-virtual {v0}, Lv3/l;->q()Lv3/l;

    move-result-object v1

    if-nez v1, :cond_29

    :goto_26
    check-cast v0, Ls3/v;

    return-object v0

    :cond_29
    invoke-virtual {v1}, Lv3/l;->n()V

    goto :goto_2
.end method

.method public n(Ljava/lang/Throwable;)Z
    .registers 7

    new-instance v0, Ls3/j;

    invoke-direct {v0, p1}, Ls3/j;-><init>(Ljava/lang/Throwable;)V

    iget-object v1, p0, Ls3/c;->b:Lv3/j;

    :cond_7
    invoke-virtual {v1}, Lv3/l;->l()Lv3/l;

    move-result-object v2

    instance-of v3, v2, Ls3/j;

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    if-nez v3, :cond_13

    const/4 v1, 0x0

    goto :goto_1a

    :cond_13
    invoke-virtual {v2, v0, v1}, Lv3/l;->g(Lv3/l;Lv3/l;)Z

    move-result v2

    if-eqz v2, :cond_7

    move v1, v4

    :goto_1a
    if-eqz v1, :cond_1d

    goto :goto_25

    :cond_1d
    iget-object v0, p0, Ls3/c;->b:Lv3/j;

    invoke-virtual {v0}, Lv3/l;->l()Lv3/l;

    move-result-object v0

    check-cast v0, Ls3/j;

    :goto_25
    invoke-virtual {p0, v0}, Ls3/c;->h(Ls3/j;)V

    if-eqz v1, :cond_43

    iget-object v0, p0, Ls3/c;->onCloseHandler:Ljava/lang/Object;

    if-eqz v0, :cond_43

    sget-object v2, Ls3/b;->f:Lv3/y;

    if-eq v0, v2, :cond_43

    sget-object v3, Ls3/c;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_43

    invoke-static {v0, v4}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_43
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lq3/h0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls3/c;->b:Lv3/j;

    invoke-virtual {v1}, Lv3/l;->k()Lv3/l;

    move-result-object v1

    iget-object v2, p0, Ls3/c;->b:Lv3/j;

    if-ne v1, v2, :cond_2e

    const-string v1, "EmptyQueue"

    goto :goto_94

    :cond_2e
    instance-of v2, v1, Ls3/j;

    if-eqz v2, :cond_37

    invoke-virtual {v1}, Lv3/l;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4b

    :cond_37
    instance-of v2, v1, Ls3/r;

    if-eqz v2, :cond_3e

    const-string v2, "ReceiveQueued"

    goto :goto_4b

    :cond_3e
    instance-of v2, v1, Ls3/v;

    if-eqz v2, :cond_45

    const-string v2, "SendQueued"

    goto :goto_4b

    :cond_45
    const-string v2, "UNEXPECTED:"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_4b
    iget-object v3, p0, Ls3/c;->b:Lv3/j;

    invoke-virtual {v3}, Lv3/l;->l()Lv3/l;

    move-result-object v3

    if-eq v3, v1, :cond_93

    const-string v1, ",queueSize="

    invoke-static {v2, v1}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ls3/c;->b:Lv3/j;

    invoke-virtual {v2}, Lv3/l;->j()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv3/l;

    const/4 v5, 0x0

    :goto_62
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_73

    instance-of v6, v4, Lv3/l;

    if-eqz v6, :cond_6e

    add-int/lit8 v5, v5, 0x1

    :cond_6e
    invoke-virtual {v4}, Lv3/l;->k()Lv3/l;

    move-result-object v4

    goto :goto_62

    :cond_73
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    instance-of v2, v3, Ls3/j;

    if-eqz v2, :cond_94

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",closedForSend="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_94

    :cond_93
    move-object v1, v2

    :cond_94
    :goto_94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ls3/c;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public v(Lkotlin/jvm/functions/Function1;)V
    .registers 5
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

    sget-object v0, Ls3/c;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    iget-object p0, p0, Ls3/c;->onCloseHandler:Ljava/lang/Object;

    sget-object p1, Ls3/b;->f:Lv3/y;

    if-ne p0, p1, :cond_17

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Another handler was already registered and successfully invoked"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Another handler was already registered: "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_23
    invoke-virtual {p0}, Ls3/c;->g()Ls3/j;

    move-result-object v1

    if-eqz v1, :cond_36

    sget-object v2, Ls3/b;->f:Lv3/y;

    invoke-virtual {v0, p0, p1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_36

    iget-object p0, v1, Ls3/j;->d:Ljava/lang/Throwable;

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_36
    return-void
.end method

.method public final x(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ls3/c;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ls3/b;->b:Lv3/y;

    if-ne p1, v0, :cond_b

    sget-object p0, Ly2/p;->a:Ly2/p;

    goto :goto_38

    :cond_b
    sget-object v0, Ls3/b;->c:Lv3/y;

    if-ne p1, v0, :cond_25

    invoke-virtual {p0}, Ls3/c;->g()Ls3/j;

    move-result-object p1

    if-nez p1, :cond_18

    sget-object p0, Ls3/i;->b:Ls3/i$b;

    return-object p0

    :cond_18
    invoke-virtual {p0, p1}, Ls3/c;->h(Ls3/j;)V

    invoke-virtual {p1}, Ls3/j;->y()Ljava/lang/Throwable;

    move-result-object p0

    new-instance p1, Ls3/i$a;

    invoke-direct {p1, p0}, Ls3/i$a;-><init>(Ljava/lang/Throwable;)V

    goto :goto_37

    :cond_25
    instance-of v0, p1, Ls3/j;

    if-eqz v0, :cond_39

    check-cast p1, Ls3/j;

    invoke-virtual {p0, p1}, Ls3/c;->h(Ls3/j;)V

    invoke-virtual {p1}, Ls3/j;->y()Ljava/lang/Throwable;

    move-result-object p0

    new-instance p1, Ls3/i$a;

    invoke-direct {p1, p0}, Ls3/i$a;-><init>(Ljava/lang/Throwable;)V

    :goto_37
    move-object p0, p1

    :goto_38
    return-object p0

    :cond_39
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "trySend returned "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final y()Z
    .registers 1

    invoke-virtual {p0}, Ls3/c;->g()Ls3/j;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method
