.class public Lg/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lk/l;


# instance fields
.field public a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_e

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lg/b;->a:Ljava/lang/Object;

    return-void

    :cond_e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lg/b;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/b;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Path;)V
    .registers 7

    iget-object v0, p0, Lg/b;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_44

    iget-object v1, p0, Lg/b;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/s;

    sget-object v2, Lq/j;->a:Landroid/graphics/PathMeasure;

    if-eqz v1, :cond_41

    iget-boolean v2, v1, Lg/s;->a:Z

    if-eqz v2, :cond_1f

    goto :goto_41

    :cond_1f
    iget-object v2, v1, Lg/s;->d:Lh/a;

    check-cast v2, Lh/c;

    invoke-virtual {v2}, Lh/c;->i()F

    move-result v2

    iget-object v3, v1, Lg/s;->e:Lh/a;

    check-cast v3, Lh/c;

    invoke-virtual {v3}, Lh/c;->i()F

    move-result v3

    iget-object v1, v1, Lg/s;->f:Lh/a;

    check-cast v1, Lh/c;

    invoke-virtual {v1}, Lh/c;->i()F

    move-result v1

    const/high16 v4, 0x42c80000  # 100.0f

    div-float/2addr v2, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x43b40000  # 360.0f

    div-float/2addr v1, v4

    invoke-static {p1, v2, v3, v1}, Lq/j;->a(Landroid/graphics/Path;FFF)V

    :cond_41
    :goto_41
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_44
    return-void
.end method

.method public createAnimation()Lh/a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lh/a<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lg/b;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/a;

    invoke-virtual {v0}, Lr/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance v0, Lh/d;

    iget-object p0, p0, Lg/b;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lh/d;-><init>(Ljava/util/List;I)V

    return-object v0

    :cond_1c
    new-instance v0, Lh/i;

    iget-object p0, p0, Lg/b;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-direct {v0, p0}, Lh/i;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getKeyframes()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lr/a<",
            "Landroid/graphics/PointF;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lg/b;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public isStatic()Z
    .registers 4

    iget-object v0, p0, Lg/b;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1d

    iget-object p0, p0, Lg/b;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr/a;

    invoke-virtual {p0}, Lr/a;->d()Z

    move-result p0

    if-eqz p0, :cond_1d

    move v1, v2

    :cond_1d
    return v1
.end method
