.class public Lv3/w;
.super Lq3/a;
.source ""

# interfaces
.implements Ld3/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lq3/a<",
        "TT;>;",
        "Ld3/d;"
    }
.end annotation


# instance fields
.field public final c:Lb3/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb3/d<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb3/f;Lb3/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb3/f;",
            "Lb3/d<",
            "-TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Lq3/a;-><init>(Lb3/f;ZZ)V

    iput-object p2, p0, Lv3/w;->c:Lb3/d;

    return-void
.end method


# virtual methods
.method public B(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lv3/w;->c:Lb3/d;

    invoke-static {v0}, Lq/d;->l(Lb3/d;)Lb3/d;

    move-result-object v0

    iget-object p0, p0, Lv3/w;->c:Lb3/d;

    invoke-static {p1, p0}, Li1/k;->c(Ljava/lang/Object;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v1, 0x2

    invoke-static {v0, p0, p1, v1}, Lv3/g;->b(Lb3/d;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;I)V

    return-void
.end method

.method public final T()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public final getCallerFrame()Ld3/d;
    .registers 2

    iget-object p0, p0, Lv3/w;->c:Lb3/d;

    instance-of v0, p0, Ld3/d;

    if-eqz v0, :cond_9

    check-cast p0, Ld3/d;

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public h0(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lv3/w;->c:Lb3/d;

    invoke-static {p1, p0}, Li1/k;->c(Ljava/lang/Object;Lb3/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lb3/d;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
