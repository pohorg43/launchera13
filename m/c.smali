.class public Lm/c;
.super Lm/b;
.source ""


# instance fields
.field public A:Landroid/graphics/Paint;

.field public w:Lh/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lm/b;",
            ">;"
        }
    .end annotation
.end field

.field public final y:Landroid/graphics/RectF;

.field public final z:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/j;Lm/e;Ljava/util/List;Lcom/airbnb/lottie/d;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/j;",
            "Lm/e;",
            "Ljava/util/List<",
            "Lm/e;",
            ">;",
            "Lcom/airbnb/lottie/d;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lm/b;-><init>(Lcom/airbnb/lottie/j;Lm/e;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lm/c;->x:Ljava/util/List;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lm/c;->y:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lm/c;->z:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lm/c;->A:Landroid/graphics/Paint;

    iget-object p2, p2, Lm/e;->s:Lk/b;

    const/4 v0, 0x0

    if-eqz p2, :cond_35

    invoke-virtual {p2}, Lk/b;->createAnimation()Lh/a;

    move-result-object p2

    iput-object p2, p0, Lm/c;->w:Lh/a;

    invoke-virtual {p0, p2}, Lm/b;->c(Lh/a;)V

    iget-object p2, p0, Lm/c;->w:Lh/a;

    iget-object p2, p2, Lh/a;->a:Ljava/util/List;

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_37

    :cond_35
    iput-object v0, p0, Lm/c;->w:Lh/a;

    :goto_37
    new-instance p2, Landroidx/collection/LongSparseArray;

    iget-object v1, p4, Lcom/airbnb/lottie/d;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p2, v1}, Landroidx/collection/LongSparseArray;-><init>(I)V

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    move-object v3, v0

    :goto_49
    const/4 v4, 0x0

    if-ltz v1, :cond_ce

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lm/e;

    iget-object v6, v5, Lm/e;->e:Lm/e$a;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/4 v7, 0x2

    if-eqz v6, :cond_9a

    if-eq v6, v2, :cond_94

    if-eq v6, v7, :cond_8e

    const/4 v8, 0x3

    if-eq v6, v8, :cond_88

    const/4 v8, 0x4

    if-eq v6, v8, :cond_82

    const/4 v8, 0x5

    if-eq v6, v8, :cond_7c

    const-string v6, "Unknown layer type "

    invoke-static {v6}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v5, Lm/e;->e:Lm/e$a;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lq/f;->a(Ljava/lang/String;)V

    move-object v6, v0

    goto :goto_a9

    :cond_7c
    new-instance v6, Lm/i;

    invoke-direct {v6, p1, v5}, Lm/i;-><init>(Lcom/airbnb/lottie/j;Lm/e;)V

    goto :goto_a9

    :cond_82
    new-instance v6, Lm/g;

    invoke-direct {v6, p1, v5}, Lm/g;-><init>(Lcom/airbnb/lottie/j;Lm/e;)V

    goto :goto_a9

    :cond_88
    new-instance v6, Lm/f;

    invoke-direct {v6, p1, v5}, Lm/f;-><init>(Lcom/airbnb/lottie/j;Lm/e;)V

    goto :goto_a9

    :cond_8e
    new-instance v6, Lm/d;

    invoke-direct {v6, p1, v5}, Lm/d;-><init>(Lcom/airbnb/lottie/j;Lm/e;)V

    goto :goto_a9

    :cond_94
    new-instance v6, Lm/h;

    invoke-direct {v6, p1, v5}, Lm/h;-><init>(Lcom/airbnb/lottie/j;Lm/e;)V

    goto :goto_a9

    :cond_9a
    new-instance v6, Lm/c;

    iget-object v8, v5, Lm/e;->g:Ljava/lang/String;

    iget-object v9, p4, Lcom/airbnb/lottie/d;->c:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-direct {v6, p1, v5, v8, p4}, Lm/c;-><init>(Lcom/airbnb/lottie/j;Lm/e;Ljava/util/List;Lcom/airbnb/lottie/d;)V

    :goto_a9
    if-nez v6, :cond_ac

    goto :goto_ca

    :cond_ac
    iget-object v8, v6, Lm/b;->o:Lm/e;

    iget-wide v8, v8, Lm/e;->d:J

    invoke-virtual {p2, v8, v9, v6}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    if-eqz v3, :cond_b9

    iput-object v6, v3, Lm/b;->q:Lm/b;

    move-object v3, v0

    goto :goto_ca

    :cond_b9
    iget-object v8, p0, Lm/c;->x:Ljava/util/List;

    invoke-interface {v8, v4, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget v4, v5, Lm/e;->u:I

    invoke-static {v4}, Lj/b;->f(I)I

    move-result v4

    if-eq v4, v2, :cond_c9

    if-eq v4, v7, :cond_c9

    goto :goto_ca

    :cond_c9
    move-object v3, v6

    :goto_ca
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_49

    :cond_ce
    :goto_ce
    invoke-virtual {p2}, Landroidx/collection/LongSparseArray;->size()I

    move-result p0

    if-ge v4, p0, :cond_f2

    invoke-virtual {p2, v4}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide p0

    invoke-virtual {p2, p0, p1}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm/b;

    if-nez p0, :cond_e1

    goto :goto_ef

    :cond_e1
    iget-object p1, p0, Lm/b;->o:Lm/e;

    iget-wide p3, p1, Lm/e;->f:J

    invoke-virtual {p2, p3, p4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lm/b;

    if-eqz p1, :cond_ef

    iput-object p1, p0, Lm/b;->r:Lm/b;

    :cond_ef
    :goto_ef
    add-int/lit8 v4, v4, 0x1

    goto :goto_ce

    :cond_f2
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Lr/c;)V
    .registers 4
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

    iget-object v0, p0, Lm/b;->u:Lh/m;

    invoke-virtual {v0, p1, p2}, Lh/m;->c(Ljava/lang/Object;Lr/c;)Z

    sget-object v0, Lcom/airbnb/lottie/o;->A:Ljava/lang/Float;

    if-ne p1, v0, :cond_19

    const/4 p1, 0x0

    if-nez p2, :cond_f

    iput-object p1, p0, Lm/c;->w:Lh/a;

    goto :goto_19

    :cond_f
    new-instance v0, Lh/n;

    invoke-direct {v0, p2, p1}, Lh/n;-><init>(Lr/c;Ljava/lang/Object;)V

    iput-object v0, p0, Lm/c;->w:Lh/a;

    invoke-virtual {p0, v0}, Lm/b;->c(Lh/a;)V

    :cond_19
    :goto_19
    return-void
.end method

.method public f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .registers 10

    iget-object v0, p0, Lm/c;->z:Landroid/graphics/RectF;

    iget-object v1, p0, Lm/b;->o:Lm/e;

    iget v2, v1, Lm/e;->o:I

    int-to-float v2, v2

    iget v1, v1, Lm/e;->p:I

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v2, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lm/c;->z:Landroid/graphics/RectF;

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lm/b;->n:Lcom/airbnb/lottie/j;

    iget-boolean v0, v0, Lcom/airbnb/lottie/j;->q:Z

    const/16 v1, 0xff

    const/4 v2, 0x1

    if-eqz v0, :cond_28

    iget-object v0, p0, Lm/c;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_28

    if-eq p3, v1, :cond_28

    move v0, v2

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    if-eqz v0, :cond_3f

    iget-object v3, p0, Lm/c;->A:Landroid/graphics/Paint;

    invoke-virtual {v3, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v3, p0, Lm/c;->z:Landroid/graphics/RectF;

    iget-object v4, p0, Lm/c;->A:Landroid/graphics/Paint;

    sget-object v5, Lq/j;->a:Landroid/graphics/PathMeasure;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    const-string v3, "Utils#saveLayer"

    invoke-static {v3}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)F

    goto :goto_42

    :cond_3f
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    :goto_42
    if-eqz v0, :cond_45

    move p3, v1

    :cond_45
    iget-object v0, p0, Lm/c;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_4c
    if-ltz v0, :cond_6e

    iget-object v1, p0, Lm/c;->z:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5d

    iget-object v1, p0, Lm/c;->z:Landroid/graphics/RectF;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    move-result v1

    goto :goto_5e

    :cond_5d
    move v1, v2

    :goto_5e
    if-eqz v1, :cond_6b

    iget-object v1, p0, Lm/c;->x:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm/b;

    invoke-virtual {v1, p1, p2, p3}, Lm/b;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    :cond_6b
    add-int/lit8 v0, v0, -0x1

    goto :goto_4c

    :cond_6e
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const-string p0, "CompositionLayer#draw"

    invoke-static {p0}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)F

    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .registers 7

    invoke-super {p0, p1, p2, p3}, Lm/b;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p2, p0, Lm/c;->x:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    :goto_b
    if-ltz p2, :cond_2a

    iget-object v0, p0, Lm/c;->y:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lm/c;->x:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/b;

    iget-object v1, p0, Lm/c;->y:Landroid/graphics/RectF;

    iget-object v2, p0, Lm/b;->m:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v2, p3}, Lm/b;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object v0, p0, Lm/c;->y:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_b

    :cond_2a
    return-void
