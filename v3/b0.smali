.class public Lv3/b0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lv3/c0;",
        ":",
        "Ljava/lang/Comparable<",
        "-TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private volatile synthetic _size:I

.field public a:[Lv3/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lv3/b0;->_size:I

    return-void
.end method


# virtual methods
.method public final a(Lv3/c0;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lq3/w0$c;

    invoke-virtual {v0, p0}, Lq3/w0$c;->b(Lv3/b0;)V

    iget-object v1, p0, Lv3/b0;->a:[Lv3/c0;

    if-nez v1, :cond_10

    const/4 v1, 0x4

    new-array v1, v1, [Lv3/c0;

    iput-object v1, p0, Lv3/b0;->a:[Lv3/c0;

    goto :goto_26

    :cond_10
    iget v2, p0, Lv3/b0;->_size:I

    array-length v3, v1

    if-lt v2, v3, :cond_26

    iget v2, p0, Lv3/b0;->_size:I

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "copyOf(this, newSize)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, [Lv3/c0;

    iput-object v1, p0, Lv3/b0;->a:[Lv3/c0;

    :cond_26
    :goto_26
    iget v2, p0, Lv3/b0;->_size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lv3/b0;->_size:I

    aput-object p1, v1, v2

    iput v2, v0, Lq3/w0$c;->c:I

    invoke-virtual {p0, v2}, Lv3/b0;->f(I)V

    return-void
.end method

.method public final b()Lv3/c0;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lv3/b0;->a:[Lv3/c0;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_9

    :cond_6
    const/4 v0, 0x0

    aget-object p0, p0, v0

    :goto_9
    return-object p0
.end method

.method public final c()Z
    .registers 1

    iget p0, p0, Lv3/b0;->_size:I

    if-nez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public final d(I)Lv3/c0;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lv3/b0;->a:[Lv3/c0;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, p0, Lv3/b0;->_size:I

    const/4 v2, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lv3/b0;->_size:I

    iget v1, p0, Lv3/b0;->_size:I

    if-ge p1, v1, :cond_72

    iget v1, p0, Lv3/b0;->_size:I

    invoke-virtual {p0, p1, v1}, Lv3/b0;->g(II)V

    add-int/lit8 v1, p1, -0x1

    div-int/lit8 v1, v1, 0x2

    if-lez p1, :cond_33

    aget-object v3, v0, p1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Ljava/lang/Comparable;

    aget-object v4, v0, v1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_33

    invoke-virtual {p0, p1, v1}, Lv3/b0;->g(II)V

    invoke-virtual {p0, v1}, Lv3/b0;->f(I)V

    goto :goto_72

    :cond_33
    :goto_33
    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    iget v3, p0, Lv3/b0;->_size:I

    if-lt v1, v3, :cond_3c

    goto :goto_72

    :cond_3c
    iget-object v3, p0, Lv3/b0;->a:[Lv3/c0;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    add-int/lit8 v4, v1, 0x1

    iget v5, p0, Lv3/b0;->_size:I

    if-ge v4, v5, :cond_5a

    aget-object v5, v3, v4

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v5, Ljava/lang/Comparable;

    aget-object v6, v3, v1

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v5, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_5a

    move v1, v4

    :cond_5a
    aget-object v4, v3, p1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Ljava/lang/Comparable;

    aget-object v3, v3, v1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v4, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_6d

    goto :goto_72

    :cond_6d
    invoke-virtual {p0, p1, v1}, Lv3/b0;->g(II)V

    move p1, v1

    goto :goto_33

    :cond_72
    :goto_72
    iget p1, p0, Lv3/b0;->_size:I

    aget-object p1, v0, p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lv3/c0;->b(Lv3/b0;)V

    invoke-interface {p1, v2}, Lv3/c0;->c(I)V

    iget p0, p0, Lv3/b0;->_size:I

    aput-object v1, v0, p0

    return-object p1
.end method

.method public final e()Lv3/c0;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lv3/b0;->_size:I

    if-lez v0, :cond_b

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lv3/b0;->d(I)Lv3/c0;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_e

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    monitor-exit p0

    return-object v0

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final f(I)V
    .registers 5

    :goto_0
    if-gtz p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lv3/b0;->a:[Lv3/c0;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    add-int/lit8 v1, p1, -0x1

    div-int/lit8 v1, v1, 0x2

    aget-object v2, v0, v1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/Comparable;

    aget-object v0, v0, p1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_1f

    return-void

    :cond_1f
    invoke-virtual {p0, p1, v1}, Lv3/b0;->g(II)V

    move p1, v1

    goto :goto_0
.end method

.method public final g(II)V
    .registers 5

    iget-object p0, p0, Lv3/b0;->a:[Lv3/c0;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v0, p0, p2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v1, p0, p1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aput-object v0, p0, p1

    aput-object v1, p0, p2

    invoke-interface {v0, p1}, Lv3/c0;->c(I)V

    invoke-interface {v1, p2}, Lv3/c0;->c(I)V

    return-void
.end method
