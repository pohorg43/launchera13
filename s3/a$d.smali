.class public Ls3/a$d;
.super Ls3/r;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ls3/r<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final d:Ls3/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls3/a$a<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final e:Lq3/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/k<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls3/a$a;Lq3/k;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls3/a$a<",
            "TE;>;",
            "Lq3/k<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ls3/r;-><init>()V

    iput-object p1, p0, Ls3/a$d;->d:Ls3/a$a;

    iput-object p2, p0, Ls3/a$d;->e:Lq3/k;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Lv3/l$b;)Lv3/y;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lv3/l$b;",
            ")",
            "Lv3/y;"
        }
    .end annotation

    iget-object p2, p0, Ls3/a$d;->e:Lq3/k;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ls3/a$d;->s(Ljava/lang/Object;)Lkotlin/jvm/functions/Function1;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p2, v0, p1, p0}, Lq3/k;->m(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_10

    return-object p1

    :cond_10
    sget-object p0, Lq3/m;->a:Lv3/y;

    return-object p0
.end method

.method public f(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget-object v0, p0, Ls3/a$d;->d:Ls3/a$a;

    iput-object p1, v0, Ls3/a$a;->b:Ljava/lang/Object;

    iget-object p0, p0, Ls3/a$d;->e:Lq3/k;

    sget-object p1, Lq3/m;->a:Lv3/y;

    invoke-interface {p0, p1}, Lq3/k;->z(Ljava/lang/Object;)V

    return-void
.end method

.method public s(Ljava/lang/Object;)Lkotlin/jvm/functions/Function1;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Throwable;",
            "Ly2/p;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ls3/a$d;->d:Ls3/a$a;

    iget-object v0, v0, Ls3/a$a;->a:Ls3/a;

    iget-object v0, v0, Ls3/c;->a:Lkotlin/jvm/functions/Function1;

    if-nez v0, :cond_a

    const/4 p0, 0x0

    goto :goto_16

    :cond_a
    iget-object p0, p0, Ls3/a$d;->e:Lq3/k;

    invoke-interface {p0}, Lb3/d;->getContext()Lb3/f;

    move-result-object p0

    new-instance v1, Lv3/r;

    invoke-direct {v1, v0, p1, p0}, Lv3/r;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lb3/f;)V

    move-object p0, v1

    :goto_16
    return-object p0
.end method

.method public t(Ls3/j;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls3/j<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p1, Ls3/j;->d:Ljava/lang/Throwable;

    if-nez v0, :cond_e

    iget-object v0, p0, Ls3/a$d;->e:Lq3/k;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lq3/k;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_18

    :cond_e
    iget-object v0, p0, Ls3/a$d;->e:Lq3/k;

    invoke-virtual {p1}, Ls3/j;->x()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lq3/k;->l(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_18
    if-eqz v0, :cond_23

    iget-object v1, p0, Ls3/a$d;->d:Ls3/a$a;

    iput-object p1, v1, Ls3/a$a;->b:Ljava/lang/Object;

    iget-object p0, p0, Ls3/a$d;->e:Lq3/k;

    invoke-interface {p0, v0}, Lq3/k;->z(Ljava/lang/Object;)V

    :cond_23
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lq3/h0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ReceiveHasNext@"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
