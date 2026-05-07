.class public Lh/j;
.super Lh/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lh/a<",
        "Ll/j;",
        "Landroid/graphics/Path;",
        ">;"
    }
.end annotation


# instance fields
.field public final i:Ll/j;

.field public final j:Landroid/graphics/Path;


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

    invoke-direct {p0, p1}, Lh/a;-><init>(Ljava/util/List;)V

    new-instance p1, Ll/j;

    invoke-direct {p1}, Ll/j;-><init>()V

    iput-object p1, p0, Lh/j;->i:Ll/j;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lh/j;->j:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public f(Lr/a;F)Ljava/lang/Object;
    .registers 16

    iget-object v0, p1, Lr/a;->b:Ljava/lang/Object;

    check-cast v0, Ll/j;

    iget-object p1, p1, Lr/a;->c:Ljava/lang/Object;

    check-cast p1, Ll/j;

    iget-object v1, p0, Lh/j;->i:Ll/j;

    iget-object v2, v1, Ll/j;->b:Landroid/graphics/PointF;

    if-nez v2, :cond_15

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, v1, Ll/j;->b:Landroid/graphics/PointF;

    :cond_15
    iget-boolean v2, v0, Ll/j;->c:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_22

    iget-boolean v2, p1, Ll/j;->c:Z

    if-eqz v2, :cond_20

    goto :goto_22

    :cond_20
    move v2, v3

    goto :goto_23

    :cond_22
    :goto_22
    move v2, v4

    :goto_23
    iput-boolean v2, v1, Ll/j;->c:Z

    iget-object v2, v0, Ll/j;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v5, p1, Ll/j;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eq v2, v5, :cond_57

    const-string v2, "Curves must have the same number of control points. Shape 1: "

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Ll/j;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\tShape 2: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Ll/j;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lq/f;->a(Ljava/lang/String;)V

    :cond_57
    iget-object v2, v0, Ll/j;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v5, p1, Ll/j;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v5, v1, Ll/j;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v2, :cond_84

    iget-object v5, v1, Ll/j;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    :goto_75
    if-ge v5, v2, :cond_a2

    iget-object v6, v1, Ll/j;->a:Ljava/util/List;

    new-instance v7, Lj/a;

    invoke-direct {v7}, Lj/a;-><init>()V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_75

    :cond_84
    iget-object v5, v1, Ll/j;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v2, :cond_a2

    iget-object v5, v1, Ll/j;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    :goto_93
    if-lt v5, v2, :cond_a2

    iget-object v6, v1, Ll/j;->a:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-interface {v6, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v5, v5, -0x1

    goto :goto_93

    :cond_a2
    iget-object v2, v0, Ll/j;->b:Landroid/graphics/PointF;

    iget-object v5, p1, Ll/j;->b:Landroid/graphics/PointF;

    iget v6, v2, Landroid/graphics/PointF;->x:F

    iget v7, v5, Landroid/graphics/PointF;->x:F

    invoke-static {v6, v7, p2}, Lq/i;->e(FFF)F

    move-result v6

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-static {v2, v5, p2}, Lq/i;->e(FFF)F

    move-result v2

    iget-object v5, v1, Ll/j;->b:Landroid/graphics/PointF;

    if-nez v5, :cond_c1

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    iput-object v5, v1, Ll/j;->b:Landroid/graphics/PointF;

    :cond_c1
    iget-object v5, v1, Ll/j;->b:Landroid/graphics/PointF;

    invoke-virtual {v5, v6, v2}, Landroid/graphics/PointF;->set(FF)V

    iget-object v2, v1, Ll/j;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v4

    :goto_cd
    if-ltz v2, :cond_145

    iget-object v4, v0, Ll/j;->a:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj/a;

    iget-object v5, p1, Ll/j;->a:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lj/a;

    iget-object v6, v4, Lj/a;->a:Landroid/graphics/PointF;

    iget-object v7, v4, Lj/a;->b:Landroid/graphics/PointF;

    iget-object v4, v4, Lj/a;->c:Landroid/graphics/PointF;

    iget-object v8, v5, Lj/a;->a:Landroid/graphics/PointF;

    iget-object v9, v5, Lj/a;->b:Landroid/graphics/PointF;

    iget-object v5, v5, Lj/a;->c:Landroid/graphics/PointF;

    iget-object v10, v1, Ll/j;->a:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lj/a;

    iget v11, v6, Landroid/graphics/PointF;->x:F

    iget v12, v8, Landroid/graphics/PointF;->x:F

    invoke-static {v11, v12, p2}, Lq/i;->e(FFF)F

    move-result v11

    iget v6, v6, Landroid/graphics/PointF;->y:F

    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-static {v6, v8, p2}, Lq/i;->e(FFF)F

    move-result v6

    iget-object v8, v10, Lj/a;->a:Landroid/graphics/PointF;

    invoke-virtual {v8, v11, v6}, Landroid/graphics/PointF;->set(FF)V

    iget-object v6, v1, Ll/j;->a:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lj/a;

    iget v8, v7, Landroid/graphics/PointF;->x:F

    iget v10, v9, Landroid/graphics/PointF;->x:F

    invoke-static {v8, v10, p2}, Lq/i;->e(FFF)F

    move-result v8

    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget v9, v9, Landroid/graphics/PointF;->y:F

    invoke-static {v7, v9, p2}, Lq/i;->e(FFF)F

    move-result v7

    iget-object v6, v6, Lj/a;->b:Landroid/graphics/PointF;

    invoke-virtual {v6, v8, v7}, Landroid/graphics/PointF;->set(FF)V

    iget-object v6, v1, Ll/j;->a:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lj/a;

    iget v7, v4, Landroid/graphics/PointF;->x:F

    iget v8, v5, Landroid/graphics/PointF;->x:F

    invoke-static {v7, v8, p2}, Lq/i;->e(FFF)F

    move-result v7

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-static {v4, v5, p2}, Lq/i;->e(FFF)F

    move-result v4

    iget-object v5, v6, Lj/a;->c:Landroid/graphics/PointF;

    invoke-virtual {v5, v7, v4}, Landroid/graphics/PointF;->set(FF)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_cd

    :cond_145
    iget-object p1, p0, Lh/j;->i:Ll/j;

    iget-object p2, p0, Lh/j;->j:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    iget-object v0, p1, Ll/j;->b:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    sget-object v1, Lq/i;->a:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v0}, Landroid/graphics/PointF;->set(FF)V

    :goto_15e
    iget-object v0, p1, Ll/j;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_1a6

    iget-object v0, p1, Ll/j;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj/a;

    iget-object v1, v0, Lj/a;->a:Landroid/graphics/PointF;

    iget-object v2, v0, Lj/a;->b:Landroid/graphics/PointF;

    iget-object v0, v0, Lj/a;->c:Landroid/graphics/PointF;

    sget-object v4, Lq/i;->a:Landroid/graphics/PointF;

    invoke-virtual {v1, v4}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18a

    invoke-virtual {v2, v0}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18a

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_19a

    :cond_18a
    iget v5, v1, Landroid/graphics/PointF;->x:F

    iget v6, v1, Landroid/graphics/PointF;->y:F

    iget v7, v2, Landroid/graphics/PointF;->x:F

    iget v8, v2, Landroid/graphics/PointF;->y:F

    iget v9, v0, Landroid/graphics/PointF;->x:F

    iget v10, v0, Landroid/graphics/PointF;->y:F

    move-object v4, p2

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :goto_19a
    sget-object v1, Lq/i;->a:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v0}, Landroid/graphics/PointF;->set(FF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_15e

    :cond_1a6
    iget-boolean p1, p1, Ll/j;->c:Z

    if-eqz p1, :cond_1ad

    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    :cond_1ad
    iget-object p0, p0, Lh/j;->j:Landroid/graphics/Path;

    return-object p0
.end method
