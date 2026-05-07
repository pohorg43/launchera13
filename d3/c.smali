.class public abstract Ld3/c;
.super Ld3/a;
.source ""


# instance fields
.field private final _context:Lb3/f;

.field private transient intercepted:Lb3/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb3/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb3/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb3/d<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lb3/d;->getContext()Lb3/f;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-direct {p0, p1, v0}, Ld3/c;-><init>(Lb3/d;Lb3/f;)V

    return-void
.end method

.method public constructor <init>(Lb3/d;Lb3/f;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb3/d<",
            "Ljava/lang/Object;",
            ">;",
            "Lb3/f;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ld3/a;-><init>(Lb3/d;)V

    iput-object p2, p0, Ld3/c;->_context:Lb3/f;

    return-void
.end method


# virtual methods
.method public getContext()Lb3/f;
    .registers 1

    iget-object p0, p0, Ld3/c;->_context:Lb3/f;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final intercepted()Lb3/d;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb3/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ld3/c;->intercepted:Lb3/d;

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Ld3/c;->getContext()Lb3/f;

    move-result-object v0

    sget v1, Lb3/e;->A:I

    sget-object v1, Lb3/e$a;->a:Lb3/e$a;

    invoke-interface {v0, v1}, Lb3/f;->get(Lb3/f$b;)Lb3/f$a;

    move-result-object v0

    check-cast v0, Lb3/e;

    if-eqz v0, :cond_1a

    invoke-interface {v0, p0}, Lb3/e;->interceptContinuation(Lb3/d;)Lb3/d;

    move-result-object v0

    if-nez v0, :cond_1b

    :cond_1a
    move-object v0, p0

    :cond_1b
    iput-object v0, p0, Ld3/c;->intercepted:Lb3/d;

    :cond_1d
    return-object v0
.end method

.method public releaseIntercepted()V
    .registers 4

    iget-object v0, p0, Ld3/c;->intercepted:Lb3/d;

    if-eqz v0, :cond_1a

    if-eq v0, p0, :cond_1a

    invoke-virtual {p0}, Ld3/c;->getContext()Lb3/f;

    move-result-object v1

    sget v2, Lb3/e;->A:I

    sget-object v2, Lb3/e$a;->a:Lb3/e$a;

    invoke-interface {v1, v2}, Lb3/f;->get(Lb3/f$b;)Lb3/f$a;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lb3/e;

    invoke-interface {v1, v0}, Lb3/e;->releaseInterceptedContinuation(Lb3/d;)V

    :cond_1a
    sget-object v0, Ld3/b;->a:Ld3/b;

    iput-object v0, p0, Ld3/c;->intercepted:Lb3/d;

    return-void
.end method
