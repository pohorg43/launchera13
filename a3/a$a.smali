.class public final La3/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/ListIterator;
.implements Lkotlin/jvm/internal/markers/KMutableListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "TE;>;",
        "Lkotlin/jvm/internal/markers/KMutableListIterator;"
    }
.end annotation


# instance fields
.field public final a:La3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La3/a<",
            "TE;>;"
        }
    .end annotation
.end field

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(La3/a;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La3/a<",
            "TE;>;I)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La3/a$a;->a:La3/a;

    iput p2, p0, La3/a$a;->b:I

    const/4 p1, -0x1

    iput p1, p0, La3/a$a;->c:I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget-object v0, p0, La3/a$a;->a:La3/a;

    iget v1, p0, La3/a$a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, La3/a$a;->b:I

    invoke-virtual {v0, v1, p1}, La3/a;->add(ILjava/lang/Object;)V

    const/4 p1, -0x1

    iput p1, p0, La3/a$a;->c:I

    return-void
.end method

.method public hasNext()Z
    .registers 2

    iget v0, p0, La3/a$a;->b:I

    iget-object p0, p0, La3/a$a;->a:La3/a;

    iget p0, p0, La3/a;->c:I

    if-ge v0, p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public hasPrevious()Z
    .registers 1

    iget p0, p0, La3/a$a;->b:I

    if-lez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget v0, p0, La3/a$a;->b:I

    iget-object v1, p0, La3/a$a;->a:La3/a;

    iget v2, v1, La3/a;->c:I

    if-ge v0, v2, :cond_16

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, La3/a$a;->b:I

    iput v0, p0, La3/a$a;->c:I

    iget-object p0, v1, La3/a;->a:[Ljava/lang/Object;

    iget v1, v1, La3/a;->b:I

    add-int/2addr v1, v0

    aget-object p0, p0, v1

    return-object p0

    :cond_16
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public nextIndex()I
    .registers 1

    iget p0, p0, La3/a$a;->b:I

    return p0
.end method

.method public previous()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget v0, p0, La3/a$a;->b:I

    if-lez v0, :cond_14

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, La3/a$a;->b:I

    iput v0, p0, La3/a$a;->c:I

    iget-object p0, p0, La3/a$a;->a:La3/a;

    iget-object v1, p0, La3/a;->a:[Ljava/lang/Object;

    iget p0, p0, La3/a;->b:I

    add-int/2addr p0, v0

    aget-object p0, v1, p0

    return-object p0

    :cond_14
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public previousIndex()I
    .registers 1

    iget p0, p0, La3/a$a;->b:I

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public remove()V
    .registers 4

    iget v0, p0, La3/a$a;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v2, 0x1

    goto :goto_8

    :cond_7
    const/4 v2, 0x0

    :goto_8
    if-eqz v2, :cond_16

    iget-object v2, p0, La3/a$a;->a:La3/a;

    invoke-virtual {v2, v0}, Lz2/d;->remove(I)Ljava/lang/Object;

    iget v0, p0, La3/a$a;->c:I

    iput v0, p0, La3/a$a;->b:I

    iput v1, p0, La3/a$a;->c:I

    return-void

    :cond_16
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Call next() or previous() before removing element from the iterator."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public set(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget v0, p0, La3/a$a;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v1, 0x1

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    if-eqz v1, :cond_10

    iget-object p0, p0, La3/a$a;->a:La3/a;

    invoke-virtual {p0, v0, p1}, La3/a;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Call next() or previous() before replacing element from the iterator."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
