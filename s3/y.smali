.class public final Ls3/y;
.super Ls3/x;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ls3/x<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final f:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "TE;",
            "Ly2/p;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lq3/k;Lkotlin/jvm/functions/Function1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lq3/k<",
            "-",
            "Ly2/p;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Ly2/p;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ls3/x;-><init>(Ljava/lang/Object;Lq3/k;)V

    iput-object p3, p0, Ls3/y;->f:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public p()Z
    .registers 2

    invoke-super {p0}, Lv3/l;->p()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    invoke-virtual {p0}, Ls3/y;->w()V

    const/4 p0, 0x1

    return p0
.end method

.method public w()V
    .registers 4

    iget-object v0, p0, Ls3/y;->f:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Ls3/x;->d:Ljava/lang/Object;

    iget-object p0, p0, Ls3/x;->e:Lq3/k;

    invoke-interface {p0}, Lb3/d;->getContext()Lb3/f;

    move-result-object p0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lv3/s;->a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lv3/e0;)Lv3/e0;

    move-result-object v0

    if-nez v0, :cond_12

    goto :goto_15

    :cond_12
    invoke-static {p0, v0}, Li1/i;->g(Lb3/f;Ljava/lang/Throwable;)V

    :goto_15
    return-void
.end method
