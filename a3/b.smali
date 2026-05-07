.class public final La3/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;
.implements Lkotlin/jvm/internal/markers/KMutableMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La3/b$c;,
        La3/b$d;,
        La3/b$e;,
        La3/b$a;,
        La3/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "TK;TV;>;",
        "Ljava/io/Serializable;",
        "Lkotlin/jvm/internal/markers/KMutableMap;"
    }
.end annotation


# instance fields
.field public a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field public b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field

.field public c:[I

.field public d:[I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:La3/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La3/c;"
        }
    .end annotation
.end field

.field public j:La3/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La3/d<",
            "TV;>;"
        }
    .end annotation
.end field

.field public k:La3/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La3/c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public l:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x8

    invoke-direct {p0, v0}, La3/b;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 8

    invoke-static {p1}, Li1/i;->b(I)[Ljava/lang/Object;

    move-result-object v0

    new-array v1, p1, [I

    const/4 v2, 0x1

    if-ge p1, v2, :cond_a

    move p1, v2

    :cond_a
    mul-int/lit8 p1, p1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    new-array v3, p1, [I

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, La3/b;->a:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, La3/b;->b:[Ljava/lang/Object;

    iput-object v1, p0, La3/b;->c:[I

    iput-object v3, p0, La3/b;->d:[I

    iput v4, p0, La3/b;->e:I

    iput v5, p0, La3/b;->f:I

    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    add-int/2addr p1, v2

    iput p1, p0, La3/b;->g:I

    return-void
.end method

.method private final writeReplace()Ljava/lang/Object;
    .registers 2

    iget-boolean v0, p0, La3/b;->l:Z

    if-eqz v0, :cond_a

    new-instance v0, La3/f;

    invoke-direct {v0, p0}, La3/f;-><init>(Ljava/util/Map;)V

    return-object v0

    :cond_a
    new-instance p0, Ljava/io/NotSerializableException;

    const-string v0, "The map cannot be serialized while it is being built."

    invoke-direct {p0, v0}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    invoke-virtual {p0}, La3/b;->d()V

    :goto_3
    invoke-virtual {p0, p1}, La3/b;->j(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, La3/b;->e:I

    mul-int/lit8 v1, v1, 0x2

    iget-object v2, p0, La3/b;->d:[I

    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_13

    move v1, v2

    :cond_13
    const/4 v2, 0x0

    :goto_14
    iget-object v3, p0, La3/b;->d:[I

    aget v4, v3, v0

    const/4 v5, 0x1

    if-gtz v4, :cond_3e

    iget v1, p0, La3/b;->f:I

    iget-object v4, p0, La3/b;->a:[Ljava/lang/Object;

    array-length v6, v4

    if-lt v1, v6, :cond_26

    invoke-virtual {p0, v5}, La3/b;->g(I)V

    goto :goto_3

    :cond_26
    add-int/lit8 v6, v1, 0x1

    iput v6, p0, La3/b;->f:I

    aput-object p1, v4, v1

    iget-object p1, p0, La3/b;->c:[I

    aput v0, p1, v1

    aput v6, v3, v0

    iget p1, p0, La3/b;->h:I

    add-int/2addr p1, v5

    iput p1, p0, La3/b;->h:I

    iget p1, p0, La3/b;->e:I

    if-le v2, p1, :cond_3d

    iput v2, p0, La3/b;->e:I

    :cond_3d
    return v1

    :cond_3e
    iget-object v3, p0, La3/b;->a:[Ljava/lang/Object;

    add-int/lit8 v6, v4, -0x1

    aget-object v3, v3, v6

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    neg-int p0, v4

    return p0

    :cond_4c
    add-int/lit8 v2, v2, 0x1

    if-le v2, v1, :cond_59

    iget-object v0, p0, La3/b;->d:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, La3/b;->k(I)V

    goto :goto_3

    :cond_59
    add-int/lit8 v3, v0, -0x1

    if-nez v0, :cond_62

    iget-object v0, p0, La3/b;->d:[I

    array-length v0, v0

    sub-int/2addr v0, v5

    goto :goto_14

    :cond_62
    move v0, v3

    goto :goto_14
.end method

.method public final c()[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TV;"
        }
    .end annotation

    iget-object v0, p0, La3/b;->b:[Ljava/lang/Object;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    iget-object v0, p0, La3/b;->a:[Ljava/lang/Object;

    array-length v0, v0

    invoke-static {v0}, Li1/i;->b(I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, La3/b;->b:[Ljava/lang/Object;

    return-object v0
.end method

.method public clear()V
    .registers 7

    invoke-virtual {p0}, La3/b;->d()V

    iget v0, p0, La3/b;->f:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    if-ltz v0, :cond_1d

    move v2, v1

    :goto_b
    iget-object v3, p0, La3/b;->c:[I

    aget v4, v3, v2

    if-ltz v4, :cond_18

    iget-object v5, p0, La3/b;->d:[I

    aput v1, v5, v4

    const/4 v4, -0x1

    aput v4, v3, v2

    :cond_18
    if-eq v2, v0, :cond_1d

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1d
    iget-object v0, p0, La3/b;->a:[Ljava/lang/Object;

    iget v2, p0, La3/b;->f:I

    invoke-static {v0, v1, v2}, Li1/i;->k([Ljava/lang/Object;II)V

    iget-object v0, p0, La3/b;->b:[Ljava/lang/Object;

    if-eqz v0, :cond_2d

    iget v2, p0, La3/b;->f:I

    invoke-static {v0, v1, v2}, Li1/i;->k([Ljava/lang/Object;II)V

    :cond_2d
    iput v1, p0, La3/b;->h:I

    iput v1, p0, La3/b;->f:I

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 2

    invoke-virtual {p0, p1}, La3/b;->h(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 2

    invoke-virtual {p0, p1}, La3/b;->i(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public final d()V
    .registers 1

    iget-boolean p0, p0, La3/b;->l:Z

    if-nez p0, :cond_5

    return-void

    :cond_5
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final e(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    :try_start_16
    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {p0, v0}, La3/b;->f(Ljava/util/Map$Entry;)Z

    move-result v0
    :try_end_1c
    .catch Ljava/lang/ClassCastException; {:try_start_16 .. :try_end_1c} :catch_1f

    if-nez v0, :cond_9

    nop

    :catch_1f
    :cond_1f
    return v1

    :cond_20
    const/4 p0, 0x1

    return p0
.end method

.method public final entrySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, La3/b;->k:La3/c;

    if-nez v0, :cond_c

    new-instance v0, La3/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, La3/c;-><init>(La3/b;I)V

    iput-object v0, p0, La3/b;->k:La3/c;

    :cond_c
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, p0, :cond_21

    instance-of v2, p1, Ljava/util/Map;

    if-eqz v2, :cond_22

    check-cast p1, Ljava/util/Map;

    iget v2, p0, La3/b;->h:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-ne v2, v3, :cond_1e

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, La3/b;->e(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_1e

    move p0, v1

    goto :goto_1f

    :cond_1e
    move p0, v0

    :goto_1f
    if-eqz p0, :cond_22

    :cond_21
    move v0, v1

    :cond_22
    return v0
.end method

.method public final f(Ljava/util/Map$Entry;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)Z"
        }
    .end annotation

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, La3/b;->h(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_11

    const/4 p0, 0x0

    return p0

    :cond_11
    iget-object p0, p0, La3/b;->b:[Ljava/lang/Object;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object p0, p0, v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final g(I)V
    .registers 5

    iget v0, p0, La3/b;->f:I

    add-int/2addr p1, v0

    if-ltz p1, :cond_53

    iget-object v1, p0, La3/b;->a:[Ljava/lang/Object;

    array-length v2, v1

    if-le p1, v2, :cond_45

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_12

    goto :goto_13

    :cond_12
    move p1, v0

    :goto_13
    invoke-static {v1, p1}, Li1/i;->d([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, La3/b;->a:[Ljava/lang/Object;

    iget-object v0, p0, La3/b;->b:[Ljava/lang/Object;

    if-eqz v0, :cond_22

    invoke-static {v0, p1}, Li1/i;->d([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    iput-object v0, p0, La3/b;->b:[Ljava/lang/Object;

    iget-object v0, p0, La3/b;->c:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    const-string v1, "copyOf(this, newSize)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, La3/b;->c:[I

    const/4 v0, 0x1

    if-ge p1, v0, :cond_36

    move p1, v0

    :cond_36
    mul-int/lit8 p1, p1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    iget-object v0, p0, La3/b;->d:[I

    array-length v0, v0

    if-le p1, v0, :cond_52

    invoke-virtual {p0, p1}, La3/b;->k(I)V

    goto :goto_52

    :cond_45
    add-int/2addr v0, p1

    iget p1, p0, La3/b;->h:I

    sub-int/2addr v0, p1

    array-length p1, v1

    if-le v0, p1, :cond_52

    iget-object p1, p0, La3/b;->d:[I

    array-length p1, p1

    invoke-virtual {p0, p1}, La3/b;->k(I)V

    :cond_52
    :goto_52
    return-void

    :cond_53
    new-instance p0, Ljava/lang/OutOfMemoryError;

    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, La3/b;->h(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    iget-object p0, p0, La3/b;->b:[Ljava/lang/Object;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final h(Ljava/lang/Object;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    invoke-virtual {p0, p1}, La3/b;->j(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, La3/b;->e:I

    :goto_6
    iget-object v2, p0, La3/b;->d:[I

    aget v2, v2, v0

    const/4 v3, -0x1

    if-nez v2, :cond_e

    return v3

    :cond_e
    if-lez v2, :cond_1d

    iget-object v4, p0, La3/b;->a:[Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    aget-object v4, v4, v2

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    return v2

    :cond_1d
    add-int/2addr v1, v3

    if-gez v1, :cond_21

    return v3

    :cond_21
    add-int/lit8 v2, v0, -0x1

    if-nez v0, :cond_2b

    iget-object v0, p0, La3/b;->d:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_2b
    move v0, v2

    goto :goto_6
.end method

.method public hashCode()I
    .registers 6

    new-instance v0, La3/b$a;

    invoke-direct {v0, p0}, La3/b$a;-><init>(La3/b;)V

    const/4 p0, 0x0

    move v1, p0

    :goto_7
    invoke-virtual {v0}, La3/b$c;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    iget v2, v0, La3/b$c;->b:I

    iget-object v3, v0, La3/b$c;->a:La3/b;

    iget v4, v3, La3/b;->f:I

    if-ge v2, v4, :cond_40

    add-int/lit8 v4, v2, 0x1

    iput v4, v0, La3/b$c;->b:I

    iput v2, v0, La3/b$c;->c:I

    iget-object v3, v3, La3/b;->a:[Ljava/lang/Object;

    aget-object v2, v3, v2

    if-eqz v2, :cond_26

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_27

    :cond_26
    move v2, p0

    :goto_27
    iget-object v3, v0, La3/b$c;->a:La3/b;

    iget-object v3, v3, La3/b;->b:[Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v4, v0, La3/b$c;->c:I

    aget-object v3, v3, v4

    if-eqz v3, :cond_39

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_3a

    :cond_39
    move v3, p0

    :goto_3a
    xor-int/2addr v2, v3

    invoke-virtual {v0}, La3/b$c;->a()V

    add-int/2addr v1, v2

    goto :goto_7

    :cond_40
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_46
    return v1
.end method

.method public final i(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    iget v0, p0, La3/b;->f:I

    :cond_2
    const/4 v1, -0x1

    add-int/2addr v0, v1

    if-ltz v0, :cond_1a

    iget-object v1, p0, La3/b;->c:[I

    aget v1, v1, v0

    if-ltz v1, :cond_2

    iget-object v1, p0, La3/b;->b:[Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v1, v1, v0

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_1a
    return v1
.end method

.method public isEmpty()Z
    .registers 1

    iget p0, p0, La3/b;->h:I

    if-nez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public final j(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    const v0, -0x61c88647

    mul-int/2addr p1, v0

    iget p0, p0, La3/b;->g:I

    ushr-int p0, p1, p0

    return p0
.end method

.method public final k(I)V
    .registers 9

    iget v0, p0, La3/b;->f:I

    iget v1, p0, La3/b;->h:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_34

    iget-object v0, p0, La3/b;->b:[Ljava/lang/Object;

    move v1, v2

    move v3, v1

    :goto_b
    iget v4, p0, La3/b;->f:I

    if-ge v1, v4, :cond_26

    iget-object v4, p0, La3/b;->c:[I

    aget v4, v4, v1

    if-ltz v4, :cond_23

    iget-object v4, p0, La3/b;->a:[Ljava/lang/Object;

    aget-object v5, v4, v1

    aput-object v5, v4, v3

    if-eqz v0, :cond_21

    aget-object v4, v0, v1

    aput-object v4, v0, v3

    :cond_21
    add-int/lit8 v3, v3, 0x1

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_26
    iget-object v1, p0, La3/b;->a:[Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Li1/i;->k([Ljava/lang/Object;II)V

    if-eqz v0, :cond_32

    iget v1, p0, La3/b;->f:I

    invoke-static {v0, v3, v1}, Li1/i;->k([Ljava/lang/Object;II)V

    :cond_32
    iput v3, p0, La3/b;->f:I

    :cond_34
    iget-object v0, p0, La3/b;->d:[I

    array-length v1, v0

    const/4 v3, 0x1

    if-eq p1, v1, :cond_46

    new-array v0, p1, [I

    iput-object v0, p0, La3/b;->d:[I

    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    add-int/2addr p1, v3

    iput p1, p0, La3/b;->g:I

    goto :goto_4f

    :cond_46
    array-length p1, v0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2, p1, v2}, Ljava/util/Arrays;->fill([IIII)V

    :goto_4f
    move p1, v2

    :goto_50
    iget v0, p0, La3/b;->f:I

    if-ge p1, v0, :cond_88

    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, La3/b;->a:[Ljava/lang/Object;

    aget-object v1, v1, p1

    invoke-virtual {p0, v1}, La3/b;->j(Ljava/lang/Object;)I

    move-result v1

    iget v4, p0, La3/b;->e:I

    :goto_60
    iget-object v5, p0, La3/b;->d:[I

    aget v6, v5, v1

    if-nez v6, :cond_6e

    aput v0, v5, v1

    iget-object v4, p0, La3/b;->c:[I

    aput v1, v4, p1

    move p1, v3

    goto :goto_73

    :cond_6e
    add-int/lit8 v4, v4, -0x1

    if-gez v4, :cond_7f

    move p1, v2

    :goto_73
    if-eqz p1, :cond_77

    move p1, v0

    goto :goto_50

    :cond_77
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This cannot happen with fixed magic multiplier and grow-only hash array. Have object hashCodes changed?"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7f
    add-int/lit8 v6, v1, -0x1

    if-nez v1, :cond_86

    array-length v1, v5

    sub-int/2addr v1, v3

    goto :goto_60

    :cond_86
    move v1, v6

    goto :goto_60

    :cond_88
    return-void
.end method

.method public final keySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, La3/b;->i:La3/c;

    if-nez v0, :cond_c

    new-instance v0, La3/c;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, La3/c;-><init>(La3/b;I)V

    iput-object v0, p0, La3/b;->i:La3/c;

    :cond_c
    return-object v0
.end method

.method public final l(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    invoke-virtual {p0}, La3/b;->d()V

    invoke-virtual {p0, p1}, La3/b;->h(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_b

    const/4 p0, -0x1

    return p0

    :cond_b
    invoke-virtual {p0, p1}, La3/b;->m(I)V

    return p1
.end method

.method public final m(I)V
    .registers 13

    iget-object v0, p0, La3/b;->a:[Ljava/lang/Object;

    invoke-static {v0, p1}, Li1/i;->j([Ljava/lang/Object;I)V

    iget-object v0, p0, La3/b;->c:[I

    aget v0, v0, p1

    iget v1, p0, La3/b;->e:I

    mul-int/lit8 v1, v1, 0x2

    iget-object v2, p0, La3/b;->d:[I

    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_15

    move v1, v2

    :cond_15
    const/4 v2, 0x0

    move v3, v1

    move v4, v2

    move v1, v0

    :cond_19
    add-int/lit8 v5, v0, -0x1

    const/4 v6, -0x1

    if-nez v0, :cond_23

    iget-object v0, p0, La3/b;->d:[I

    array-length v0, v0

    add-int/2addr v0, v6

    goto :goto_24

    :cond_23
    move v0, v5

    :goto_24
    add-int/lit8 v4, v4, 0x1

    iget v5, p0, La3/b;->e:I

    if-le v4, v5, :cond_2f

    iget-object v0, p0, La3/b;->d:[I

    aput v2, v0, v1

    goto :goto_5e

    :cond_2f
    iget-object v5, p0, La3/b;->d:[I

    aget v7, v5, v0

    if-nez v7, :cond_38

    aput v2, v5, v1

    goto :goto_5e

    :cond_38
    if-gez v7, :cond_3d

    aput v6, v5, v1

    goto :goto_55

    :cond_3d
    iget-object v5, p0, La3/b;->a:[Ljava/lang/Object;

    add-int/lit8 v8, v7, -0x1

    aget-object v5, v5, v8

    invoke-virtual {p0, v5}, La3/b;->j(Ljava/lang/Object;)I

    move-result v5

    sub-int/2addr v5, v0

    iget-object v9, p0, La3/b;->d:[I

    array-length v10, v9

    add-int/2addr v10, v6

    and-int/2addr v5, v10

    if-lt v5, v4, :cond_57

    aput v7, v9, v1

    iget-object v4, p0, La3/b;->c:[I

    aput v1, v4, v8

    :goto_55
    move v1, v0

    move v4, v2

    :cond_57
    add-int/2addr v3, v6

    if-gez v3, :cond_19

    iget-object v0, p0, La3/b;->d:[I

    aput v6, v0, v1

    :goto_5e
    iget-object v0, p0, La3/b;->c:[I

    aput v6, v0, p1

    iget p1, p0, La3/b;->h:I

    add-int/2addr p1, v6

    iput p1, p0, La3/b;->h:I

    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    invoke-virtual {p0}, La3/b;->d()V

    invoke-virtual {p0, p1}, La3/b;->a(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0}, La3/b;->c()[Ljava/lang/Object;

    move-result-object p0

    if-gez p1, :cond_15

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x1

    aget-object v0, p0, p1

    aput-object p2, p0, p1

    return-object v0

    :cond_15
    aput-object p2, p0, p1

    const/4 p0, 0x0

    return-object p0
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, La3/b;->d()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_55

    :cond_13
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {p0, v0}, La3/b;->g(I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1e
    :goto_1e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, La3/b;->a(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0}, La3/b;->c()[Ljava/lang/Object;

    move-result-object v2

    if-ltz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v1

    goto :goto_1e

    :cond_3f
    neg-int v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v3, v2, v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v1

    goto :goto_1e

    :cond_55
    :goto_55
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, La3/b;->l(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    iget-object p0, p0, La3/b;->b:[Ljava/lang/Object;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v0, p0, p1

    invoke-static {p0, p1}, Li1/i;->j([Ljava/lang/Object;I)V

    return-object v0
.end method

.method public final size()I
    .registers 1

    iget p0, p0, La3/b;->h:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, La3/b;->h:I

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    new-instance v2, La3/b$a;

    invoke-direct {v2, p0}, La3/b$a;-><init>(La3/b;)V

    :goto_16
    invoke-virtual {v2}, La3/b$c;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_74

    if-lez v1, :cond_23

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    const-string p0, "sb"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, v2, La3/b$c;->b:I

    iget-object v3, v2, La3/b$c;->a:La3/b;

    iget v4, v3, La3/b;->f:I

    if-ge p0, v4, :cond_6e

    add-int/lit8 v4, p0, 0x1

    iput v4, v2, La3/b$c;->b:I

    iput p0, v2, La3/b$c;->c:I

    iget-object v4, v3, La3/b;->a:[Ljava/lang/Object;

    aget-object p0, v4, p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "(this Map)"

    if-eqz v3, :cond_46

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_49

    :cond_46
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_49
    const/16 p0, 0x3d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, v2, La3/b$c;->a:La3/b;

    iget-object p0, p0, La3/b;->b:[Ljava/lang/Object;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v3, v2, La3/b$c;->c:I

    aget-object p0, p0, v3

    iget-object v3, v2, La3/b$c;->a:La3/b;

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_65

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_68

    :cond_65
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_68
    invoke-virtual {v2}, La3/b$c;->a()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_6e
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_74
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "sb.toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, La3/b;->j:La3/d;

    if-nez v0, :cond_b

    new-instance v0, La3/d;

    invoke-direct {v0, p0}, La3/d;-><init>(La3/b;)V

    iput-object v0, p0, La3/b;->j:La3/d;

    :cond_b
    return-object v0
.end method
