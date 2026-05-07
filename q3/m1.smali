.class public abstract Lq3/m1;
.super Lq3/w;
.source ""

# interfaces
.implements Lq3/s0;
.implements Lq3/f1;


# instance fields
.field public d:Lq3/n1;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lq3/w;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public dispose()V
    .registers 5

    invoke-virtual {p0}, Lq3/m1;->t()Lq3/n1;

    move-result-object v0

    :cond_4
    invoke-virtual {v0}, Lq3/n1;->P()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lq3/m1;

    if-eqz v2, :cond_1a

    if-eq v1, p0, :cond_f

    goto :goto_29

    :cond_f
    sget-object v2, Lq3/n1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v3, Lq3/o1;->g:Lq3/u0;

    invoke-virtual {v2, v0, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_29

    :cond_1a
    instance-of v0, v1, Lq3/f1;

    if-eqz v0, :cond_29

    check-cast v1, Lq3/f1;

    invoke-interface {v1}, Lq3/f1;->e()Lq3/s1;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Lv3/l;->p()Z

    :cond_29
    :goto_29
    return-void
.end method

.method public e()Lq3/s1;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public final t()Lq3/n1;
    .registers 1

    iget-object p0, p0, Lq3/m1;->d:Lq3/n1;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "job"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

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

    const-string v1, "[job@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lq3/m1;->t()Lq3/n1;

    move-result-object p0

    invoke-static {p0}, Lq3/h0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
