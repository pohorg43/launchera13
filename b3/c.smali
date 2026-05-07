.class public final Lb3/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb3/f;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb3/c$a;
    }
.end annotation


# instance fields
.field public final a:Lb3/f;

.field public final b:Lb3/f$a;


# direct methods
.method public constructor <init>(Lb3/f;Lb3/f$a;)V
    .registers 4

    const-string v0, "left"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb3/c;->a:Lb3/f;

    iput-object p2, p0, Lb3/c;->b:Lb3/f$a;

    return-void
.end method

.method private final writeReplace()Ljava/lang/Object;
    .registers 6

    invoke-virtual {p0}, Lb3/c;->c()I

    move-result v0

    new-array v1, v0, [Lb3/f;

    new-instance v2, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    sget-object v3, Ly2/p;->a:Ly2/p;

    new-instance v4, Lb3/c$c;

    invoke-direct {v4, v1, v2}, Lb3/c$c;-><init>([Lb3/f;Lkotlin/jvm/internal/Ref$IntRef;)V

    invoke-virtual {p0, v3, v4}, Lb3/c;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    iget p0, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-ne p0, v0, :cond_1b

    const/4 p0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    if-eqz p0, :cond_24

    new-instance p0, Lb3/c$a;

    invoke-direct {p0, v1}, Lb3/c$a;-><init>([Lb3/f;)V

    return-object p0

    :cond_24
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final c()I
    .registers 3

    const/4 v0, 0x2

    :goto_1
    iget-object p0, p0, Lb3/c;->a:Lb3/f;

    instance-of v1, p0, Lb3/c;

    if-eqz v1, :cond_a

    check-cast p0, Lb3/c;

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    if-nez p0, :cond_e

    return v0

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-eq p0, p1, :cond_41

    instance-of v1, p1, Lb3/c;

    if-eqz v1, :cond_42

    check-cast p1, Lb3/c;

    invoke-virtual {p1}, Lb3/c;->c()I

    move-result v1

    invoke-virtual {p0}, Lb3/c;->c()I

    move-result v2

    if-ne v1, v2, :cond_42

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_16
    iget-object v1, p0, Lb3/c;->b:Lb3/f$a;

    invoke-interface {v1}, Lb3/f$a;->getKey()Lb3/f$b;

    move-result-object v2

    invoke-virtual {p1, v2}, Lb3/c;->get(Lb3/f$b;)Lb3/f$a;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    move p0, v0

    goto :goto_3f

    :cond_28
    iget-object p0, p0, Lb3/c;->a:Lb3/f;

    instance-of v1, p0, Lb3/c;

    if-eqz v1, :cond_31

    check-cast p0, Lb3/c;

    goto :goto_16

    :cond_31
    check-cast p0, Lb3/f$a;

    invoke-interface {p0}, Lb3/f$a;->getKey()Lb3/f$b;

    move-result-object v1

    invoke-virtual {p1, v1}, Lb3/c;->get(Lb3/f$b;)Lb3/f$a;

    move-result-object p1

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    :goto_3f
    if-eqz p0, :cond_42

    :cond_41
    const/4 v0, 0x1

    :cond_42
    return v0
.end method

.method public fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lkotlin/jvm/functions/Function2<",
            "-TR;-",
            "Lb3/f$a;",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "operation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lb3/c;->a:Lb3/f;

    invoke-interface {v0, p1, p2}, Lb3/f;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lb3/c;->b:Lb3/f$a;

    invoke-interface {p2, p1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public get(Lb3/f$b;)Lb3/f$a;
    .registers 3
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

    :goto_5
    iget-object v0, p0, Lb3/c;->b:Lb3/f$a;

    invoke-interface {v0, p1}, Lb3/f$a;->get(Lb3/f$b;)Lb3/f$a;

    move-result-object v0

    if-eqz v0, :cond_e

    return-object v0

    :cond_e
    iget-object p0, p0, Lb3/c;->a:Lb3/f;

    instance-of v0, p0, Lb3/c;

    if-eqz v0, :cond_17

    check-cast p0, Lb3/c;

    goto :goto_5

    :cond_17
    invoke-interface {p0, p1}, Lb3/f;->get(Lb3/f$b;)Lb3/f$a;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lb3/c;->a:Lb3/f;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object p0, p0, Lb3/c;->b:Lb3/f$a;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public minusKey(Lb3/f$b;)Lb3/f;
    .registers 3
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

    iget-object v0, p0, Lb3/c;->b:Lb3/f$a;

    invoke-interface {v0, p1}, Lb3/f$a;->get(Lb3/f$b;)Lb3/f$a;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object p0, p0, Lb3/c;->a:Lb3/f;

    return-object p0

    :cond_10
    iget-object v0, p0, Lb3/c;->a:Lb3/f;

    invoke-interface {v0, p1}, Lb3/f;->minusKey(Lb3/f$b;)Lb3/f;

    move-result-object p1

    iget-object v0, p0, Lb3/c;->a:Lb3/f;

    if-ne p1, v0, :cond_1b

    goto :goto_2a

    :cond_1b
    sget-object v0, Lb3/h;->a:Lb3/h;

    if-ne p1, v0, :cond_22

    iget-object p0, p0, Lb3/c;->b:Lb3/f$a;

    goto :goto_2a

    :cond_22
    new-instance v0, Lb3/c;

    iget-object p0, p0, Lb3/c;->b:Lb3/f$a;

    invoke-direct {v0, p1, p0}, Lb3/c;-><init>(Lb3/f;Lb3/f$a;)V

    move-object p0, v0

    :goto_2a
    return-object p0
.end method

.method public plus(Lb3/f;)Lb3/f;
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lb3/h;->a:Lb3/h;

    if-ne p1, v0, :cond_a

    goto :goto_12

    :cond_a
    sget-object v0, Lb3/g;->a:Lb3/g;

    invoke-interface {p1, p0, v0}, Lb3/f;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb3/f;

    :goto_12
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/16 v0, 0x5b

    invoke-static {v0}, Landroidx/emoji2/text/flatbuffer/a;->a(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lb3/c$b;->a:Lb3/c$b;

    const-string v2, ""

    invoke-virtual {p0, v2, v1}, Lb3/c;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
