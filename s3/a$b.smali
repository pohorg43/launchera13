.class public Ls3/a$b;
.super Ls3/r;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
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
.field public final d:Lq3/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/k<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final e:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lq3/k;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/k<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ls3/r;-><init>()V

    iput-object p1, p0, Ls3/a$b;->d:Lq3/k;

    iput p2, p0, Ls3/a$b;->e:I

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Lv3/l$b;)Lv3/y;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lv3/l$b;",
            ")",
            "Lv3/y;"
        }
    .end annotation

    iget-object p2, p0, Ls3/a$b;->d:Lq3/k;

    iget v0, p0, Ls3/a$b;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    new-instance v0, Ls3/i;

    invoke-direct {v0, p1}, Ls3/i;-><init>(Ljava/lang/Object;)V

    goto :goto_e

    :cond_d
    move-object v0, p1

    :goto_e
    invoke-virtual {p0, p1}, Ls3/r;->s(Ljava/lang/Object;)Lkotlin/jvm/functions/Function1;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p2, v0, p1, p0}, Lq3/k;->m(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1a

    return-object p1

    :cond_1a
    sget-object p0, Lq3/m;->a:Lv3/y;

    return-object p0
.end method

.method public f(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget-object p0, p0, Ls3/a$b;->d:Lq3/k;

    sget-object p1, Lq3/m;->a:Lv3/y;

    invoke-interface {p0, p1}, Lq3/k;->z(Ljava/lang/Object;)V

    return-void
.end method

.method public t(Ls3/j;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls3/j<",
            "*>;)V"
        }
    .end annotation

    iget v0, p0, Ls3/a$b;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    iget-object p0, p0, Ls3/a$b;->d:Lq3/k;

    iget-object p1, p1, Ls3/j;->d:Ljava/lang/Throwable;

    new-instance v0, Ls3/i$a;

    invoke-direct {v0, p1}, Ls3/i$a;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Ls3/i;

    invoke-direct {p1, v0}, Ls3/i;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Lb3/d;->resumeWith(Ljava/lang/Object;)V

    goto :goto_24

    :cond_17
    iget-object p0, p0, Ls3/a$b;->d:Lq3/k;

    invoke-virtual {p1}, Ls3/j;->x()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lb3/d;->resumeWith(Ljava/lang/Object;)V

    :goto_24
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "ReceiveElement@"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lq3/h0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[receiveMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Ls3/a$b;->e:I

    const/16 v1, 0x5d

    invoke-static {v0, p0, v1}, Landroidx/core/graphics/b;->a(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
