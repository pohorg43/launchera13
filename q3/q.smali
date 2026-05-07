.class public final Lq3/q;
.super Lq3/k1;
.source ""

# interfaces
.implements Lq3/p;


# instance fields
.field public final e:Lq3/r;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lq3/r;)V
    .registers 2

    invoke-direct {p0}, Lq3/k1;-><init>()V

    iput-object p1, p0, Lq3/q;->e:Lq3/r;

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Throwable;)Z
    .registers 2

    invoke-virtual {p0}, Lq3/m1;->t()Lq3/n1;

    move-result-object p0

    invoke-virtual {p0, p1}, Lq3/n1;->G(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method public getParent()Lq3/i1;
    .registers 1

    invoke-virtual {p0}, Lq3/m1;->t()Lq3/n1;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lq3/q;->s(Ljava/lang/Throwable;)V

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method

.method public s(Ljava/lang/Throwable;)V
    .registers 2

    iget-object p1, p0, Lq3/q;->e:Lq3/r;

    invoke-virtual {p0}, Lq3/m1;->t()Lq3/n1;

    move-result-object p0

    invoke-interface {p1, p0}, Lq3/r;->k(Lq3/v1;)V

    return-void
.end method
