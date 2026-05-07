.class public final Lu3/t;
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
.field public final a:Ls3/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls3/w<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls3/w;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls3/w<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu3/t;->a:Ls3/w;

    return-void
.end method


# virtual methods
.method public emit(Ljava/lang/Object;Lb3/d;)Ljava/lang/Object;
    .registers 3
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

    iget-object p0, p0, Lu3/t;->a:Ls3/w;

    invoke-interface {p0, p1, p2}, Ls3/w;->f(Ljava/lang/Object;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lc3/a;->a:Lc3/a;

    if-ne p0, p1, :cond_b

    return-object p0

    :cond_b
    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method
