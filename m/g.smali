.class public Lm/g;
.super Lm/b;
.source ""


# instance fields
.field public final w:Lg/d;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/j;Lm/e;)V
    .registers 6

    invoke-direct {p0, p1, p2}, Lm/b;-><init>(Lcom/airbnb/lottie/j;Lm/e;)V

    new-instance v0, Ll/l;

    iget-object p2, p2, Lm/e;->a:Ljava/util/List;

    const-string v1, "__container"

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Ll/l;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    new-instance p2, Lg/d;

    invoke-direct {p2, p1, p0, v0}, Lg/d;-><init>(Lcom/airbnb/lottie/j;Lm/b;Ll/l;)V

    iput-object p2, p0, Lm/g;->w:Lg/d;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lg/d;->setContents(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .registers 4
    .param p1  # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lm/g;->w:Lg/d;

    invoke-virtual {p0, p1, p2, p3}, Lg/d;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lm/b;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p2, p0, Lm/g;->w:Lg/d;

    iget-object p0, p0, Lm/b;->m:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1, p0, p3}, Lg/d;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    return-void
.end method

.method public j(Lj/f;ILjava/util/List;Lj/f;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/f;",
            "I",
            "Ljava/util/List<",
            "Lj/f;",
            ">;",
            "Lj/f;",
            ")V"
        }
    .end annotation

    iget-object p0, p0, Lm/g;->w:Lg/d;

    invoke-virtual {p0, p1, p2, p3, p4}, Lg/d;->a(Lj/f;ILjava/util/List;Lj/f;)V

    return-void
.end method
