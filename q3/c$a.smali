.class public final Lq3/c$a;
.super Lq3/m1;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq3/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field private volatile synthetic _disposer:Ljava/lang/Object;

.field public final e:Lq3/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/k<",
            "Ljava/util/List<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field public f:Lq3/s0;

.field public final synthetic g:Lq3/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/c<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lq3/c;Lq3/k;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/k<",
            "-",
            "Ljava/util/List<",
            "+TT;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lq3/c$a;->g:Lq3/c;

    invoke-direct {p0}, Lq3/m1;-><init>()V

    iput-object p2, p0, Lq3/c$a;->e:Lq3/k;

    const/4 p1, 0x0

    iput-object p1, p0, Lq3/c$a;->_disposer:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lq3/c$a;->s(Ljava/lang/Throwable;)V

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method

.method public s(Ljava/lang/Throwable;)V
    .registers 6

    if-eqz p1, :cond_1a

    iget-object v0, p0, Lq3/c$a;->e:Lq3/k;

    invoke-interface {v0, p1}, Lq3/k;->l(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_43

    iget-object v0, p0, Lq3/c$a;->e:Lq3/k;

    invoke-interface {v0, p1}, Lq3/k;->z(Ljava/lang/Object;)V

    iget-object p0, p0, Lq3/c$a;->_disposer:Ljava/lang/Object;

    check-cast p0, Lq3/c$b;

    if-nez p0, :cond_16

    goto :goto_43

    :cond_16
    invoke-virtual {p0}, Lq3/c$b;->b()V

    goto :goto_43

    :cond_1a
    iget-object p1, p0, Lq3/c$a;->g:Lq3/c;

    sget-object v0, Lq3/c;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    move-result p1

    if-nez p1, :cond_43

    iget-object p1, p0, Lq3/c$a;->e:Lq3/k;

    iget-object p0, p0, Lq3/c$a;->g:Lq3/c;

    iget-object p0, p0, Lq3/c;->a:[Lq3/k0;

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    array-length v2, p0

    :goto_32
    if-ge v1, v2, :cond_40

    aget-object v3, p0, v1

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v3}, Lq3/k0;->e()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_32

    :cond_40
    invoke-interface {p1, v0}, Lb3/d;->resumeWith(Ljava/lang/Object;)V

    :cond_43
    :goto_43
    return-void
.end method

.method public final u(Lq3/c$b;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/c<",
            "TT;>.b;)V"
        }
    .end annotation

    iput-object p1, p0, Lq3/c$a;->_disposer:Ljava/lang/Object;

    return-void
.end method
