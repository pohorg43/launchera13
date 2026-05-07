.class public final Lu3/u;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb3/d;
.implements Ld3/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lb3/d<",
        "TT;>;",
        "Ld3/d;"
    }
.end annotation


# instance fields
.field public final a:Lb3/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb3/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Lb3/f;


# direct methods
.method public constructor <init>(Lb3/d;Lb3/f;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb3/d<",
            "-TT;>;",
            "Lb3/f;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu3/u;->a:Lb3/d;

    iput-object p2, p0, Lu3/u;->b:Lb3/f;

    return-void
.end method


# virtual methods
.method public getCallerFrame()Ld3/d;
    .registers 2

    iget-object p0, p0, Lu3/u;->a:Lb3/d;

    instance-of v0, p0, Ld3/d;

    if-eqz v0, :cond_9

    check-cast p0, Ld3/d;

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public getContext()Lb3/f;
    .registers 1

    iget-object p0, p0, Lu3/u;->b:Lb3/f;

    return-object p0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lu3/u;->a:Lb3/d;

    invoke-interface {p0, p1}, Lb3/d;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
