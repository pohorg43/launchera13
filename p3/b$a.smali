.class public final Lp3/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/b;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lm3/d;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Lm3/d;

.field public e:I

.field public final synthetic f:Lp3/b;


# direct methods
.method public constructor <init>(Lp3/b;)V
    .registers 5

    iput-object p1, p0, Lp3/b$a;->f:Lp3/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lp3/b$a;->a:I

    iget v0, p1, Lp3/b;->b:I

    iget-object p1, p1, Lp3/b;->a:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v1, 0x0

    if-ltz p1, :cond_1f

    if-gez v0, :cond_17

    move v0, v1

    goto :goto_1a

    :cond_17
    if-le v0, p1, :cond_1a

    move v0, p1

    :cond_1a
    :goto_1a
    iput v0, p0, Lp3/b$a;->b:I

    iput v0, p0, Lp3/b$a;->c:I

    return-void

    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot coerce value to an empty range: maximum "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is less than minimum "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()V
    .registers 8

    iget v0, p0, Lp3/b$a;->c:I

    const/4 v1, 0x0

    if-gez v0, :cond_c

    iput v1, p0, Lp3/b$a;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lp3/b$a;->d:Lm3/d;

    goto/16 :goto_82

    :cond_c
    iget-object v2, p0, Lp3/b$a;->f:Lp3/b;

    iget v3, v2, Lp3/b;->c:I

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-lez v3, :cond_1b

    iget v6, p0, Lp3/b$a;->e:I

    add-int/2addr v6, v5

    iput v6, p0, Lp3/b$a;->e:I

    if-ge v6, v3, :cond_23

    :cond_1b
    iget-object v2, v2, Lp3/b;->a:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v0, v2, :cond_37

    :cond_23
    new-instance v0, Lm3/d;

    iget v1, p0, Lp3/b$a;->b:I

    iget-object v2, p0, Lp3/b$a;->f:Lp3/b;

    iget-object v2, v2, Lp3/b;->a:Ljava/lang/CharSequence;

    invoke-static {v2}, Lp3/k;->p(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lm3/d;-><init>(II)V

    iput-object v0, p0, Lp3/b$a;->d:Lm3/d;

    iput v4, p0, Lp3/b$a;->c:I

    goto :goto_80

    :cond_37
    iget-object v0, p0, Lp3/b$a;->f:Lp3/b;

    iget-object v2, v0, Lp3/b;->d:Lkotlin/jvm/functions/Function2;

    iget-object v0, v0, Lp3/b;->a:Ljava/lang/CharSequence;

    iget v3, p0, Lp3/b$a;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly2/i;

    if-nez v0, :cond_5f

    new-instance v0, Lm3/d;

    iget v1, p0, Lp3/b$a;->b:I

    iget-object v2, p0, Lp3/b$a;->f:Lp3/b;

    iget-object v2, v2, Lp3/b;->a:Ljava/lang/CharSequence;

    invoke-static {v2}, Lp3/k;->p(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lm3/d;-><init>(II)V

    iput-object v0, p0, Lp3/b$a;->d:Lm3/d;

    iput v4, p0, Lp3/b$a;->c:I

    goto :goto_80

    :cond_5f
    iget-object v2, v0, Ly2/i;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    iget-object v0, v0, Ly2/i;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget v3, p0, Lp3/b$a;->b:I

    invoke-static {v3, v2}, Li1/d;->g(II)Lm3/d;

    move-result-object v3

    iput-object v3, p0, Lp3/b$a;->d:Lm3/d;

    add-int/2addr v2, v0

    iput v2, p0, Lp3/b$a;->b:I

    if-nez v0, :cond_7d

    move v1, v5

    :cond_7d
    add-int/2addr v2, v1

    iput v2, p0, Lp3/b$a;->c:I

    :goto_80
    iput v5, p0, Lp3/b$a;->a:I

    :goto_82
    return-void
.end method

.method public hasNext()Z
    .registers 3

    iget v0, p0, Lp3/b$a;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    invoke-virtual {p0}, Lp3/b$a;->a()V

    :cond_8
    iget p0, p0, Lp3/b$a;->a:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 4

    iget v0, p0, Lp3/b$a;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    invoke-virtual {p0}, Lp3/b$a;->a()V

    :cond_8
    iget v0, p0, Lp3/b$a;->a:I

    if-eqz v0, :cond_19

    iget-object v0, p0, Lp3/b$a;->d:Lm3/d;

    const-string v2, "null cannot be cast to non-null type kotlin.ranges.IntRange"

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, p0, Lp3/b$a;->d:Lm3/d;

    iput v1, p0, Lp3/b$a;->a:I

    return-object v0

    :cond_19
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public remove()V
    .registers 2

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
