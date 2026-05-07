.class public Lp3/k;
.super Lp3/h;
.source ""


# direct methods
.method public static final A(Ljava/lang/CharSequence;Lm3/d;)Ljava/lang/String;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "range"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lm3/d;->c()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lm3/d;->a()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-interface {p0, v0, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_6

    move-object p2, p0

    goto :goto_7

    :cond_6
    const/4 p2, 0x0

    :goto_7
    const-string p3, "<this>"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "delimiter"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "missingDelimiterValue"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    const/4 v0, 0x6

    invoke-static {p0, p1, p3, p3, v0}, Lp3/k;->u(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result p3

    const/4 v0, -0x1

    if-ne p3, v0, :cond_20

    goto :goto_32

    :cond_20
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, p3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string p0, "this as java.lang.String…ing(startIndex, endIndex)"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_32
    return-object p2
.end method

.method public static C(Ljava/lang/String;CLjava/lang/String;I)Ljava/lang/String;
    .registers 5

    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_6

    move-object p2, p0

    goto :goto_7

    :cond_6
    const/4 p2, 0x0

    :goto_7
    const-string p3, "<this>"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "missingDelimiterValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lp3/k;->p(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, -0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result p1

    if-ne p1, p3, :cond_20

    goto :goto_2f

    :cond_20
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string p0, "this as java.lang.String…ing(startIndex, endIndex)"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2f
    return-object p2
.end method

.method public static o(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z
    .registers 13

    const/4 v0, 0x2

    and-int/2addr p3, v0

    const/4 v1, 0x0

    if-eqz p3, :cond_7

    move v6, v1

    goto :goto_8

    :cond_7
    move v6, p2

    :goto_8
    const-string p2, "<this>"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "other"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p2, p1, Ljava/lang/String;

    const/4 p3, 0x1

    if-eqz p2, :cond_20

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1, v1, v6, v0}, Lp3/k;->u(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result p0

    if-ltz p0, :cond_31

    goto :goto_30

    :cond_20
    const/4 v4, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v7, 0x0

    const/16 v8, 0x10

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v2 .. v8}, Lp3/k;->s(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZI)I

    move-result p0

    if-ltz p0, :cond_31

    :goto_30
    move v1, p3

    :cond_31
    return v1
.end method

.method public static final p(Ljava/lang/CharSequence;)I
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static final q(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I
    .registers 11

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_18

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_11

    goto :goto_18

    :cond_11
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    goto :goto_27

    :cond_18
    :goto_18
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v5, 0x0

    const/16 v6, 0x10

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Lp3/k;->s(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZI)I

    move-result p0

    :goto_27
    return p0
.end method

.method public static final r(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZ)I
    .registers 13

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-nez p5, :cond_14

    new-instance p5, Lm3/d;

    if-gez p2, :cond_9

    move p2, v1

    :cond_9
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le p3, v1, :cond_10

    move p3, v1

    :cond_10
    invoke-direct {p5, p2, p3}, Lm3/d;-><init>(II)V

    goto :goto_23

    :cond_14
    invoke-static {p0}, Lp3/k;->p(Ljava/lang/CharSequence;)I

    move-result p5

    if-le p2, p5, :cond_1b

    move p2, p5

    :cond_1b
    if-gez p3, :cond_1e

    move p3, v1

    :cond_1e
    new-instance p5, Lm3/b;

    invoke-direct {p5, p2, p3, v0}, Lm3/b;-><init>(III)V

    :goto_23
    instance-of p2, p0, Ljava/lang/String;

    if-eqz p2, :cond_51

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_51

    iget p2, p5, Lm3/b;->a:I

    iget p3, p5, Lm3/b;->b:I

    iget p5, p5, Lm3/b;->c:I

    if-lez p5, :cond_35

    if-le p2, p3, :cond_39

    :cond_35
    if-gez p5, :cond_73

    if-gt p3, p2, :cond_73

    :cond_39
    :goto_39
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    move-object v3, p0

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move v4, p2

    move v6, p4

    invoke-static/range {v1 .. v6}, Lp3/h;->k(Ljava/lang/String;ILjava/lang/String;IIZ)Z

    move-result v1

    if-eqz v1, :cond_4d

    return p2

    :cond_4d
    if-eq p2, p3, :cond_73

    add-int/2addr p2, p5

    goto :goto_39

    :cond_51
    iget p2, p5, Lm3/b;->a:I

    iget p3, p5, Lm3/b;->b:I

    iget p5, p5, Lm3/b;->c:I

    if-lez p5, :cond_5b

    if-le p2, p3, :cond_5f

    :cond_5b
    if-gez p5, :cond_73

    if-gt p3, p2, :cond_73

    :cond_5f
    :goto_5f
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v1, p1

    move-object v3, p0

    move v4, p2

    move v6, p4

    invoke-static/range {v1 .. v6}, Lp3/k;->x(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z

    move-result v1

    if-eqz v1, :cond_6f

    return p2

    :cond_6f
    if-eq p2, p3, :cond_73

    add-int/2addr p2, p5

    goto :goto_5f

    :cond_73
    return v0
.end method

.method public static synthetic s(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZI)I
    .registers 13

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_5

    const/4 p5, 0x0

    :cond_5
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lp3/k;->r(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZ)I

    move-result p0

    return p0
.end method

.method public static t(Ljava/lang/CharSequence;CIZI)I
    .registers 10

    and-int/lit8 v0, p4, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    move p2, v1

    :cond_6
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_b

    move p3, v1

    :cond_b
    const-string p4, "<this>"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_1e

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_17

    goto :goto_1e

    :cond_17
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    goto :goto_64

    :cond_1e
    :goto_1e
    const/4 v0, 0x1

    new-array v2, v0, [C

    aput-char p1, v2, v1

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "chars"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_3c

    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_3c

    invoke-static {v2}, Lz2/h;->s([C)C

    move-result p1

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    goto :goto_64

    :cond_3c
    if-gez p2, :cond_3f

    move p2, v1

    :cond_3f
    invoke-static {p0}, Lp3/k;->p(Ljava/lang/CharSequence;)I

    move-result p1

    if-gt p2, p1, :cond_63

    :goto_45
    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p4

    move v3, v1

    :goto_4a
    if-ge v3, v0, :cond_59

    aget-char v4, v2, v3

    invoke-static {v4, p4, p3}, Li1/i;->e(CCZ)Z

    move-result v4

    if-eqz v4, :cond_56

    move p4, v0

    goto :goto_5a

    :cond_56
    add-int/lit8 v3, v3, 0x1

    goto :goto_4a

    :cond_59
    move p4, v1

    :goto_5a
    if-eqz p4, :cond_5e

    move p0, p2

    goto :goto_64

    :cond_5e
    if-eq p2, p1, :cond_63

    add-int/lit8 p2, p2, 0x1

    goto :goto_45

    :cond_63
    const/4 p0, -0x1

    :goto_64
    return p0
.end method

.method public static synthetic u(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I
    .registers 7

    and-int/lit8 v0, p4, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    move p2, v1

    :cond_6
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_b

    move p3, v1

    :cond_b
    invoke-static {p0, p1, p2, p3}, Lp3/k;->q(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result p0

    return p0
.end method

.method public static v(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I
    .registers 11

    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_8

    invoke-static {p0}, Lp3/k;->p(Ljava/lang/CharSequence;)I

    move-result p2

    :cond_8
    move v2, p2

    and-int/lit8 p2, p4, 0x4

    if-eqz p2, :cond_e

    const/4 p3, 0x0

    :cond_e
    move v4, p3

    const-string p2, "<this>"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "string"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v4, :cond_27

    instance-of p2, p0, Ljava/lang/String;

    if-nez p2, :cond_20

    goto :goto_27

    :cond_20
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result p0

    goto :goto_2f

    :cond_27
    :goto_27
    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lp3/k;->r(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZ)I

    move-result p0

    :goto_2f
    return p0
.end method

.method public static w(Ljava/lang/CharSequence;[Ljava/lang/String;IZII)Lo3/e;
    .registers 8

    and-int/lit8 v0, p5, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    move p2, v1

    :cond_6
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_b

    move p3, v1

    :cond_b
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_10

    move p4, v1

    :cond_10
    invoke-static {p4}, Lp3/k;->y(I)V

    invoke-static {p1}, Lz2/h;->f([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance p5, Lp3/b;

    new-instance v0, Lp3/i;

    invoke-direct {v0, p1, p3}, Lp3/i;-><init>(Ljava/util/List;Z)V

    invoke-direct {p5, p0, p2, p4, v0}, Lp3/b;-><init>(Ljava/lang/CharSequence;IILkotlin/jvm/functions/Function2;)V

    return-object p5
.end method

.method public static final x(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z
    .registers 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-ltz p3, :cond_39

    if-ltz p1, :cond_39

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_39

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p4

    if-le p3, v1, :cond_1e

    goto :goto_39

    :cond_1e
    move v1, v0

    :goto_1f
    if-ge v1, p4, :cond_37

    add-int v2, p1, v1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int v3, p3, v1

    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v2, v3, p5}, Li1/i;->e(CCZ)Z

    move-result v2

    if-nez v2, :cond_34

    return v0

    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_37
    const/4 p0, 0x1

    return p0

    :cond_39
    :goto_39
    return v0
.end method

.method public static final y(I)V
    .registers 2

    if-ltz p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_8

    return-void

    :cond_8
    const-string v0, "Limit must be non-negative, but was "

    invoke-static {v0, p0}, Landroid/support/v4/media/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static z(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;
    .registers 13

    and-int/lit8 v0, p4, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    move v5, v1

    goto :goto_8

    :cond_7
    move v5, p2

    :goto_8
    and-int/lit8 p2, p4, 0x4

    if-eqz p2, :cond_e

    move v6, v1

    goto :goto_f

    :cond_e
    move v6, p3

    :goto_f
    const-string p2, "<this>"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "delimiters"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p3, p1

    const/16 p4, 0xa

    const/4 v0, 0x1

    if-ne p3, v0, :cond_82

    aget-object p3, p1, v1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_29

    move v2, v0

    goto :goto_2a

    :cond_29
    move v2, v1

    :goto_2a
    if-nez v2, :cond_82

    invoke-static {v6}, Lp3/k;->y(I)V

    invoke-static {p0, p3, v1, v5}, Lp3/k;->q(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_79

    if-ne v6, v0, :cond_39

    goto :goto_79

    :cond_39
    if-lez v6, :cond_3c

    goto :goto_3d

    :cond_3c
    move v0, v1

    :goto_3d
    new-instance v2, Ljava/util/ArrayList;

    if-eqz v0, :cond_45

    if-le v6, p4, :cond_44

    goto :goto_45

    :cond_44
    move p4, v6

    :cond_45
    :goto_45
    invoke-direct {v2, p4}, Ljava/util/ArrayList;-><init>(I)V

    :cond_48
    invoke-interface {p0, v1, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p4

    add-int v1, p4, p1

    if-eqz v0, :cond_63

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p4, v6, -0x1

    if-eq p1, p4, :cond_69

    :cond_63
    invoke-static {p0, p3, v1, v5}, Lp3/k;->q(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result p1

    if-ne p1, p2, :cond_48

    :cond_69
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-interface {p0, v1, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b3

    :cond_79
    :goto_79
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Li1/j;->k(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_b3

    :cond_82
    const/4 v4, 0x0

    const/4 v7, 0x2

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Lp3/k;->w(Ljava/lang/CharSequence;[Ljava/lang/String;IZII)Lo3/e;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lo3/k;

    invoke-direct {p2, p1}, Lo3/k;-><init>(Lo3/e;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p2, p4}, Lz2/l;->t(Ljava/lang/Iterable;I)I

    move-result p1

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p2}, Lo3/k;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lm3/d;

    invoke-static {p0, p2}, Lp3/k;->A(Ljava/lang/CharSequence;Lm3/d;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9f

    :cond_b3
    :goto_b3
    return-object v2
.end method
