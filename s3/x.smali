.class public Ls3/x;
.super Ls3/v;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ls3/v;"
    }
.end annotation


# instance fields
.field public final d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field public final e:Lq3/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/k<",
            "Ly2/p;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lq3/k;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lq3/k<",
            "-",
            "Ly2/p;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ls3/v;-><init>()V

    iput-object p1, p0, Ls3/x;->d:Ljava/lang/Object;

    iput-object p2, p0, Ls3/x;->e:Lq3/k;

    return-void
.end method


# virtual methods
.method public s()V
    .registers 2

    iget-object p0, p0, Ls3/x;->e:Lq3/k;

    sget-object v0, Lq3/m;->a:Lv3/y;

    invoke-interface {p0, v0}, Lq3/k;->z(Ljava/lang/Object;)V

    return-void
.end method

.method public t()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object p0, p0, Ls3/x;->d:Ljava/lang/Object;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lq3/h0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ls3/x;->d:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u(Ls3/j;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls3/j<",
            "*>;)V"
        }
    .end annotation

    iget-object p0, p0, Ls3/x;->e:Lq3/k;

    invoke-virtual {p1}, Ls3/j;->y()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lb3/d;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public v(Lv3/l$b;)Lv3/y;
    .registers 3

    iget-object p0, p0, Ls3/x;->e:Lq3/k;

    sget-object p1, Ly2/p;->a:Ly2/p;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lq3/k;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_c

    return-object v0

    :cond_c
    sget-object p0, Lq3/m;->a:Lv3/y;

    return-object p0
.end method
