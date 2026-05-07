.class public Lq0/q$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lk0/d;
.implements Lk0/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq0/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lk0/d<",
        "TData;>;",
        "Lk0/d$a<",
        "TData;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lk0/d<",
            "TData;>;>;"
        }
    .end annotation
.end field

.field public final b:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field public c:I

.field public d:Lcom/bumptech/glide/e;

.field public e:Lk0/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk0/d$a<",
            "-TData;>;"
        }
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public g:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Landroidx/core/util/Pools$Pool;)V
    .registers 3
    .param p1  # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroidx/core/util/Pools$Pool;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lk0/d<",
            "TData;>;>;",
            "Landroidx/core/util/Pools$Pool<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lq0/q$a;->b:Landroidx/core/util/Pools$Pool;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_11

    iput-object p1, p0, Lq0/q$a;->a:Ljava/util/List;

    const/4 p1, 0x0

    iput p1, p0, Lq0/q$a;->c:I

    return-void

    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must not be empty."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TData;>;"
        }
    .end annotation

    iget-object p0, p0, Lq0/q$a;->a:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk0/d;

    invoke-interface {p0}, Lk0/d;->a()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lq0/q$a;->f:Ljava/util/List;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lq0/q$a;->b:Landroidx/core/util/Pools$Pool;

    invoke-interface {v1, v0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lq0/q$a;->f:Ljava/util/List;

    iget-object p0, p0, Lq0/q$a;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk0/d;

    invoke-interface {v0}, Lk0/d;->b()V

    goto :goto_12

    :cond_22
    return-void
.end method

.method public c(Ljava/lang/Exception;)V
    .registers 4
    .param p1  # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lq0/q$a;->f:Ljava/util/List;

    const-string v1, "Argument must not be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lq0/q$a;->g()V

    return-void
.end method

.method public cancel()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lq0/q$a;->g:Z

    iget-object p0, p0, Lq0/q$a;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk0/d;

    invoke-interface {v0}, Lk0/d;->cancel()V

    goto :goto_9

    :cond_19
    return-void
.end method

.method public d()Lcom/bumptech/glide/load/a;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lq0/q$a;->a:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk0/d;

    invoke-interface {p0}, Lk0/d;->d()Lcom/bumptech/glide/load/a;

    move-result-object p0

    return-object p0
.end method

.method public e(Lcom/bumptech/glide/e;Lk0/d$a;)V
    .registers 4
    .param p1  # Lcom/bumptech/glide/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lk0/d$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/e;",
            "Lk0/d$a<",
            "-TData;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lq0/q$a;->d:Lcom/bumptech/glide/e;

    iput-object p2, p0, Lq0/q$a;->e:Lk0/d$a;

    iget-object p2, p0, Lq0/q$a;->b:Landroidx/core/util/Pools$Pool;

    invoke-interface {p2}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lq0/q$a;->f:Ljava/util/List;

    iget-object p2, p0, Lq0/q$a;->a:Ljava/util/List;

    iget v0, p0, Lq0/q$a;->c:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lk0/d;

    invoke-interface {p2, p1, p0}, Lk0/d;->e(Lcom/bumptech/glide/e;Lk0/d$a;)V

    iget-boolean p1, p0, Lq0/q$a;->g:Z

    if-eqz p1, :cond_22

    invoke-virtual {p0}, Lq0/q$a;->cancel()V

    :cond_22
    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .registers 2
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TData;)V"
        }
    .end annotation

    if-eqz p1, :cond_8

    iget-object p0, p0, Lq0/q$a;->e:Lk0/d$a;

    invoke-interface {p0, p1}, Lk0/d$a;->f(Ljava/lang/Object;)V

    goto :goto_b

    :cond_8
    invoke-virtual {p0}, Lq0/q$a;->g()V

    :goto_b
    return-void
.end method

.method public final g()V
    .registers 4

    iget-boolean v0, p0, Lq0/q$a;->g:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget v0, p0, Lq0/q$a;->c:I

    iget-object v1, p0, Lq0/q$a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1f

    iget v0, p0, Lq0/q$a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lq0/q$a;->c:I

    iget-object v0, p0, Lq0/q$a;->d:Lcom/bumptech/glide/e;

    iget-object v1, p0, Lq0/q$a;->e:Lk0/d$a;

    invoke-virtual {p0, v0, v1}, Lq0/q$a;->e(Lcom/bumptech/glide/e;Lk0/d$a;)V

    goto :goto_39

    :cond_1f
    iget-object v0, p0, Lq0/q$a;->f:Ljava/util/List;

    const-string v1, "Argument must not be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lq0/q$a;->e:Lk0/d$a;

    new-instance v1, Lm0/r;

    new-instance v2, Ljava/util/ArrayList;

    iget-object p0, p0, Lq0/q$a;->f:Ljava/util/List;

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p0, "Fetch failed"

    invoke-direct {v1, p0, v2}, Lm0/r;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lk0/d$a;->c(Ljava/lang/Exception;)V

    :goto_39
    return-void
.end method
