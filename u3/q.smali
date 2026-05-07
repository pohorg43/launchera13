.class public final Lu3/q;
.super Ld3/c;
.source ""

# interfaces
.implements Lt3/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ld3/c;",
        "Lt3/e<",
        "TT;>;",
        "Ld3/d;"
    }
.end annotation


# instance fields
.field public final a:Lt3/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt3/e<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final b:Lb3/f;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final c:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public d:Lb3/f;

.field public e:Lb3/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lt3/e;Lb3/f;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt3/e<",
            "-TT;>;",
            "Lb3/f;",
            ")V"
        }
    .end annotation

    sget-object v0, Lu3/n;->a:Lu3/n;

    sget-object v1, Lb3/h;->a:Lb3/h;

    invoke-direct {p0, v0, v1}, Ld3/c;-><init>(Lb3/d;Lb3/f;)V

    iput-object p1, p0, Lu3/q;->a:Lt3/e;

    iput-object p2, p0, Lu3/q;->b:Lb3/f;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Lu3/q$a;->a:Lu3/q$a;

    invoke-interface {p2, p1, v0}, Lb3/f;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, p0, Lu3/q;->c:I

    return-void
.end method


# virtual methods
.method public final b(Lb3/d;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-interface/range {p1 .. p1}, Lb3/d;->getContext()Lb3/f;

    move-result-object v2

    invoke-static {v2}, Lq3/g;->d(Lb3/f;)V

    iget-object v3, v0, Lu3/q;->d:Lb3/f;

    const/4 v4, 0x0

    if-eq v3, v2, :cond_1c1

    instance-of v5, v3, Lu3/l;

    const/4 v6, 0x0

    if-eqz v5, :cond_181

    check-cast v3, Lu3/l;

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "\n            Flow exception transparency is violated:\n                Previous \'emit\' call has thrown exception "

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v3, Lu3/l;->a:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", but then emission attempt of value \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\' has been detected.\n                Emissions from \'catch\' blocks are prohibited in order to avoid unspecified behaviour, \'Flow.catch\' operator can be used instead.\n                For a more detailed explanation, please refer to Flow documentation.\n            "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<this>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, ""

    const-string v5, "newIndent"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "\r\n"

    const-string v5, "\n"

    const-string v7, "\r"

    filled-new-array {v3, v5, v7}, [Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "delimiters"

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v12, 0x2

    move-object v7, v1

    invoke-static/range {v7 .. v12}, Lp3/k;->w(Ljava/lang/CharSequence;[Ljava/lang/String;IZII)Lo3/e;

    move-result-object v3

    new-instance v5, Lp3/j;

    invoke-direct {v5, v1}, Lp3/j;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v3, v5}, Lo3/l;->s(Lo3/e;Lkotlin/jvm/functions/Function1;)Lo3/e;

    move-result-object v3

    invoke-static {v3}, Lo3/l;->t(Lo3/e;)Ljava/util/List;

    move-result-object v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7b
    :goto_7b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_94

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Lp3/h;->j(Ljava/lang/CharSequence;)Z

    move-result v10

    xor-int/2addr v9, v10

    if-eqz v9, :cond_7b

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7b

    :cond_94
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v5, v8}, Lz2/l;->t(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    move v11, v6

    :goto_b4
    const/4 v12, -0x1

    if-ge v11, v10, :cond_c6

    invoke-virtual {v8, v11}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Li1/i;->h(C)Z

    move-result v13

    xor-int/2addr v13, v9

    if-eqz v13, :cond_c3

    goto :goto_c7

    :cond_c3
    add-int/lit8 v11, v11, 0x1

    goto :goto_b4

    :cond_c6
    move v11, v12

    :goto_c7
    if-ne v11, v12, :cond_cd

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    :cond_cd
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a3

    :cond_d5
    invoke-static {v7}, Lz2/r;->H(Ljava/lang/Iterable;)Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_e2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_e3

    :cond_e2
    move v5, v6

    :goto_e3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    mul-int/2addr v7, v6

    add-int/2addr v7, v1

    sget-object v1, Lp3/c;->a:Lp3/c;

    invoke-static {v3}, Li1/j;->j(Ljava/util/List;)I

    move-result v8

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v11, v6

    :goto_fd
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_15d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v13, v11, 0x1

    if-ltz v11, :cond_159

    check-cast v12, Ljava/lang/String;

    if-eqz v11, :cond_111

    if-ne v11, v8, :cond_119

    :cond_111
    invoke-static {v12}, Lp3/h;->j(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_119

    move-object v12, v4

    goto :goto_140

    :cond_119
    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz v5, :cond_120

    move v11, v9

    goto :goto_121

    :cond_120
    move v11, v6

    :goto_121
    if-eqz v11, :cond_147

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v11

    if-le v5, v11, :cond_12a

    goto :goto_12b

    :cond_12a
    move v11, v5

    :goto_12b
    invoke-virtual {v12, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    const-string v14, "this as java.lang.String).substring(startIndex)"

    invoke-static {v11, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v11, :cond_140

    invoke-virtual {v1, v11}, Lp3/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-nez v11, :cond_13f

    goto :goto_140

    :cond_13f
    move-object v12, v11

    :cond_140
    :goto_140
    if-eqz v12, :cond_145

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_145
    move v11, v13

    goto :goto_fd

    :cond_147
    const-string v0, "Requested character count "

    const-string v1, " is less than zero."

    invoke-static {v0, v5, v1}, Landroidx/constraintlayout/core/a;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_159
    invoke-static {}, Li1/j;->r()V

    throw v4

    :cond_15d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v15, -0x1

    const/16 v17, 0x0

    const-string v12, "\n"

    const-string v14, ""

    const-string v16, "..."

    move-object v11, v1

    move-object v13, v14

    invoke-static/range {v10 .. v17}, Lz2/r;->D(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/Appendable;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mapIndexedNotNull { inde…\"\\n\")\n        .toString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_181
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v5, Lu3/s;

    invoke-direct {v5, v0}, Lu3/s;-><init>(Lu3/q;)V

    invoke-interface {v2, v3, v5}, Lb3/f;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    iget v5, v0, Lu3/q;->c:I

    if-ne v3, v5, :cond_19b

    iput-object v2, v0, Lu3/q;->d:Lb3/f;

    goto :goto_1c1

    :cond_19b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Flow invariant is violated:\n\t\tFlow was collected in "

    invoke-static {v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lu3/q;->b:Lb3/f;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",\n\t\tbut emission happened in "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ".\n\t\tPlease refer to \'flow\' documentation or use \'flowOn\' instead"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1c1
    :goto_1c1
    move-object/from16 v2, p1

    iput-object v2, v0, Lu3/q;->e:Lb3/d;

    sget-object v2, Lu3/r;->a:Lkotlin/jvm/functions/Function3;

    iget-object v3, v0, Lu3/q;->a:Lt3/e;

    invoke-interface {v2, v3, v1, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lc3/a;->a:Lc3/a;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d7

    iput-object v4, v0, Lu3/q;->e:Lb3/d;

    :cond_1d7
    return-object v1
.end method

.method public emit(Ljava/lang/Object;Lb3/d;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p2, p1}, Lu3/q;->b(Lb3/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_13

    sget-object p1, Lc3/a;->a:Lc3/a;

    if-ne p0, p1, :cond_d

    const-string v0, "frame"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_d
    if-ne p0, p1, :cond_10

    return-object p0

    :cond_10
    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0

    :catchall_13
    move-exception p1

    new-instance v0, Lu3/l;

    invoke-interface {p2}, Lb3/d;->getContext()Lb3/f;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lu3/l;-><init>(Ljava/lang/Throwable;Lb3/f;)V

    iput-object v0, p0, Lu3/q;->d:Lb3/f;

    throw p1
.end method

.method public getCallerFrame()Ld3/d;
    .registers 2

    iget-object p0, p0, Lu3/q;->e:Lb3/d;

    instance-of v0, p0, Ld3/d;

    if-eqz v0, :cond_9

    check-cast p0, Ld3/d;

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public getContext()Lb3/f;
    .registers 1

    iget-object p0, p0, Lu3/q;->d:Lb3/f;

    if-nez p0, :cond_6

    sget-object p0, Lb3/h;->a:Lb3/h;

    :cond_6
    return-object p0
.end method

.method public getStackTraceElement()Ljava/lang/StackTraceElement;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {p1}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_12

    :cond_7
    new-instance v1, Lu3/l;

    invoke-virtual {p0}, Lu3/q;->getContext()Lb3/f;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lu3/l;-><init>(Ljava/lang/Throwable;Lb3/f;)V

    iput-object v1, p0, Lu3/q;->d:Lb3/f;

    :goto_12
    iget-object p0, p0, Lu3/q;->e:Lb3/d;

    if-nez p0, :cond_17

    goto :goto_1a

    :cond_17
    invoke-interface {p0, p1}, Lb3/d;->resumeWith(Ljava/lang/Object;)V

    :goto_1a
    sget-object p0, Lc3/a;->a:Lc3/a;

    return-object p0
.end method

.method public releaseIntercepted()V
    .registers 1

    invoke-super {p0}, Ld3/c;->releaseIntercepted()V

    return-void
.end method
