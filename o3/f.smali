.class public final Lo3/f;
.super Lo3/g;
.source ""

# interfaces
.implements Ljava/util/Iterator;
.implements Lb3/d;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo3/g<",
        "TT;>;",
        "Ljava/util/Iterator<",
        "TT;>;",
        "Lb3/d<",
        "Ly2/p;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public c:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public d:Lb3/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lo3/g;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;Lb3/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iput-object p1, p0, Lo3/f;->b:Ljava/lang/Object;

    const/4 p1, 0x3

    iput p1, p0, Lo3/f;->a:I

    iput-object p2, p0, Lo3/f;->d:Lb3/d;

    sget-object p0, Lc3/a;->a:Lc3/a;

    const-string p1, "frame"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public e(Ljava/util/Iterator;Lb3/d;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TT;>;",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0

    :cond_9
    iput-object p1, p0, Lo3/f;->c:Ljava/util/Iterator;

    const/4 p1, 0x2

    iput p1, p0, Lo3/f;->a:I

    iput-object p2, p0, Lo3/f;->d:Lb3/d;

    sget-object p0, Lc3/a;->a:Lc3/a;

    const-string p1, "frame"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final f()Ljava/lang/Throwable;
    .registers 3

    iget v0, p0, Lo3/f;->a:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_25

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected state of the iterator: "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p0, p0, Lo3/f;->a:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2a

    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string p0, "Iterator has failed."

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2a

    :cond_25
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    :goto_2a
    return-object v0
.end method

.method public getContext()Lb3/f;
    .registers 1

    sget-object p0, Lb3/h;->a:Lb3/h;

    return-object p0
.end method

.method public hasNext()Z
    .registers 5

    :goto_0
    iget v0, p0, Lo3/f;->a:I

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_19

    if-eq v0, v2, :cond_18

    const/4 v1, 0x3

    if-eq v0, v1, :cond_18

    const/4 v1, 0x4

    if-ne v0, v1, :cond_13

    const/4 p0, 0x0

    return p0

    :cond_13
    invoke-virtual {p0}, Lo3/f;->f()Ljava/lang/Throwable;

    move-result-object p0

    throw p0

    :cond_18
    return v3

    :cond_19
    iget-object v0, p0, Lo3/f;->c:Ljava/util/Iterator;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    iput v2, p0, Lo3/f;->a:I

    return v3

    :cond_27
    iput-object v1, p0, Lo3/f;->c:Ljava/util/Iterator;

    :cond_29
    const/4 v0, 0x5

    iput v0, p0, Lo3/f;->a:I

    iget-object v0, p0, Lo3/f;->d:Lb3/d;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v1, p0, Lo3/f;->d:Lb3/d;

    sget-object v1, Ly2/p;->a:Ly2/p;

    invoke-interface {v0, v1}, Lb3/d;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget v0, p0, Lo3/f;->a:I

    if-eqz v0, :cond_27

    const/4 v1, 0x1

    if-eq v0, v1, :cond_27

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1b

    const/4 v1, 0x3

    if-ne v0, v1, :cond_16

    const/4 v0, 0x0

    iput v0, p0, Lo3/f;->a:I

    iget-object v0, p0, Lo3/f;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lo3/f;->b:Ljava/lang/Object;

    return-object v0

    :cond_16
    invoke-virtual {p0}, Lo3/f;->f()Ljava/lang/Throwable;

    move-result-object p0

    throw p0

    :cond_1b
    iput v1, p0, Lo3/f;->a:I

    iget-object p0, p0, Lo3/f;->c:Ljava/util/Iterator;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_27
    invoke-virtual {p0}, Lo3/f;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Lo3/f;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_32
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public remove()V
    .registers 2

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .registers 2

    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    const/4 p1, 0x4

    iput p1, p0, Lo3/f;->a:I

    return-void
.end method
