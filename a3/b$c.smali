.class public La3/b$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La3/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

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
.field public final a:La3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La3/b<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(La3/b;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La3/b<",
            "TK;TV;>;)V"
        }
    .end annotation

    const-string v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La3/b$c;->a:La3/b;

    const/4 p1, -0x1

    iput p1, p0, La3/b$c;->c:I

    invoke-virtual {p0}, La3/b$c;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    :goto_0
    iget v0, p0, La3/b$c;->b:I

    iget-object v1, p0, La3/b$c;->a:La3/b;

    iget v2, v1, La3/b;->f:I

    if-ge v0, v2, :cond_13

    iget-object v1, v1, La3/b;->c:[I

    aget v1, v1, v0

    if-gez v1, :cond_13

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La3/b$c;->b:I

    goto :goto_0

    :cond_13
    return-void
.end method

.method public final hasNext()Z
    .registers 2

    iget v0, p0, La3/b$c;->b:I

    iget-object p0, p0, La3/b$c;->a:La3/b;

    iget p0, p0, La3/b;->f:I

    if-ge v0, p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final remove()V
    .registers 4

    iget v0, p0, La3/b$c;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    if-eqz v0, :cond_19

    iget-object v0, p0, La3/b$c;->a:La3/b;

    invoke-virtual {v0}, La3/b;->d()V

    iget-object v0, p0, La3/b$c;->a:La3/b;

    iget v2, p0, La3/b$c;->c:I

    invoke-virtual {v0, v2}, La3/b;->m(I)V

    iput v1, p0, La3/b$c;->c:I

    return-void

    :cond_19
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Call next() before removing element from the iterator."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