.end method

.method public j(Lj/f;ILjava/util/List;Lj/f;)V
    .registers 7
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

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lm/c;->x:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lm/c;->x:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm/b;

    invoke-virtual {v1, p1, p2, p3, p4}, Lm/b;->a(Lj/f;ILjava/util/List;Lj/f;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public k(F)V
    .registers 5
    .param p1  # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    invoke-super {p0, p1}, Lm/b;->k(F)V

    iget-object v0, p0, Lm/c;->w:Lh/a;

    if-eqz v0, :cond_2f

    iget-object p1, p0, Lm/b;->n:Lcom/airbnb/lottie/j;

    iget-object p1, p1, Lcom/airbnb/lottie/j;->b:Lcom/airbnb/lottie/d;

    invoke-virtual {p1}, Lcom/airbnb/lottie/d;->c()F

    move-result p1

    const v0, 0x3c23d70a  # 0.01f

    add-float/2addr p1, v0

    iget-object v0, p0, Lm/b;->o:Lm/e;

    iget-object v0, v0, Lm/e;->b:Lcom/airbnb/lottie/d;

    iget v0, v0, Lcom/airbnb/lottie/d;->k:F

    iget-object v1, p0, Lm/c;->w:Lh/a;

    invoke-virtual {v1}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lm/b;->o:Lm/e;

    iget-object v2, v2, Lm/e;->b:Lcom/airbnb/lottie/d;

    iget v2, v2, Lcom/airbnb/lottie/d;->m:F

    mul-float/2addr v1, v2

    sub-float/2addr v1, v0

    div-float p1, v1, p1

    :cond_2f
    iget-object v0, p0, Lm/b;->o:Lm/e;

    iget v1, v0, Lm/e;->m:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_39

    div-float/2addr p1, v1

    :cond_39
    iget-object v1, p0, Lm/c;->w:Lh/a;

    if-nez v1, :cond_47

    iget v1, v0, Lm/e;->n:F

    iget-object v0, v0, Lm/e;->b:Lcom/airbnb/lottie/d;

    invoke-virtual {v0}, Lcom/airbnb/lottie/d;->c()F

    move-result v0

    div-float/2addr v1, v0

    sub-float/2addr p1, v1

    :cond_47
    iget-object v0, p0, Lm/c;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_4d
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_5d

    iget-object v1, p0, Lm/c;->x:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm/b;

    invoke-virtual {v1, p1}, Lm/b;->k(F)V

    goto :goto_4d

    :cond_5d
    return-void
.end method
