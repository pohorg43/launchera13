.class public final La3/c;
.super Lz2/e;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final synthetic a:I

.field public final b:La3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La3/b<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(La3/b;I)V
    .registers 5

    iput p2, p0, La3/c;->a:I

    const-string v0, "backing"

    const/4 v1, 0x1

    if-eq p2, v1, :cond_10

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lz2/e;-><init>()V

    iput-object p1, p0, La3/c;->b:La3/b;

    return-void

    :cond_10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lz2/e;-><init>()V

    iput-object p1, p0, La3/c;->b:La3/b;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, La3/c;->a:I

    packed-switch v0, :pswitch_data_10

    goto :goto_b

    :pswitch_6  #0x0
    iget-object p0, p0, La3/c;->b:La3/b;

    iget p0, p0, La3/b;->h:I

    return p0

    :goto_b
    iget-object p0, p0, La3/c;->b:La3/b;

    iget p0, p0, La3/b;->h:I

    return p0

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 2

    iget p0, p0, La3/c;->a:I

    packed-switch p0, :pswitch_data_1a

    goto :goto_13

    :pswitch_6  #0x0
    check-cast p1, Ljava/util/Map$Entry;

    const-string p0, "element"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :goto_13
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 3

    iget p0, p0, La3/c;->a:I

    const-string v0, "elements"

    packed-switch p0, :pswitch_data_1a

    goto :goto_11

    :pswitch_8  #0x0
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :goto_11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_8  #00000000
    .end packed-switch
.end method

.method public clear()V
    .registers 2

    iget v0, p0, La3/c;->a:I

    packed-switch v0, :pswitch_data_12

    goto :goto_c

    :pswitch_6  #0x0
    iget-object p0, p0, La3/c;->b:La3/b;

    invoke-virtual {p0}, La3/b;->clear()V

    return-void

    :goto_c
    iget-object p0, p0, La3/c;->b:La3/b;

    invoke-virtual {p0}, La3/b;->clear()V

    return-void

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 4

    iget v0, p0, La3/c;->a:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_28

    goto :goto_1d

    :pswitch_7  #0x0
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_c

    goto :goto_1c

    :cond_c
    check-cast p1, Ljava/util/Map$Entry;

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, La3/c;->b:La3/b;

    invoke-virtual {p0, p1}, La3/b;->f(Ljava/util/Map$Entry;)Z

    move-result v1

    :goto_1c
    return v1

    :goto_1d
    iget-object p0, p0, La3/c;->b:La3/b;

    invoke-virtual {p0, p1}, La3/b;->h(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_26

    const/4 v1, 0x1

    :cond_26
    return v1

    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_7  #00000000
    .end packed-switch
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3

    iget v0, p0, La3/c;->a:I

    packed-switch v0, :pswitch_data_16

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    return p0

    :pswitch_a  #0x0
    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, La3/c;->b:La3/b;

    invoke-virtual {p0, p1}, La3/b;->e(Ljava/util/Collection;)Z

    move-result p0

    return p0

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_a  #00000000
    .end packed-switch
.end method

.method public isEmpty()Z
    .registers 2

    iget v0, p0, La3/c;->a:I

    packed-switch v0, :pswitch_data_14

    goto :goto_d

    :pswitch_6  #0x0
    iget-object p0, p0, La3/c;->b:La3/b;

    invoke-virtual {p0}, La3/b;->isEmpty()Z

    move-result p0

    return p0

    :goto_d
    iget-object p0, p0, La3/c;->b:La3/b;

    invoke-virtual {p0}, La3/b;->isEmpty()Z

    move-result p0

    return p0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    iget v0, p0, La3/c;->a:I

    packed-switch v0, :pswitch_data_1c

    goto :goto_11

    :pswitch_6  #0x0
    iget-object p0, p0, La3/c;->b:La3/b;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, La3/b$a;

    invoke-direct {v0, p0}, La3/b$a;-><init>(La3/b;)V

    return-object v0

    :goto_11
    iget-object p0, p0, La3/c;->b:La3/b;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, La3/b$d;

    invoke-direct {v0, p0}, La3/b$d;-><init>(La3/b;)V

    return-object v0

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 6

    iget v0, p0, La3/c;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_4e

    goto :goto_43

    :pswitch_8  #0x0
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_d

    goto :goto_3d

    :cond_d
    check-cast p1, Ljava/util/Map$Entry;

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, La3/c;->b:La3/b;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, La3/b;->d()V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, La3/b;->h(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_2c

    goto :goto_3d

    :cond_2c
    iget-object v3, p0, La3/b;->b:[Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v3, v3, v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3f

    :goto_3d
    move v1, v2

    goto :goto_42

    :cond_3f
    invoke-virtual {p0, v0}, La3/b;->m(I)V

    :goto_42
    return v1

    :goto_43
    iget-object p0, p0, La3/c;->b:La3/b;

    invoke-virtual {p0, p1}, La3/b;->l(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_4c

    goto :goto_4d

    :cond_4c
    move v1, v2

    :goto_4d
    return v1

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_8  #00000000
    .end packed-switch
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 4

    iget v0, p0, La3/c;->a:I

    const-string v1, "elements"

    packed-switch v0, :pswitch_data_22

    goto :goto_15

    :pswitch_8  #0x0
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, La3/c;->b:La3/b;

    invoke-virtual {v0}, La3/b;->d()V

    invoke-super {p0, p1}, Ljava/util/AbstractSet;->removeAll(Ljava/util/Collection;)Z

    move-result p0

    return p0

    :goto_15
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, La3/c;->b:La3/b;

    invoke-virtual {v0}, La3/b;->d()V

    invoke-super {p0, p1}, Ljava/util/AbstractSet;->removeAll(Ljava/util/Collection;)Z

    move-result p0

    return p0

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_8  #00000000
    .end packed-switch
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 4

    iget v0, p0, La3/c;->a:I

    const-string v1, "elements"

    packed-switch v0, :pswitch_data_22

    goto :goto_15

    :pswitch_8  #0x0
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, La3/c;->b:La3/b;

    invoke-virtual {v0}, La3/b;->d()V

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->retainAll(Ljava/util/Collection;)Z

    move-result p0

    return p0

    :goto_15
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, La3/c;->b:La3/b;

    invoke-virtual {v0}, La3/b;->d()V

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->retainAll(Ljava/util/Collection;)Z

    move-result p0

    return p0

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_8  #00000000
    .end packed-switch
.end method
