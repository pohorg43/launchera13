.class public abstract Lz2/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lz2/b;->a:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 7

    iget v0, p0, Lz2/b;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eq v0, v2, :cond_9

    move v4, v1

    goto :goto_a

    :cond_9
    move v4, v3

    :goto_a
    if-eqz v4, :cond_69

    invoke-static {v0}, Lj/b;->f(I)I

    move-result v0

    if-eqz v0, :cond_68

    const/4 v4, 0x2

    if-eq v0, v4, :cond_67

    iput v2, p0, Lz2/b;->a:I

    move-object v0, p0

    check-cast v0, Lh3/c$b;

    :goto_1a
    iget-object v2, v0, Lh3/c$b;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh3/c$c;

    if-nez v2, :cond_26

    const/4 v2, 0x0

    goto :goto_58

    :cond_26
    invoke-virtual {v2}, Lh3/c$c;->a()Ljava/io/File;

    move-result-object v4

    if-nez v4, :cond_32

    iget-object v2, v0, Lh3/c$b;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    goto :goto_1a

    :cond_32
    iget-object v2, v2, Lh3/c$c;->a:Ljava/io/File;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_57

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_57

    iget-object v2, v0, Lh3/c$b;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    iget-object v5, v0, Lh3/c$b;->d:Lh3/c;

    iget v5, v5, Lh3/c;->c:I

    if-lt v2, v5, :cond_4d

    goto :goto_57

    :cond_4d
    iget-object v2, v0, Lh3/c$b;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0, v4}, Lh3/c$b;->a(Ljava/io/File;)Lh3/c$a;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_1a

    :cond_57
    :goto_57
    move-object v2, v4

    :goto_58
    if-eqz v2, :cond_5f

    iput-object v2, v0, Lz2/b;->b:Ljava/lang/Object;

    iput v1, v0, Lz2/b;->a:I

    goto :goto_62

    :cond_5f
    const/4 v2, 0x3

    iput v2, v0, Lz2/b;->a:I

    :goto_62
    iget p0, p0, Lz2/b;->a:I

    if-ne p0, v1, :cond_67

    goto :goto_68

    :cond_67
    move v1, v3

    :cond_68
    :goto_68
    return v1

    :cond_69
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lz2/b;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x2

    iput v0, p0, Lz2/b;->a:I

    iget-object p0, p0, Lz2/b;->b:Ljava/lang/Object;

    return-object p0

    :cond_c
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
