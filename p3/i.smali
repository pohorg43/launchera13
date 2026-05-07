.class public final Lp3/i;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/Integer;",
        "Ly2/i<",
        "+",
        "Ljava/lang/Integer;",
        "+",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lp3/i;->a:Ljava/util/List;

    iput-boolean p2, p0, Lp3/i;->b:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15

    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    const-string v0, "$this$$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lp3/i;->a:Ljava/util/List;

    iget-boolean p0, p0, Lp3/i;->b:Z

    const/4 v0, 0x0

    const/4 v7, 0x0

    if-nez p0, :cond_56

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_56

    const-string p0, "<this>"

    invoke-static {v6, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result p0

    if-eqz p0, :cond_4e

    if-ne p0, v2, :cond_46

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {p1, p0, p2, v0, v1}, Lp3/k;->u(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result p1

    if-gez p1, :cond_3b

    goto/16 :goto_e6

    :cond_3b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance p2, Ly2/i;

    invoke-direct {p2, p1, p0}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_e7

    :cond_46
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "List has more than one element."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4e
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "List is empty."

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_56
    new-instance v1, Lm3/d;

    if-gez p2, :cond_5b

    move p2, v0

    :cond_5b
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-direct {v1, p2, v0}, Lm3/d;-><init>(II)V

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_a7

    iget v8, v1, Lm3/b;->b:I

    iget v9, v1, Lm3/b;->c:I

    if-lez v9, :cond_6e

    if-le p2, v8, :cond_72

    :cond_6e
    if-gez v9, :cond_e6

    if-gt v8, p2, :cond_e6

    :cond_72
    :goto_72
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_76
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_94

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    move v3, p2

    move v5, p0

    invoke-static/range {v0 .. v5}, Lp3/h;->k(Ljava/lang/String;ILjava/lang/String;IIZ)Z

    move-result v0

    if-eqz v0, :cond_76

    goto :goto_95

    :cond_94
    move-object v11, v7

    :goto_95
    check-cast v11, Ljava/lang/String;

    if-eqz v11, :cond_a3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance p2, Ly2/i;

    invoke-direct {p2, p0, v11}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e7

    :cond_a3
    if-eq p2, v8, :cond_e6

    add-int/2addr p2, v9

    goto :goto_72

    :cond_a7
    iget v8, v1, Lm3/b;->b:I

    iget v9, v1, Lm3/b;->c:I

    if-lez v9, :cond_af

    if-le p2, v8, :cond_b3

    :cond_af
    if-gez v9, :cond_e6

    if-gt v8, p2, :cond_e6

    :cond_b3
    :goto_b3
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_b7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    move-object v2, p1

    move v3, p2

    move v5, p0

    invoke-static/range {v0 .. v5}, Lp3/k;->x(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z

    move-result v0

    if-eqz v0, :cond_b7

    goto :goto_d4

    :cond_d3
    move-object v11, v7

    :goto_d4
    check-cast v11, Ljava/lang/String;

    if-eqz v11, :cond_e2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance p2, Ly2/i;

    invoke-direct {p2, p0, v11}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e7

    :cond_e2
    if-eq p2, v8, :cond_e6

    add-int/2addr p2, v9

    goto :goto_b3

    :cond_e6
    :goto_e6
    move-object p2, v7

    :goto_e7
    if-eqz p2, :cond_fc

    iget-object p0, p2, Ly2/i;->a:Ljava/lang/Object;

    iget-object p1, p2, Ly2/i;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v7, Ly2/i;

    invoke-direct {v7, p0, p1}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_fc
    return-object v7
.end method
