.class public final Lq3/p1;
.super Lq3/l0;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lq3/l0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final c:Lb3/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb3/d<",
            "Ly2/p;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb3/f;Lkotlin/jvm/functions/Function2;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb3/f;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lq3/f0;",
            "-",
            "Lb3/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lq3/l0;-><init>(Lb3/f;Z)V

    invoke-static {p2, p0, p0}, Lq/d;->g(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lb3/d;)Lb3/d;

    move-result-object p1

    iput-object p1, p0, Lq3/p1;->c:Lb3/d;

    return-void
.end method


# virtual methods
.method public Z()V
    .registers 2

    iget-object v0, p0, Lq3/p1;->c:Lb3/d;

    invoke-static {v0, p0}, Li1/j;->p(Lb3/d;Lb3/d;)V

    return-void
.end method
