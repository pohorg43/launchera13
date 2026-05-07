.class public Lk/f;
.super Lk/m;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk/m<",
        "Lr/d;",
        "Lr/d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lr/a<",
            "Lr/d;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lk/m;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public createAnimation()Lh/a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lh/a<",
            "Lr/d;",
            "Lr/d;",
            ">;"
        }
    .end annotation

    new-instance v0, Lh/d;

    iget-object p0, p0, Lk/m;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lh/d;-><init>(Ljava/util/List;I)V

    return-object v0
.end method
