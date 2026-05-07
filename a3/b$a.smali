.class public final La3/b$a;
.super La3/b$c;
.source ""

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMutableIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La3/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "La3/b$c<",
        "TK;TV;>;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;",
        "Lkotlin/jvm/internal/markers/KMutableIterator;"
    }
.end annotation


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

    invoke-direct {p0, p1}, La3/b$c;-><init>(La3/b;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .registers 4

    iget v0, p0, La3/b$c;->b:I

    iget-object v1, p0, La3/b$c;->a:La3/b;

    iget v2, v1, La3/b;->f:I

    if-ge v0, v2, :cond_17

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, La3/b$c;->b:I

    iput v0, p0, La3/b$c;->c:I

    new-instance v2, La3/b$b;

    invoke-direct {v2, v1, v0}, La3/b$b;-><init>(La3/b;I)V

    invoke-virtual {p0}, La3/b$c;->a()V

    return-object v2

    :cond_17
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
