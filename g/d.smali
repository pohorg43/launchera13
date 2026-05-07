.class public Lg/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lg/e;
.implements Lg/m;
.implements Lh/a$b;
.implements Lj/g;


# instance fields
.field public a:Landroid/graphics/Paint;

.field public b:Landroid/graphics/RectF;

.field public final c:Landroid/graphics/Matrix;

.field public final d:Landroid/graphics/Path;

.field public final e:Landroid/graphics/RectF;

.field public final f:Ljava/lang/String;

.field public final g:Z

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg/c;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lcom/airbnb/lottie/j;

.field public j:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg/m;",
            ">;"
        }
    .end annotation
.end field

.field public k:Lh/m;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/j;Lm/b;Ljava/lang/String;ZLjava/util/List;Lk/k;)V
    .registers 8
    .param p6  # Lk/k;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/j;",
            "Lm/b;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Lg/c;",
            ">;",
            "Lk/k;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lf/a;

    invoke-direct {v0}, Lf/a;-><init>()V

    iput-object v0, p0, Lg/d;->a:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lg/d;->b:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lg/d;->c:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lg/d;->d:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lg/d;->e:Landroid/graphics/RectF;

    iput-object p3, p0, Lg/d;->f:Ljava/lang/String;

    iput-object p1, p0, Lg/d;->i:Lcom/airbnb/lottie/j;

    iput-boolean p4, p0, Lg/d;->g:Z

    iput-object p5, p0, Lg/d;->h:Ljava/util/List;

    if-eqz p6, :cond_3f

    new-instance p1, Lh/m;

    invoke-direct {p1, p6}, Lh/m;-><init>(Lk/k;)V

    iput-object p1, p0, Lg/d;->k:Lh/m;

    invoke-virtual {p1, p2}, Lh/m;->a(Lm/b;)V

    iget-object p1, p0, Lg/d;->k:Lh/m;

    invoke-virtual {p1, p0}, Lh/m;->b(Lh/a$b;)V

    :cond_3f
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p1

    :cond_48
    :goto_48
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_5c

    invoke-interface {p5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/c;

    instance-of p3, p2, Lg/j;

    if-eqz p3, :cond_48

    check-cast p2, Lg/j;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_48

    :cond_5c
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_60
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_76

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/j;

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p3

    invoke-interface {p5, p3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p3

    invoke-interface {p2, p3}, Lg/j;->absorbContent(Ljava/util/ListIterator;)V

    goto :goto_60

    :cond_76
    return-void
.end method

.method public constructor <init>(Lcom/airbnb/lottie/j;Lm/b;Ll/l;)V
    .registers 11

    iget-object v3, p3, Ll/l;->a:Ljava/lang/String;

    iget-boolean v4, p3, Ll/l;->c:Z

    iget-object v0, p3, Ll/l;->b:Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_29

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ll/b;

    invoke-interface {v6, p1, p2}, Ll/b;->a(Lcom/airbnb/lottie/j;Lm/b;)Lg/c;

    move-result-object v6

    if-eqz v6, :cond_26

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_29
    iget-object p3, p3, Ll/l;->b:Ljava/util/List;

    :goto_2b
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_42

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll/b;

    instance-of v2, v0, Lk/k;

    if-eqz v2, :cond_3f

    check-cast v0, Lk/k;

    move-object v6, v0

    goto :goto_44

    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :cond_42
    const/4 p3, 0x0

    move-object v6, p3

    :goto_44
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lg/d;-><init>(Lcom/airbnb/lottie/j;Lm/b;Ljava/lang/String;ZLjava/util/List;Lk/k;)V

    return-void
.end method


# virtual methods
.method public a(Lj/f;ILjava/util/List;Lj/f;)V
    .registers 8
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

    iget-object v0, p0, Lg/d;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lj/f;->e(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lg/d;->f:Ljava/lang/String;

    const-string v1, "__container"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lg/d;->f:Ljava/lang/String;

    invoke-virtual {p4, v0}, Lj/f;->a(Ljava/lang/String;)Lj/f;

    move-result-object p4

    iget-object v0, p0, Lg/d;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lj/f;->c(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p4, p0}, Lj/f;->g(Lj/g;)Lj/f;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_28
    iget-object v0, p0, Lg/d;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lj/f;->f(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Lg/d;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lj/f;->d(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr v0, p2

    const/4 p2, 0x0

    :goto_38
    iget-object v1, p0, Lg/d;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_54

    iget-object v1, p0, Lg/d;->h:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/c;

    instance-of v2, v1, Lj/g;

    if-eqz v2, :cond_51

    check-cast v1, Lj/g;

    invoke-interface {v1, p1, v0, p3, p4}, Lj/g;->a(Lj/f;ILjava/util/List;Lj/f;)V

    :cond_51
    add-int/lit8 p2, p2, 0x1

    goto :goto_38

    :cond_54
    return-void
.end method

.method public b(Ljava/lang/Object;Lr/c;)V
    .registers 3
    .param p2  # Lr/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lr/c<",
            "TT;>;)V"
        }
    .end annotation

    iget-object p0, p0, Lg/d;->k:Lh/m;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1, p2}, Lh/m;->c(Ljava/lang/Object;Lr/c;)Z

    :cond_7
    return-void
.end method

.method public c()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lg/m;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lg/d;->j:Ljava/util/List;

    if-nez v0, :cond_2a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/d;->j:Ljava/util/List;

    const/4 v0, 0x0

    :goto_c
    iget-object v1, p0, Lg/d;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2a

    iget-object v1, p0, Lg/d;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/c;

    instance-of v2, v1, Lg/m;

    if-eqz v2, :cond_27

    iget-object v2, p0, Lg/d;->j:Ljava/util/List;

    check-cast v1, Lg/m;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_2a
    iget-object p0, p0, Lg/d;->j:Ljava/util/List;

    return-object p0
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .registers 9

    iget-boolean v0, p0, Lg/d;->g:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lg/d;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lg/d;->k:Lh/m;

    if-eqz p2, :cond_35

    iget-object v0, p0, Lg/d;->c:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Lh/m;->e()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    iget-object p2, p0, Lg/d;->k:Lh/m;

    iget-object p2, p2, Lh/m;->j:Lh/a;

    if-nez p2, :cond_20

    const/16 p2, 0x64

    goto :goto_2a

    :cond_20
    invoke-virtual {p2}, Lh/a;->e()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_2a
    int-to-float p2, p2

    const/high16 v0, 0x42c80000  # 100.0f

    div-float/2addr p2, v0

    int-to-float p3, p3

    mul-float/2addr p2, p3

    const/high16 p3, 0x437f0000  # 255.0f

    div-float/2addr p2, p3

    mul-float/2addr p2, p3

    float-to-int p3, p2

    :cond_35
    iget-object p2, p0, Lg/d;->i:Lcom/airbnb/lottie/j;

    iget-boolean p2, p2, Lcom/airbnb/lottie/j;->q:Z

    const/16 v0, 0xff

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_63

    move p2, v1

    move v3, p2

    :goto_41
    iget-object v4, p0, Lg/d;->h:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge p2, v4, :cond_5d

    iget-object v4, p0, Lg/d;->h:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lg/e;

    if-eqz v4, :cond_5a

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x2

    if-lt v3, v4, :cond_5a

    move p2, v2

    goto :goto_5e

    :cond_5a
    add-int/lit8 p2, p2, 0x1

    goto :goto_41

    :cond_5d
    move p2, v1

    :goto_5e
    if-eqz p2, :cond_63

    if-eq p3, v0, :cond_63

    move v1, v2

    :cond_63
    if-eqz v1, :cond_85

    iget-object p2, p0, Lg/d;->b:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v3, v3, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p2, p0, Lg/d;->b:Landroid/graphics/RectF;

    iget-object v3, p0, Lg/d;->c:Landroid/graphics/Matrix;

    invoke-virtual {p0, p2, v3, v2}, Lg/d;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p2, p0, Lg/d;->a:Landroid/graphics/Paint;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p2, p0, Lg/d;->b:Landroid/graphics/RectF;

    iget-object v3, p0, Lg/d;->a:Landroid/graphics/Paint;

    sget-object v4, Lq/j;->a:Landroid/graphics/PathMeasure;

    invoke-virtual {p1, p2, v3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    const-string p2, "Utils#saveLayer"

    invoke-static {p2}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)F

    :cond_85
    if-eqz v1, :cond_88

    move p3, v0

    :cond_88
    iget-object p2, p0, Lg/d;->h:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v2

    :goto_8f
    if-ltz p2, :cond_a5

    iget-object v0, p0, Lg/d;->h:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lg/e;

    if-eqz v2, :cond_a2

    check-cast v0, Lg/e;

    iget-object v2, p0, Lg/d;->c:Landroid/graphics/Matrix;

    invoke-interface {v0, p1, v2, p3}, Lg/e;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    :cond_a2
    add-int/lit8 p2, p2, -0x1

    goto :goto_8f

    :cond_a5
    if-eqz v1, :cond_aa

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_aa
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .registers 7

    iget-object v0, p0, Lg/d;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lg/d;->k:Lh/m;

    if-eqz p2, :cond_12

    iget-object v0, p0, Lg/d;->c:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Lh/m;->e()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_12
    iget-object p2, p0, Lg/d;->e:Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p2, p0, Lg/d;->h:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_20
    if-ltz p2, :cond_3f

    iget-object v0, p0, Lg/d;->h:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/c;

    instance-of v1, v0, Lg/e;

    if-eqz v1, :cond_3c

    check-cast v0, Lg/e;

    iget-object v1, p0, Lg/d;->e:Landroid/graphics/RectF;

    iget-object v2, p0, Lg/d;->c:Landroid/graphics/Matrix;

    invoke-interface {v0, v1, v2, p3}, Lg/e;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object v0, p0, Lg/d;->e:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    :cond_3c
    add-int/lit8 p2, p2, -0x1

    goto :goto_20

    :cond_3f
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lg/d;->f:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Landroid/graphics/Path;
    .registers 5

    iget-object v0, p0, Lg/d;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lg/d;->k:Lh/m;

    if-eqz v0, :cond_12

    iget-object v1, p0, Lg/d;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Lh/m;->e()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    :cond_12
    iget-object v0, p0, Lg/d;->d:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-boolean v0, p0, Lg/d;->g:Z

    if-eqz v0, :cond_1e

    iget-object p0, p0, Lg/d;->d:Landroid/graphics/Path;

    return-object p0

    :cond_1e
    iget-object v0, p0, Lg/d;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_26
    if-ltz v0, :cond_44

    iget-object v1, p0, Lg/d;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/c;

    instance-of v2, v1, Lg/m;

    if-eqz v2, :cond_41

    iget-object v2, p0, Lg/d;->d:Landroid/graphics/Path;

    check-cast v1, Lg/m;

    invoke-interface {v1}, Lg/m;->getPath()Landroid/graphics/Path;

    move-result-object v1

    iget-object v3, p0, Lg/d;->c:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    :cond_41
    add-int/lit8 v0, v0, -0x1

    goto :goto_26

    :cond_44
    iget-object p0, p0, Lg/d;->d:Landroid/graphics/Path;

    return-object p0
.end method

.method public onValueChanged()V
    .registers 1

    iget-object p0, p0, Lg/d;->i:Lcom/airbnb/lottie/j;

    invoke-virtual {p0}, Lcom/airbnb/lottie/j;->invalidateSelf()V

    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lg/c;",
            ">;",
            "Ljava/util/List<",
            "Lg/c;",
            ">;)V"
        }
    .end annotation

    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lg/d;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lg/d;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1b
    if-ltz p1, :cond_35

    iget-object v0, p0, Lg/d;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/c;

    iget-object v1, p0, Lg/d;->h:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lg/c;->setContents(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_1b

    :cond_35
    return-void
.end method
