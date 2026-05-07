.class public Lp/d;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(JLb3/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_9

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0

    :cond_9
    new-instance v0, Lq3/l;

    invoke-static {p2}, Lq/d;->l(Lb3/d;)Lb3/d;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lq3/l;-><init>(Lb3/d;I)V

    invoke-virtual {v0}, Lq3/l;->u()V

    const-wide v1, 0x7fffffffffffffffL

    cmp-long v1, p0, v1

    if-gez v1, :cond_28

    iget-object v1, v0, Lq3/l;->e:Lb3/f;

    invoke-static {v1}, Lp/d;->b(Lb3/f;)Lq3/m0;

    move-result-object v1

    invoke-interface {v1, p0, p1, v0}, Lq3/m0;->c(JLq3/k;)V

    :cond_28
    invoke-virtual {v0}, Lq3/l;->t()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lc3/a;->a:Lc3/a;

    if-ne p0, p1, :cond_35

    const-string v0, "frame"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_35
    if-ne p0, p1, :cond_38

    return-object p0

    :cond_38
    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method

.method public static final b(Lb3/f;)Lq3/m0;
    .registers 2

    sget v0, Lb3/e;->A:I

    sget-object v0, Lb3/e$a;->a:Lb3/e$a;

    invoke-interface {p0, v0}, Lb3/f;->get(Lb3/f$b;)Lb3/f$a;

    move-result-object p0

    instance-of v0, p0, Lq3/m0;

    if-eqz v0, :cond_f

    check-cast p0, Lq3/m0;

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    if-nez p0, :cond_14

    sget-object p0, Lq3/j0;->b:Lq3/m0;

    :cond_14
    return-object p0
.end method

.method public static final c(Ljava/lang/String;III)I
    .registers 11

    int-to-long v1, p1

    int-to-long v3, p2

    int-to-long v5, p3

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lp/d;->d(Ljava/lang/String;JJJ)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public static final d(Ljava/lang/String;JJJ)J
    .registers 30

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-wide/from16 v3, p5

    invoke-static/range {p0 .. p0}, Lp/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_10

    move-wide/from16 v5, p1

    goto/16 :goto_a9

    :cond_10
    const-string v6, "<this>"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xa

    invoke-static {v6}, Li1/i;->c(I)I

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v7, :cond_26

    goto :goto_7e

    :cond_26
    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x30

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v11

    const-wide v12, -0x7fffffffffffffffL  # -4.9E-324

    if-gez v11, :cond_49

    if-ne v7, v9, :cond_3a

    goto :goto_7e

    :cond_3a
    const/16 v11, 0x2d

    if-ne v10, v11, :cond_42

    const-wide/high16 v12, -0x8000000000000000L

    move v10, v9

    goto :goto_4a

    :cond_42
    const/16 v11, 0x2b

    if-ne v10, v11, :cond_7e

    move v11, v8

    move v10, v9

    goto :goto_4b

    :cond_49
    move v10, v8

    :goto_4a
    move v11, v10

    :goto_4b
    const-wide/16 v14, 0x0

    const-wide v16, -0x38e38e38e38e38eL  # -2.772000429909333E291

    move-wide/from16 v18, v16

    :goto_54
    if-ge v10, v7, :cond_86

    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8, v6}, Ljava/lang/Character;->digit(II)I

    move-result v8

    if-gez v8, :cond_61

    goto :goto_7e

    :cond_61
    cmp-long v20, v14, v18

    if-gez v20, :cond_73

    cmp-long v18, v18, v16

    if-nez v18, :cond_7e

    move/from16 v20, v10

    int-to-long v9, v6

    div-long v18, v12, v9

    cmp-long v9, v14, v18

    if-gez v9, :cond_75

    goto :goto_7e

    :cond_73
    move/from16 v20, v10

    :cond_75
    int-to-long v9, v6

    mul-long/2addr v14, v9

    int-to-long v8, v8

    add-long v21, v12, v8

    cmp-long v10, v14, v21

    if-gez v10, :cond_80

    :cond_7e
    :goto_7e
    const/4 v6, 0x0

    goto :goto_92

    :cond_80
    sub-long/2addr v14, v8

    add-int/lit8 v10, v20, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto :goto_54

    :cond_86
    if-eqz v11, :cond_8d

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_92

    :cond_8d
    neg-long v6, v14

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    :goto_92
    const/16 v7, 0x27

    const-string v8, "System property \'"

    if-eqz v6, :cond_de

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v9, v1, v5

    if-gtz v9, :cond_a6

    cmp-long v9, v5, v3

    if-gtz v9, :cond_a6

    const/4 v9, 0x1

    goto :goto_a7

    :cond_a6
    const/4 v9, 0x0

    :goto_a7
    if-eqz v9, :cond_aa

    :goto_a9
    return-wide v5

    :cond_aa
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' should be in range "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ".."

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", but is \'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_de
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' has unrecognized value \'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final e(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    sget v0, Lv3/z;->a:I

    :try_start_2
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_6} :catch_7

    goto :goto_8

    :catch_7
    const/4 p0, 0x0

    :goto_8
    return-object p0
.end method

.method public static final f(Ljava/lang/String;Z)Z
    .registers 2

    invoke-static {p0}, Lp/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_b

    :cond_7
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    :goto_b
    return p1
.end method

.method public static synthetic g(Ljava/lang/String;IIIILjava/lang/Object;)I
    .registers 6

    and-int/lit8 p5, p4, 0x4

    if-eqz p5, :cond_5

    const/4 p2, 0x1

    :cond_5
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_c

    const p3, 0x7fffffff

    :cond_c
    invoke-static {p0, p1, p2, p3}, Lp/d;->c(Ljava/lang/String;III)I

    move-result p0

    return p0
.end method

.method public static synthetic h(Ljava/lang/String;JJJILjava/lang/Object;)J
    .registers 16

    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_6

    const-wide/16 p3, 0x1

    :cond_6
    move-wide v3, p3

    and-int/lit8 p3, p7, 0x8

    if-eqz p3, :cond_10

    const-wide p5, 0x7fffffffffffffffL

    :cond_10
    move-wide v5, p5

    move-object v0, p0

    move-wide v1, p1

    invoke-static/range {v0 .. v6}, Lp/d;->d(Ljava/lang/String;JJJ)J

    move-result-wide p0

    return-wide p0
.end method
