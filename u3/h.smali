.class public abstract Lu3/h;
.super Lu3/f;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lu3/f<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final d:Lt3/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt3/d<",
            "TS;>;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lt3/d;Lb3/f;ILs3/e;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt3/d<",
            "+TS;>;",
            "Lb3/f;",
            "I",
            "Ls3/e;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p3, p4}, Lu3/f;-><init>(Lb3/f;ILs3/e;)V

    iput-object p1, p0, Lu3/h;->d:Lt3/d;

    return-void
.end method


# virtual methods
.method public a(Lt3/e;Lb3/d;)Ljava/lang/Object;
    .registers 8
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

    sget-object v0, Lc3/a;->a:Lc3/a;

    iget v1, p0, Lu3/f;->b:I

    const/4 v2, -0x3

    if-ne v1, v2, :cond_61

    invoke-interface {p2}, Lb3/d;->getContext()Lb3/f;

    move-result-object v1

    iget-object v2, p0, Lu3/f;->a:Lb3/f;

    invoke-interface {v1, v2}, Lb3/f;->plus(Lb3/f;)Lb3/f;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-virtual {p0, p1, p2}, Lu3/h;->e(Lt3/e;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_1e

    goto :goto_6a

    :cond_1e
    sget-object p0, Ly2/p;->a:Ly2/p;

    goto :goto_6a

    :cond_21
    sget v3, Lb3/e;->A:I

    sget-object v3, Lb3/e$a;->a:Lb3/e$a;

    invoke-interface {v2, v3}, Lb3/f;->get(Lb3/f$b;)Lb3/f$a;

    move-result-object v4

    invoke-interface {v1, v3}, Lb3/f;->get(Lb3/f$b;)Lb3/f$a;

    move-result-object v1

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-interface {p2}, Lb3/d;->getContext()Lb3/f;

    move-result-object v1

    instance-of v3, p1, Lu3/t;

    if-eqz v3, :cond_3d

    const/4 v3, 0x1

    goto :goto_3f

    :cond_3d
    instance-of v3, p1, Lu3/o;

    :goto_3f
    if-eqz v3, :cond_42

    goto :goto_48

    :cond_42
    new-instance v3, Lu3/v;

    invoke-direct {v3, p1, v1}, Lu3/v;-><init>(Lt3/e;Lb3/f;)V

    move-object p1, v3

    :goto_48
    new-instance v1, Lu3/g;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lu3/g;-><init>(Lu3/h;Lb3/d;)V

    invoke-static {v2}, Lv3/a0;->b(Lb3/f;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p1, p0, v1, p2}, Li1/j;->s(Lb3/f;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_59

    goto :goto_5b

    :cond_59
    sget-object p0, Ly2/p;->a:Ly2/p;

    :goto_5b
    if-ne p0, v0, :cond_5e

    goto :goto_6a

    :cond_5e
    sget-object p0, Ly2/p;->a:Ly2/p;

    goto :goto_6a

    :cond_61
    invoke-super {p0, p1, p2}, Lu3/f;->a(Lt3/e;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_68

    goto :goto_6a

    :cond_68
    sget-object p0, Ly2/p;->a:Ly2/p;

    :goto_6a
    return-object p0
.end method

.method public c(Ls3/q;Lb3/d;)Ljava/lang/Object;
    .registers 4
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

    new-instance v0, Lu3/t;

    invoke-direct {v0, p1}, Lu3/t;-><init>(Ls3/w;)V

    invoke-virtual {p0, v0, p2}, Lu3/h;->e(Lt3/e;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lc3/a;->a:Lc3/a;

    if-ne p0, p1, :cond_e

    goto :goto_10

    :cond_e
    sget-object p0, Ly2/p;->a:Ly2/p;

    :goto_10
    return-object p0
.end method

.method public abstract e(Lt3/e;Lb3/d;)Ljava/lang/Object;
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
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lu3/h;->d:Lt3/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lu3/f;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
