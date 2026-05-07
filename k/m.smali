.class public abstract Lk/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lk/l;
.implements Ls2/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lk/l<",
        "TV;TO;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lr/a<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 3

    iput p1, p0, Lk/m;->a:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1b

    const/4 v0, 0x3

    if-eq p1, v0, :cond_17

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lg1/f;->a:[C

    new-instance p1, Ljava/util/ArrayDeque;

    const/16 v0, 0x14

    invoke-direct {p1, v0}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object p1, p0, Lk/m;->b:Ljava/lang/Object;

    return-void

    :cond_17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    :cond_1b
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lk/m;->a:I

    new-instance v0, Lr/a;

    invoke-direct {v0, p1}, Lr/a;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lk/m;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lk/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk/m;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract a()Ln0/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public b()Ln0/k;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lk/m;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln0/k;

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lk/m;->a()Ln0/k;

    move-result-object v0

    :cond_10
    return-object v0
.end method

.method public c()Lm2/a;
    .registers 2

    iget-object p0, p0, Lk/m;->b:Ljava/lang/Object;

    check-cast p0, Lm2/a;

    if-nez p0, :cond_c

    const-string/jumbo v0, "mVertexArray"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_c
    return-object p0
.end method

.method public d(Ln0/k;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lk/m;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_13

    iget-object p0, p0, Lk/m;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/Queue;

    invoke-interface {p0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_13
    return-void
.end method

.method public dispose()V
    .registers 2

    iget-object p0, p0, Lk/m;->b:Ljava/lang/Object;

    check-cast p0, Lm2/a;

    if-nez p0, :cond_c

    const-string/jumbo v0, "mVertexArray"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {p0}, Lm2/a;->dispose()V

    return-void
.end method

.method public abstract e()V
.end method

.method public abstract f()V
.end method

.method public getKeyframes()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lr/a<",
            "TV;>;>;"
        }
    .end annotation

    iget-object p0, p0, Lk/m;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public isStatic()Z
    .registers 4

    iget-object v0, p0, Lk/m;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_26

    iget-object v0, p0, Lk/m;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_27

    iget-object p0, p0, Lk/m;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr/a;

    invoke-virtual {p0}, Lr/a;->d()Z

    move-result p0

    if-eqz p0, :cond_27

    :cond_26
    move v1, v2

    :cond_27
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lk/m;->a:I

    packed-switch v0, :pswitch_data_34

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_a  #0x0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lk/m;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2e

    const-string/jumbo v1, "values="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lk/m;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_a  #00000000
    .end packed-switch
.end method
