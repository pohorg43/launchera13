.class public Lk/g;
.super Lk/m;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk/m<",
        "Ll/j;",
        "Landroid/graphics/Path;",
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
            "Ll/j;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lk/m;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public createAnimation()Lh/a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lh/a<",
            "Ll/j;",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation

    new-instance v0, Lh/j;

    iget-object p0, p0, Lk/m;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-direct {v0, p0}, Lh/j;-><init>(Ljava/util/List;)V

    return-object v0
.end method
