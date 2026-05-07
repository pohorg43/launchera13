.class public abstract Lu3/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lu3/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lu3/m<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lb3/f;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final b:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final c:Ls3/e;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb3/f;ILs3/e;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu3/f;->a:Lb3/f;

    iput p2, p0, Lu3/f;->b:I

    iput-object p3, p0, Lu3/f;->c:Ls3/e;

    return-void
.end method


# virtual methods
.method public a(Lt3/e;Lb3/d;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt3/e<",
            "-TT;>;",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lu3/d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lu3/d;-><init>(Lt3/e;Lu3/f;Lb3/d;)V

    invoke-static {v0, p2}, Lq3/c1;->b(Lkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lc3/a;->a:Lc3/a;

    if-ne p0, p1, :cond_f

    goto :goto_11

    :cond_f
    sget-object p0, Ly2/p;->a:Ly2/p;

    :goto_11
    return-object p0
.end method

.method public b(Lb3/f;ILs3/e;)Lt3/d;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb3/f;",
            "I",
            "Ls3/e;",
            ")",
            "Lt3/d<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lu3/f;->a:Lb3/f;

    invoke-interface {p1, v0}, Lb3/f;->plus(Lb3/f;)Lb3/f;

    move-result-object p1

    sget-object v0, Ls3/e;->a:Ls3/e;

    if-eq p3, v0, :cond_b

    goto :goto_25

    :cond_b
    iget p3, p0, Lu3/f;->b:I

    const/4 v0, -0x3

    if-ne p3, v0, :cond_11

    goto :goto_23

    :cond_11
    if-ne p2, v0, :cond_15

    :goto_13
    move p2, p3

    goto :goto_23

    :cond_15
    const/4 v0, -0x2

    if-ne p3, v0, :cond_19

    goto :goto_23

    :cond_19
    if-ne p2, v0, :cond_1c

    goto :goto_13

    :cond_1c
    add-int/2addr p3, p2

    if-ltz p3, :cond_20

    goto :goto_13

    :cond_20
    const p2, 0x7fffffff

    :goto_23
    iget-object p3, p0, Lu3/f;->c:Ls3/e;

    :goto_25
    iget-object v0, p0, Lu3/f;->a:Lb3/f;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    iget v0, p0, Lu3/f;->b:I

    if-ne p2, v0, :cond_36

    iget-object v0, p0, Lu3/f;->c:Ls3/e;

    if-ne p3, v0, :cond_36

    return-object p0

    :cond_36
    invoke-virtual {p0, p1, p2, p3}, Lu3/f;->d(Lb3/f;ILs3/e;)Lu3/f;

    move-result-object p0

    return-object p0
.end method

.method public abstract c(Ls3/q;Lb3/d;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls3/q<",
            "-TT;>;",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract d(Lb3/f;ILs3/e;)Lu3/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb3/f;",
            "I",
            "Ls3/e;",
            ")",
            "Lu3/f<",
            "TT;>;"
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lu3/f;->a:Lb3/f;

    sget-object v2, Lb3/h;->a:Lb3/h;

    if-eq v1, v2, :cond_15

    const-string v2, "context="

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    iget v1, p0, Lu3/f;->b:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_27

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "capacity="

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_27
    iget-object v1, p0, Lu3/f;->c:Ls3/e;

    sget-object v2, Ls3/e;->a:Ls3/e;

    if-eq v1, v2, :cond_36

    const-string v2, "onBufferOverflow="

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_36
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5b

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e

    const-string v1, ", "

    invoke-static/range {v0 .. v7}, Lz2/r;->E(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
