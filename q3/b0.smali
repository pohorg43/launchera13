.class public abstract Lq3/b0;
.super Lb3/a;
.source ""

# interfaces
.implements Lb3/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq3/b0$a;
    }
.end annotation


# static fields
.field public static final Key:Lq3/b0$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lq3/b0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lq3/b0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lq3/b0;->Key:Lq3/b0$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    sget-object v0, Lb3/e$a;->a:Lb3/e$a;

    invoke-direct {p0, v0}, Lb3/a;-><init>(Lb3/f$b;)V

    return-void
.end method


# virtual methods
.method public abstract dispatch(Lb3/f;Ljava/lang/Runnable;)V
.end method

.method public dispatchYield(Lb3/f;Ljava/lang/Runnable;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lq3/b0;->dispatch(Lb3/f;Ljava/lang/Runnable;)V

    return-void
.end method

.method public get(Lb3/f$b;)Lb3/f$a;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lb3/f$a;",
            ">(",
            "Lb3/f$b<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, p1, Lb3/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_35

    check-cast p1, Lb3/b;

    invoke-interface {p0}, Lb3/f$a;->getKey()Lb3/f$b;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq v1, p1, :cond_1f

    iget-object v0, p1, Lb3/b;->b:Lb3/f$b;

    if-ne v0, v1, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    :goto_20
    if-eqz v0, :cond_3c

    const-string v0, "element"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lb3/b;->a:Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb3/f$a;

    instance-of p1, p0, Lb3/f$a;

    if-eqz p1, :cond_3c

    :goto_33
    move-object v2, p0

    goto :goto_3c

    :cond_35
    sget-object v0, Lb3/e$a;->a:Lb3/e$a;

    if-ne v0, p1, :cond_3a

    goto :goto_33

    :cond_3a
    move-object p0, v2

    goto :goto_33

    :cond_3c
    :goto_3c
    return-object v2
.end method

.method public final interceptContinuation(Lb3/d;)Lb3/d;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lb3/d<",
            "-TT;>;)",
            "Lb3/d<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lv3/f;

    invoke-direct {v0, p0, p1}, Lv3/f;-><init>(Lq3/b0;Lb3/d;)V

    return-object v0
.end method

.method public isDispatchNeeded(Lb3/f;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public limitedParallelism(I)Lq3/b0;
    .registers 3

    invoke-static {p1}, Li1/d;->a(I)V

    new-instance v0, Lv3/i;

    invoke-direct {v0, p0, p1}, Lv3/i;-><init>(Lq3/b0;I)V

    return-object v0
.end method

.method public minusKey(Lb3/f$b;)Lb3/f;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb3/f$b<",
            "*>;)",
            "Lb3/f;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, p1, Lb3/b;

    if-eqz v1, :cond_33

    check-cast p1, Lb3/b;

    invoke-interface {p0}, Lb3/f$a;->getKey()Lb3/f$b;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq v1, p1, :cond_1e

    iget-object v0, p1, Lb3/b;->b:Lb3/f$b;

    if-ne v0, v1, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 v0, 0x1

    :goto_1f
    if-eqz v0, :cond_39

    const-string v0, "element"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lb3/b;->a:Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb3/f$a;

    if-eqz p1, :cond_39

    sget-object p0, Lb3/h;->a:Lb3/h;

    goto :goto_39

    :cond_33
    sget-object v0, Lb3/e$a;->a:Lb3/e$a;

    if-ne v0, p1, :cond_39

    sget-object p0, Lb3/h;->a:Lb3/h;

    :cond_39
    :goto_39
    return-object p0
.end method

.method public final plus(Lq3/b0;)Lq3/b0;
    .registers 2

    return-object p1
.end method

.method public final releaseInterceptedContinuation(Lb3/d;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb3/d<",
            "*>;)V"
        }
    .end annotation

    check-cast p1, Lv3/f;

    invoke-virtual {p1}, Lv3/f;->o()V

    return-void
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

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
