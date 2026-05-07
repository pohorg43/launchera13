.class public final Lq3/o;
.super Lq3/k1;
.source ""


# instance fields
.field public final e:Lq3/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/l<",
            "*>;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lq3/l;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/l<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lq3/k1;-><init>()V

    iput-object p1, p0, Lq3/o;->e:Lq3/l;

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lq3/o;->s(Ljava/lang/Throwable;)V

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method

.method public s(Ljava/lang/Throwable;)V
    .registers 3

    iget-object p1, p0, Lq3/o;->e:Lq3/l;

    invoke-virtual {p0}, Lq3/m1;->t()Lq3/n1;

    move-result-object p0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Lq3/i1;->i()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    invoke-virtual {p1}, Lq3/l;->x()Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x0

    goto :goto_1d

    :cond_15
    iget-object v0, p1, Lq3/l;->d:Lb3/d;

    check-cast v0, Lv3/f;

    invoke-virtual {v0, p0}, Lv3/f;->n(Ljava/lang/Throwable;)Z

    move-result v0

    :goto_1d
    if-eqz v0, :cond_20

    goto :goto_26

    :cond_20
    invoke-virtual {p1, p0}, Lq3/l;->o(Ljava/lang/Throwable;)Z

    invoke-virtual {p1}, Lq3/l;->q()V

    :goto_26
    return-void
.end method
