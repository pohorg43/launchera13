.class public abstract Lz2/d;
.super Ljava/util/AbstractList;
.source ""

# interfaces
.implements Lkotlin/jvm/internal/markers/KMutableList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TE;>;",
        "Ljava/util/List<",
        "TE;>;",
        "Lkotlin/jvm/internal/markers/KMutableList;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public final remove(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    check-cast p0, La3/a;

    invoke-virtual {p0}, La3/a;->d()V

    sget-object v0, Lz2/c;->Companion:Lz2/c$a;

    iget v1, p0, La3/a;->c:I

    invoke-virtual {v0, p1, v1}, Lz2/c$a;->a(II)V

    iget v0, p0, La3/a;->b:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, La3/a;->g(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .registers 1

    check-cast p0, La3/a;

    iget p0, p0, La3/a;->c:I

    return p0
.end method
