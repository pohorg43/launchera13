.class public final La3/a;
.super Lz2/d;
.source ""

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La3/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lz2/d<",
        "TE;>;",
        "Ljava/util/List<",
        "TE;>;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;",
        "Lkotlin/jvm/internal/markers/KMutableList;"
    }
.end annotation


# instance fields
.field public a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field public b:I

.field public c:I

.field public d:Z

.field public final e:La3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La3/a<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final f:La3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La3/a<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0xa

    invoke-direct {p0, v0}, La3/a;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-static {p1}, Li1/i;->b(I)[Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0}, Lz2/d;-><init>()V

    iput-object p1, p0, La3/a;->a:[Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, La3/a;->b:I

    iput p1, p0, La3/a;->c:I

    iput-boolean p1, p0, La3/a;->d:Z

    const/4 p1, 0x0

    iput-object p1, p0, La3/a;->e:La3/a;

    iput-object p1, p0, La3/a;->f:La3/a;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;IIZLa3/a;La3/a;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;IIZ",
            "La3/a<",
            "TE;>;",
            "La3/a<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lz2/d;-><init>()V

    iput-object p1, p0, La3/a;->a:[Ljava/lang/Object;

    iput p2, p0, La3/a;->b:I

    iput p3, p0, La3/a;->c:I

    iput-boolean p4, p0, La3/a;->d:Z

    iput-object p5, p0, La3/a;->e:La3/a;

    iput-object p6, p0, La3/a;->f:La3/a;

    return-void
.end method

.method private final writeReplace()Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, La3/a;->f()Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, La3/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, La3/e;-><init>(Ljava/util/Collection;I)V

    return-object v0

    :cond_d
    new-instance p0, Ljava/io/NotSerializableException;

    const-string v0, "The list cannot be serialized while it is being built."

    invoke-direct {p0, v0}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(ILjava/util/Collection;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;I)V"
        }
    .end annotation

    iget-object v0, p0, La3/a;->e:La3/a;

    if-eqz v0, :cond_13

    invoke-virtual {v0, p1, p2, p3}, La3/a;->a(ILjava/util/Collection;I)V

    iget-object p1, p0, La3/a;->e:La3/a;

    iget-object p1, p1, La3/a;->a:[Ljava/lang/Object;

    iput-object p1, p0, La3/a;->a:[Ljava/lang/Object;

    iget p1, p0, La3/a;->c:I

    add-int/2addr p1, p3

    iput p1, p0, La3/a;->c:I

    goto :goto_2a

    :cond_13
    invoke-virtual {p0, p1, p3}, La3/a;->e(II)V

    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1b
    if-ge v0, p3, :cond_2a

    iget-object v1, p0, La3/a;->a:[Ljava/lang/Object;

    add-int v2, p1, v0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_2a
    :goto_2a
    return-void
.end method

.method public add(ILjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    invoke-virtual {p0}, La3/a;->d()V

    sget-object v0, Lz2/c;->Companion:Lz2/c$a;

    iget v1, p0, La3/a;->c:I

    invoke-virtual {v0, p1, v1}, Lz2/c$a;->b(II)V

    iget v0, p0, La3/a;->b:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0, p2}, La3/a;->c(ILjava/lang/Object;)V

    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-virtual {p0}, La3/a;->d()V

    iget v0, p0, La3/a;->b:I

    iget v1, p0, La3/a;->c:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, p1}, La3/a;->c(ILjava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, La3/a;->d()V

    sget-object v0, Lz2/c;->Companion:Lz2/c$a;

    iget v1, p0, La3/a;->c:I

    invoke-virtual {v0, p1, v1}, Lz2/c$a;->b(II)V

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    iget v1, p0, La3/a;->b:I

    add-int/2addr v1, p1

    invoke-virtual {p0, v1, p2, v0}, La3/a;->a(ILjava/util/Collection;I)V

    if-lez v0, :cond_1d

    const/4 p0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    :goto_1e
    return p0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, La3/a;->d()V

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    iget v1, p0, La3/a;->b:I

    iget v2, p0, La3/a;->c:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v1, p1, v0}, La3/a;->a(ILjava/util/Collection;I)V

    if-lez v0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method public final c(ILjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    iget-object v0, p0, La3/a;->e:La3/a;

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    invoke-virtual {v0, p1, p2}, La3/a;->c(ILjava/lang/Object;)V

    iget-object p1, p0, La3/a;->e:La3/a;

    iget-object p1, p1, La3/a;->a:[Ljava/lang/Object;

    iput-object p1, p0, La3/a;->a:[Ljava/lang/Object;

    iget p1, p0, La3/a;->c:I

    add-int/2addr p1, v1

    iput p1, p0, La3/a;->c:I

    goto :goto_1b

    :cond_14
    invoke-virtual {p0, p1, v1}, La3/a;->e(II)V

    iget-object p0, p0, La3/a;->a:[Ljava/lang/Object;

    aput-object p2, p0, p1

    :goto_1b
    return-void
.end method

.method public clear()V
    .registers 3

    invoke-virtual {p0}, La3/a;->d()V

    iget v0, p0, La3/a;->b:I

    iget v1, p0, La3/a;->c:I

    invoke-virtual {p0, v0, v1}, La3/a;->h(II)V

    return-void
.end method

.method public final d()V
    .registers 1

    invoke-virtual {p0}, La3/a;->f()Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final e(II)V
    .registers 8

    iget v0, p0, La3/a;->c:I

    add-int/2addr v0, p2

    iget-object v1, p0, La3/a;->e:La3/a;

    if-nez v1, :cond_43

    if-ltz v0, :cond_3d

    iget-object v1, p0, La3/a;->a:[Ljava/lang/Object;

    array-length v2, v1

    if-le v0, v2, :cond_2b

    array-length v2, v1

    shr-int/lit8 v3, v2, 0x1

    add-int/2addr v2, v3

    sub-int v3, v2, v0

    if-gez v3, :cond_17

    move v2, v0

    :cond_17
    const v3, 0x7ffffff7

    sub-int v4, v2, v3

    if-lez v4, :cond_25

    if-le v0, v3, :cond_24

    const v2, 0x7fffffff

    goto :goto_25

    :cond_24
    move v2, v3

    :cond_25
    :goto_25
    invoke-static {v1, v2}, Li1/i;->d([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, La3/a;->a:[Ljava/lang/Object;

    :cond_2b
    iget-object v0, p0, La3/a;->a:[Ljava/lang/Object;

    iget v1, p0, La3/a;->b:I

    iget v2, p0, La3/a;->c:I

    add-int/2addr v1, v2

    add-int v2, p1, p2

    invoke-static {v0, v0, v2, p1, v1}, Lz2/h;->k([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    iget p1, p0, La3/a;->c:I

    add-int/2addr p1, p2

    iput p1, p0, La3/a;->c:I

    return-void

    :cond_3d
    new-instance p0, Ljava/lang/OutOfMemoryError;

    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p0

    :cond_43
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, p0, :cond_30

    instance-of v2, p1, Ljava/util/List;

    if-eqz v2, :cond_31

    check-cast p1, Ljava/util/List;

    iget-object v2, p0, La3/a;->a:[Ljava/lang/Object;

    iget v3, p0, La3/a;->b:I

    iget p0, p0, La3/a;->c:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-eq p0, v4, :cond_17

    goto :goto_28

    :cond_17
    move v4, v0

    :goto_18
    if-ge v4, p0, :cond_2d

    add-int v5, v3, v4

    aget-object v5, v2, v5

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2a

    :goto_28
    move p0, v0

    goto :goto_2e

    :cond_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_2d
    move p0, v1

    :goto_2e
    if-eqz p0, :cond_31

    :cond_30
    move v0, v1

    :cond_31
    return v0
.end method

.method public final f()Z
    .registers 2

    iget-boolean v0, p0, La3/a;->d:Z

    if-nez v0, :cond_f

    iget-object p0, p0, La3/a;->f:La3/a;

    if-eqz p0, :cond_d

    iget-boolean p0, p0, La3/a;->d:Z

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public final g(I)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, La3/a;->e:La3/a;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, La3/a;->g(I)Ljava/lang/Object;

    move-result-object p1

    iget v0, p0, La3/a;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, La3/a;->c:I

    return-object p1

    :cond_f
    iget-object v0, p0, La3/a;->a:[Ljava/lang/Object;

    aget-object v1, v0, p1

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, La3/a;->b:I

    iget v4, p0, La3/a;->c:I

    add-int/2addr v3, v4

    invoke-static {v0, v0, p1, v2, v3}, Lz2/h;->k([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    iget-object p1, p0, La3/a;->a:[Ljava/lang/Object;

    iget v0, p0, La3/a;->b:I

    iget v2, p0, La3/a;->c:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Li1/i;->j([Ljava/lang/Object;I)V

    iget p1, p0, La3/a;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, La3/a;->c:I

    return-object v1
.end method

.method public get(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    sget-object v0, Lz2/c;->Companion:Lz2/c$a;

    iget v1, p0, La3/a;->c:I

    invoke-virtual {v0, p1, v1}, Lz2/c$a;->a(II)V

    iget-object v0, p0, La3/a;->a:[Ljava/lang/Object;

    iget p0, p0, La3/a;->b:I

    add-int/2addr p0, p1

    aget-object p0, v0, p0

    return-object p0
.end method

.method public final h(II)V
    .registers 6

    iget-object v0, p0, La3/a;->e:La3/a;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1, p2}, La3/a;->h(II)V

    goto :goto_1a

    :cond_8
    iget-object v0, p0, La3/a;->a:[Ljava/lang/Object;

    add-int v1, p1, p2

    iget v2, p0, La3/a;->c:I

    invoke-static {v0, v0, p1, v1, v2}, Lz2/h;->k([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    iget-object p1, p0, La3/a;->a:[Ljava/lang/Object;

    iget v0, p0, La3/a;->c:I

    sub-int v1, v0, p2

    invoke-static {p1, v1, v0}, Li1/i;->k([Ljava/lang/Object;II)V

    :goto_1a
    iget p1, p0, La3/a;->c:I

    sub-int/2addr p1, p2

    iput p1, p0, La3/a;->c:I

    return-void
.end method

.method public hashCode()I
    .registers 7

    iget-object v0, p0, La3/a;->a:[Ljava/lang/Object;

    iget v1, p0, La3/a;->b:I

    iget p0, p0, La3/a;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, v2

    :goto_9
    if-ge v4, p0, :cond_1d

    add-int v5, v1, v4

    aget-object v5, v0, v5

    mul-int/lit8 v3, v3, 0x1f

    if-eqz v5, :cond_18

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    goto :goto_19

    :cond_18
    move v5, v2

    :goto_19
    add-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_1d
    return v3
.end method

.method public final i(IILjava/util/Collection;Z)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Collection<",
            "+TE;>;Z)I"
        }
    .end annotation

    iget-object v0, p0, La3/a;->e:La3/a;

    if-eqz v0, :cond_e

    invoke-virtual {v0, p1, p2, p3, p4}, La3/a;->i(IILjava/util/Collection;Z)I

    move-result p1

    iget p2, p0, La3/a;->c:I

    sub-int/2addr p2, p1

    iput p2, p0, La3/a;->c:I

    return p1

    :cond_e
    const/4 v0, 0x0

    move v1, v0

    :goto_10
    if-ge v0, p2, :cond_2e

    iget-object v2, p0, La3/a;->a:[Ljava/lang/Object;

    add-int v3, p1, v0

    aget-object v2, v2, v3

    invoke-interface {p3, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, p4, :cond_2b

    iget-object v2, p0, La3/a;->a:[Ljava/lang/Object;

    add-int/lit8 v4, v1, 0x1

    add-int/2addr v1, p1

    add-int/lit8 v0, v0, 0x1

    aget-object v3, v2, v3

    aput-object v3, v2, v1

    move v1, v4

    goto :goto_10

    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_2e
    sub-int p3, p2, v1

    iget-object p4, p0, La3/a;->a:[Ljava/lang/Object;

    add-int/2addr p2, p1

    iget v0, p0, La3/a;->c:I

    add-int/2addr p1, v1

    invoke-static {p4, p4, p1, p2, v0}, Lz2/h;->k([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    iget-object p1, p0, La3/a;->a:[Ljava/lang/Object;

    iget p2, p0, La3/a;->c:I

    sub-int p4, p2, p3

    invoke-static {p1, p4, p2}, Li1/i;->k([Ljava/lang/Object;II)V

    iget p1, p0, La3/a;->c:I

    sub-int/2addr p1, p3

    iput p1, p0, La3/a;->c:I

    return p3
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, La3/a;->c:I

    if-ge v0, v1, :cond_16

    iget-object v1, p0, La3/a;->a:[Ljava/lang/Object;

    iget v2, p0, La3/a;->b:I

    add-int/2addr v2, v0

    aget-object v1, v1, v2

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    return v0

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_16
    const/4 p0, -0x1

    return p0
.end method

.method public isEmpty()Z
    .registers 1

    iget p0, p0, La3/a;->c:I

    if-nez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, La3/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, La3/a$a;-><init>(La3/a;I)V

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 5

    iget v0, p0, La3/a;->c:I

    add-int/lit8 v0, v0, -0x1

    :goto_4
    if-ltz v0, :cond_17

    iget-object v1, p0, La3/a;->a:[Ljava/lang/Object;

    iget v2, p0, La3/a;->b:I

    add-int/2addr v2, v0

    aget-object v1, v1, v2

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    return v0

    :cond_14
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_17
    const/4 p0, -0x1

    return p0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, La3/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, La3/a$a;-><init>(La3/a;I)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    sget-object v0, Lz2/c;->Companion:Lz2/c$a;

    iget v1, p0, La3/a;->c:I

    invoke-virtual {v0, p1, v1}, Lz2/c$a;->b(II)V

    new-instance v0, La3/a$a;

    invoke-direct {v0, p0, p1}, La3/a$a;-><init>(La3/a;I)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 2

    invoke-virtual {p0}, La3/a;->d()V

    invoke-virtual {p0, p1}, La3/a;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_c

    invoke-virtual {p0, p1}, Lz2/d;->remove(I)Ljava/lang/Object;

    :cond_c
    if-ltz p1, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, La3/a;->d()V

    iget v0, p0, La3/a;->b:I

    iget v1, p0, La3/a;->c:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, La3/a;->i(IILjava/util/Collection;Z)I

    move-result p0

    if-lez p0, :cond_14

    const/4 v2, 0x1

    :cond_14
    return v2
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, La3/a;->d()V

    iget v0, p0, La3/a;->b:I

    iget v1, p0, La3/a;->c:I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, p1, v2}, La3/a;->i(IILjava/util/Collection;Z)I

    move-result p0

    if-lez p0, :cond_14

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    return v2
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    invoke-virtual {p0}, La3/a;->d()V

    sget-object v0, Lz2/c;->Companion:Lz2/c$a;

    iget v1, p0, La3/a;->c:I

    invoke-virtual {v0, p1, v1}, Lz2/c$a;->a(II)V

    iget-object v0, p0, La3/a;->a:[Ljava/lang/Object;

    iget p0, p0, La3/a;->b:I

    add-int v1, p0, p1

    aget-object v1, v0, v1

    add-int/2addr p0, p1

    aput-object p2, v0, p0

    return-object v1
.end method

.method public subList(II)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    sget-object v0, Lz2/c;->Companion:Lz2/c$a;

    iget v1, p0, La3/a;->c:I

    invoke-virtual {v0, p1, p2, v1}, Lz2/c$a;->c(III)V

    new-instance v0, La3/a;

    iget-object v3, p0, La3/a;->a:[Ljava/lang/Object;

    iget v1, p0, La3/a;->b:I

    add-int v4, v1, p1

    sub-int v5, p2, p1

    iget-boolean v6, p0, La3/a;->d:Z

    iget-object p1, p0, La3/a;->f:La3/a;

    if-nez p1, :cond_19

    move-object v8, p0

    goto :goto_1a

    :cond_19
    move-object v8, p1

    :goto_1a
    move-object v2, v0

    move-object v7, p0

    invoke-direct/range {v2 .. v8}, La3/a;-><init>([Ljava/lang/Object;IIZLa3/a;La3/a;)V

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, La3/a;->a:[Ljava/lang/Object;

    iget v1, p0, La3/a;->b:I

    iget p0, p0, La3/a;->c:I

    add-int/2addr p0, v1

    invoke-static {v0, v1, p0}, Lz2/h;->o([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    iget v1, p0, La3/a;->c:I

    if-ge v0, v1, :cond_1d

    iget-object v0, p0, La3/a;->a:[Ljava/lang/Object;

    iget p0, p0, La3/a;->b:I

    add-int/2addr v1, p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {v0, p0, v1, p1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "copyOfRange(array, offse…h, destination.javaClass)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1d
    iget-object v0, p0, La3/a;->a:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, La3/a;->b:I

    add-int/2addr v1, v3

    invoke-static {v0, p1, v2, v3, v1}, Lz2/h;->k([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    array-length v0, p1

    iget p0, p0, La3/a;->c:I

    if-le v0, p0, :cond_2e

    const/4 v0, 0x0

    aput-object v0, p1, p0

    :cond_2e
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, La3/a;->a:[Ljava/lang/Object;

    iget v1, p0, La3/a;->b:I

    iget p0, p0, La3/a;->c:I

    new-instance v2, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, p0, 0x3

    add-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    :goto_15
    if-ge v3, p0, :cond_28

    if-lez v3, :cond_1e

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1e
    add-int v4, v1, v3

    aget-object v4, v0, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_28
    const-string p0, "]"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "sb.toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
