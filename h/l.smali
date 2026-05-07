.class public Lh/l;
.super Lh/f;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lh/f<",
        "Lj/c;",
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
            "Lj/c;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lh/f;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public f(Lr/a;F)Ljava/lang/Object;
    .registers 3

    iget-object p0, p1, Lr/a;->b:Ljava/lang/Object;

    check-cast p0, Lj/c;

    return-object p0
.end method
