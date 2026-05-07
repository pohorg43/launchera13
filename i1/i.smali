.class public Li1/i;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;
    .registers 3

    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-object v0
.end method

.method public static final b(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)[TE;"
        }
    .end annotation

    if-ltz p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_a

    new-array p0, p0, [Ljava/lang/Object;

    return-object p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "capacity must be non-negative."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final c(I)I
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-gt v1, p0, :cond_9

    const/16 v2, 0x25

    if-ge p0, v2, :cond_9

    const/4 v0, 0x1

    :cond_9
    if-eqz v0, :cond_c

    return p0

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "radix "

    const-string v3, " was not in valid range "

    invoke-static {v2, p0, v3}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    new-instance v2, Lm3/d;

    const/16 v3, 0x24

    invoke-direct {v2, v1, v3}, Lm3/d;-><init>(II)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final d([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "copyOf(this, newSize)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final e(CCZ)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p2, :cond_8

    return v1

    :cond_8
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p0

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    if-eq p0, p1, :cond_1e

    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p0

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    if-ne p0, p1, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v1

    :cond_1e
    :goto_1e
    return v0
.end method

.method public static final f(III)I
    .registers 4

    if-lez p2, :cond_14

    if-lt p0, p1, :cond_5

    goto :goto_28

    :cond_5
    invoke-static {p1, p2}, Li1/i;->i(II)I

    move-result v0

    invoke-static {p0, p2}, Li1/i;->i(II)I

    move-result p0

    sub-int/2addr v0, p0

    invoke-static {v0, p2}, Li1/i;->i(II)I

    move-result p0

    sub-int/2addr p1, p0

    goto :goto_28

    :cond_14
    if-gez p2, :cond_29

    if-gt p0, p1, :cond_19

    goto :goto_28

    :cond_19
    neg-int p2, p2

    invoke-static {p0, p2}, Li1/i;->i(II)I

    move-result p0

    invoke-static {p1, p2}, Li1/i;->i(II)I

    move-result v0

    sub-int/2addr p0, v0

    invoke-static {p0, p2}, Li1/i;->i(II)I

    move-result p0

    add-int/2addr p1, p0

    :goto_28
    return p1

    :cond_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Step is zero."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final g(Lb3/f;Ljava/lang/Throwable;)V
    .registers 5

    :try_start_0
    sget v0, Lq3/c0;->B:I

    sget-object v0, Lq3/c0$a;->a:Lq3/c0$a;

    invoke-interface {p0, v0}, Lb3/f;->get(Lb3/f$b;)Lb3/f$a;

    move-result-object v0

    check-cast v0, Lq3/c0;
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_14

    if-nez v0, :cond_10

    invoke-static {p0, p1}, Lq3/e0;->a(Lb3/f;Ljava/lang/Throwable;)V

    return-void

    :cond_10
    :try_start_10
    invoke-interface {v0, p0, p1}, Lq3/c0;->handleException(Lb3/f;Ljava/lang/Throwable;)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v0

    if-ne p1, v0, :cond_18

    goto :goto_23

    :cond_18
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception while trying to handle coroutine exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v1, p1}, Ll0/b;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    move-object p1, v1

    :goto_23
    invoke-static {p0, p1}, Lq3/e0;->a(Lb3/f;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final h(C)Z
    .registers 2

    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result p0

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

.method public static final i(II)I
    .registers 2

    rem-int/2addr p0, p1

    if-ltz p0, :cond_4

    goto :goto_5

    :cond_4
    add-int/2addr p0, p1

    :goto_5
    return p0
.end method

.method public static final j([Ljava/lang/Object;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;I)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    aput-object v0, p0, p1

    return-void
.end method

.method public static final k([Ljava/lang/Object;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;II)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_5
    if-ge p1, p2, :cond_d

    invoke-static {p0, p1}, Li1/i;->j([Ljava/lang/Object;I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_d
    return-void
.end method
