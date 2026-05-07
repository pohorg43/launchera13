.class public final Lu3/v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lt3/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lt3/e<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lb3/f;

.field public final b:Ljava/lang/Object;

.field public final c:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "TT;",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lt3/e;Lb3/f;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt3/e<",
            "-TT;>;",
            "Lb3/f;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lu3/v;->a:Lb3/f;

    invoke-static {p2}, Lv3/a0;->b(Lb3/f;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lu3/v;->b:Ljava/lang/Object;

    new-instance p2, Lu3/v$a;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lu3/v$a;-><init>(Lt3/e;Lb3/d;)V

    iput-object p2, p0, Lu3/v;->c:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public emit(Ljava/lang/Object;Lb3/d;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lu3/v;->a:Lb3/f;

    iget-object v1, p0, Lu3/v;->b:Ljava/lang/Object;

    iget-object p0, p0, Lu3/v;->c:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, p1, v1, p0, p2}, Li1/j;->s(Lb3/f;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lc3/a;->a:Lc3/a;

    if-ne p0, p1, :cond_f

    return-object p0

    :cond_f
    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method
