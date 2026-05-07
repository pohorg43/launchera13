.class public final Ls3/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ls3/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls3/a;
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
        "Ls3/h<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final a:Ls3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls3/a<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ls3/a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls3/a<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls3/a$a;->a:Ls3/a;

    sget-object p1, Ls3/b;->d:Lv3/y;

    iput-object p1, p0, Ls3/a$a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lb3/d;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb3/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Ls3/a$a;->b:Ljava/lang/Object;

    sget-object v1, Ls3/b;->d:Lv3/y;

    if-eq v0, v1, :cond_f

    invoke-virtual {p0, v0}, Ls3/a$a;->b(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_f
    iget-object v0, p0, Ls3/a$a;->a:Ls3/a;

    invoke-virtual {v0}, Ls3/a;->u()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ls3/a$a;->b:Ljava/lang/Object;

    if-eq v0, v1, :cond_22

    invoke-virtual {p0, v0}, Ls3/a$a;->b(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_22
    invoke-static {p1}, Lq/d;->l(Lb3/d;)Lb3/d;

    move-result-object v0

    invoke-static {v0}, Lq/d;->k(Lb3/d;)Lq3/l;

    move-result-object v0

    new-instance v1, Ls3/a$d;

    invoke-direct {v1, p0, v0}, Ls3/a$d;-><init>(Ls3/a$a;Lq3/k;)V

    :cond_2f
    iget-object v2, p0, Ls3/a$a;->a:Ls3/a;

    invoke-virtual {v2, v1}, Ls3/a;->o(Ls3/r;)Z

    move-result v2

    if-eqz v2, :cond_45

    iget-object p0, p0, Ls3/a$a;->a:Ls3/a;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ls3/a$e;

    invoke-direct {v2, p0, v1}, Ls3/a$e;-><init>(Ls3/a;Ls3/r;)V

    invoke-virtual {v0, v2}, Lq3/l;->j(Lkotlin/jvm/functions/Function1;)V

    goto :goto_84

    :cond_45
    iget-object v2, p0, Ls3/a$a;->a:Ls3/a;

    invoke-virtual {v2}, Ls3/a;->u()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Ls3/a$a;->b:Ljava/lang/Object;

    instance-of v3, v2, Ls3/j;

    if-eqz v3, :cond_69

    check-cast v2, Ls3/j;

    iget-object p0, v2, Ls3/j;->d:Ljava/lang/Throwable;

    if-nez p0, :cond_5d

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Lq3/l;->resumeWith(Ljava/lang/Object;)V

    goto :goto_84

    :cond_5d
    invoke-virtual {v2}, Ls3/j;->x()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Lq3/l;->resumeWith(Ljava/lang/Object;)V

    goto :goto_84

    :cond_69
    sget-object v3, Ls3/b;->d:Lv3/y;

    if-eq v2, v3, :cond_2f

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p0, p0, Ls3/a$a;->a:Ls3/a;

    iget-object p0, p0, Ls3/c;->a:Lkotlin/jvm/functions/Function1;

    if-nez p0, :cond_77

    const/4 p0, 0x0

    goto :goto_7f

    :cond_77
    iget-object v3, v0, Lq3/l;->e:Lb3/f;

    new-instance v4, Lv3/r;

    invoke-direct {v4, p0, v2, v3}, Lv3/r;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lb3/f;)V

    move-object p0, v4

    :goto_7f
    iget v2, v0, Lq3/p0;->c:I

    invoke-virtual {v0, v1, v2, p0}, Lq3/l;->D(Ljava/lang/Object;ILkotlin/jvm/functions/Function1;)V

    :goto_84
    invoke-virtual {v0}, Lq3/l;->t()Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lc3/a;->a:Lc3/a;

    if-ne p0, v0, :cond_91

    const-string v0, "frame"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_91
    return-object p0
.end method

.method public final b(Ljava/lang/Object;)Z
    .registers 2

    instance-of p0, p1, Ls3/j;

    if-eqz p0, :cond_13

    check-cast p1, Ls3/j;

    iget-object p0, p1, Ls3/j;->d:Ljava/lang/Throwable;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return p0

    :cond_c
    invoke-virtual {p1}, Ls3/j;->x()Ljava/lang/Throwable;

    move-result-object p0

    sget-object p1, Lv3/x;->a:Ljava/lang/String;

    throw p0

    :cond_13
    const/4 p0, 0x1

    return p0
.end method

.method public next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Ls3/a$a;->b:Ljava/lang/Object;

    instance-of v1, v0, Ls3/j;

    if-nez v1, :cond_15

    sget-object v1, Ls3/b;->d:Lv3/y;

    if-eq v0, v1, :cond_d

    iput-object v1, p0, Ls3/a$a;->b:Ljava/lang/Object;

    return-object v0

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "\'hasNext\' should be called prior to \'next\' invocation"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    check-cast v0, Ls3/j;

    invoke-virtual {v0}, Ls3/j;->x()Ljava/lang/Throwable;

    move-result-object p0

    sget-object v0, Lv3/x;->a:Ljava/lang/String;

    throw p0
.end method
