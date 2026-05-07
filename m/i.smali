.class public Lm/i;
.super Lm/b;
.source ""


# instance fields
.field public final A:Landroid/graphics/Paint;

.field public final B:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lj/e;",
            "Ljava/util/List<",
            "Lg/d;",
            ">;>;"
        }
    .end annotation
.end field

.field public final C:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final D:Lh/l;

.field public final E:Lcom/airbnb/lottie/j;

.field public final F:Lcom/airbnb/lottie/d;

.field public G:Lh/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public H:Lh/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public I:Lh/a;
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

.field public J:Lh/a;
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

.field public K:Lh/a;
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

.field public final w:Ljava/lang/StringBuilder;

.field public final x:Landroid/graphics/RectF;

.field public final y:Landroid/graphics/Matrix;

.field public final z:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/j;Lm/e;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lm/b;-><init>(Lcom/airbnb/lottie/j;Lm/e;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lm/i;->w:Ljava/lang/StringBuilder;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lm/i;->x:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lm/i;->y:Landroid/graphics/Matrix;

    new-instance v0, Lm/i$a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lm/i$a;-><init>(Lm/i;I)V

    iput-object v0, p0, Lm/i;->z:Landroid/graphics/Paint;

    new-instance v0, Lm/i$b;

    invoke-direct {v0, p0, v1}, Lm/i$b;-><init>(Lm/i;I)V

    iput-object v0, p0, Lm/i;->A:Landroid/graphics/Paint;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lm/i;->B:Ljava/util/Map;

    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lm/i;->C:Landroidx/collection/LongSparseArray;

    iput-object p1, p0, Lm/i;->E:Lcom/airbnb/lottie/j;

    iget-object p1, p2, Lm/e;->b:Lcom/airbnb/lottie/d;

    iput-object p1, p0, Lm/i;->F:Lcom/airbnb/lottie/d;

    iget-object p1, p2, Lm/e;->q:Lk/i;

    new-instance v0, Lh/l;

    iget-object p1, p1, Lk/m;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-direct {v0, p1}, Lh/l;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lm/i;->D:Lh/l;

    iget-object p1, v0, Lh/a;->a:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lm/b;->c(Lh/a;)V

    iget-object p1, p2, Lm/e;->r:Lk/j;

    if-eqz p1, :cond_69

    iget-object p2, p1, Lk/j;->a:Lk/a;

    if-eqz p2, :cond_69

    invoke-virtual {p2}, Lk/a;->createAnimation()Lh/a;

    move-result-object p2

    iput-object p2, p0, Lm/i;->G:Lh/a;

    iget-object p2, p2, Lh/a;->a:Ljava/util/List;

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lm/i;->G:Lh/a;

    invoke-virtual {p0, p2}, Lm/b;->c(Lh/a;)V

    :cond_69
    if-eqz p1, :cond_7f

    iget-object p2, p1, Lk/j;->b:Lk/a;

    if-eqz p2, :cond_7f

    invoke-virtual {p2}, Lk/a;->createAnimation()Lh/a;

    move-result-object p2

    iput-object p2, p0, Lm/i;->H:Lh/a;

    iget-object p2, p2, Lh/a;->a:Ljava/util/List;

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lm/i;->H:Lh/a;

    invoke-virtual {p0, p2}, Lm/b;->c(Lh/a;)V

    :cond_7f
    if-eqz p1, :cond_95

    iget-object p2, p1, Lk/j;->c:Lk/b;

    if-eqz p2, :cond_95

    invoke-virtual {p2}, Lk/b;->createAnimation()Lh/a;

    move-result-object p2

    iput-object p2, p0, Lm/i;->I:Lh/a;

    iget-object p2, p2, Lh/a;->a:Ljava/util/List;

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lm/i;->I:Lh/a;

    invoke-virtual {p0, p2}, Lm/b;->c(Lh/a;)V

    :cond_95
    if-eqz p1, :cond_ab

    iget-object p1, p1, Lk/j;->d:Lk/b;

    if-eqz p1, :cond_ab

    invoke-virtual {p1}, Lk/b;->createAnimation()Lh/a;

    move-result-object p1

    iput-object p1, p0, Lm/i;->J:Lh/a;

    iget-object p1, p1, Lh/a;->a:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lm/i;->J:Lh/a;

    invoke-virtual {p0, p1}, Lm/b;->c(Lh/a;)V

    :cond_ab
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Lr/c;)V
    .registers 5
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

    sget-object v0, Lcom/airbnb/lottie/o;->a:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_34

    iget-object p1, p0, Lm/i;->G:Lh/a;

    if-eqz p1, :cond_14

    iget-object p0, p1, Lh/a;->e:Lr/c;

    iput-object p2, p1, Lh/a;->e:Lr/c;

    goto/16 :goto_dc

    :cond_14
    if-nez p2, :cond_21

    if-eqz p1, :cond_1d

    iget-object p2, p0, Lm/b;->t:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1d
    iput-object v1, p0, Lm/i;->G:Lh/a;

    goto/16 :goto_dc

    :cond_21
    new-instance p1, Lh/n;

    invoke-direct {p1, p2, v1}, Lh/n;-><init>(Lr/c;Ljava/lang/Object;)V

    iput-object p1, p0, Lm/i;->G:Lh/a;

    iget-object p1, p1, Lh/a;->a:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lm/i;->G:Lh/a;

    invoke-virtual {p0, p1}, Lm/b;->c(Lh/a;)V

    goto/16 :goto_dc

    :cond_34
    sget-object v0, Lcom/airbnb/lottie/o;->b:Ljava/lang/Integer;

    if-ne p1, v0, :cond_62

    iget-object p1, p0, Lm/i;->H:Lh/a;

    if-eqz p1, :cond_42

    iget-object p0, p1, Lh/a;->e:Lr/c;

    iput-object p2, p1, Lh/a;->e:Lr/c;

    goto/16 :goto_dc

    :cond_42
    if-nez p2, :cond_4f

    if-eqz p1, :cond_4b

    iget-object p2, p0, Lm/b;->t:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_4b
    iput-object v1, p0, Lm/i;->H:Lh/a;

    goto/16 :goto_dc

    :cond_4f
    new-instance p1, Lh/n;

    invoke-direct {p1, p2, v1}, Lh/n;-><init>(Lr/c;Ljava/lang/Object;)V

    iput-object p1, p0, Lm/i;->H:Lh/a;

    iget-object p1, p1, Lh/a;->a:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lm/i;->H:Lh/a;

    invoke-virtual {p0, p1}, Lm/b;->c(Lh/a;)V

    goto/16 :goto_dc

    :cond_62
    sget-object v0, Lcom/airbnb/lottie/o;->o:Ljava/lang/Float;

    if-ne p1, v0, :cond_8e

    iget-object p1, p0, Lm/i;->I:Lh/a;

    if-eqz p1, :cond_70

    iget-object p0, p1, Lh/a;->e:Lr/c;

    iput-object p2, p1, Lh/a;->e:Lr/c;

    goto/16 :goto_dc

    :cond_70
    if-nez p2, :cond_7c

    if-eqz p1, :cond_79

    iget-object p2, p0, Lm/b;->t:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_79
    iput-object v1, p0, Lm/i;->I:Lh/a;

    goto :goto_dc

    :cond_7c
    new-instance p1, Lh/n;

    invoke-direct {p1, p2, v1}, Lh/n;-><init>(Lr/c;Ljava/lang/Object;)V

    iput-object p1, p0, Lm/i;->I:Lh/a;

    iget-object p1, p1, Lh/a;->a:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lm/i;->I:Lh/a;

    invoke-virtual {p0, p1}, Lm/b;->c(Lh/a;)V

    goto :goto_dc

    :cond_8e
    sget-object v0, Lcom/airbnb/lottie/o;->p:Ljava/lang/Float;

    if-ne p1, v0, :cond_b9

    iget-object p1, p0, Lm/i;->J:Lh/a;

    if-eqz p1, :cond_9b

    iget-object p0, p1, Lh/a;->e:Lr/c;

    iput-object p2, p1, Lh/a;->e:Lr/c;

    goto :goto_dc

    :cond_9b
    if-nez p2, :cond_a7

    if-eqz p1, :cond_a4

    iget-object p2, p0, Lm/b;->t:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_a4
    iput-object v1, p0, Lm/i;->J:Lh/a;

    goto :goto_dc

    :cond_a7
    new-instance p1, Lh/n;

    invoke-direct {p1, p2, v1}, Lh/n;-><init>(Lr/c;Ljava/lang/Object;)V

    iput-object p1, p0, Lm/i;->J:Lh/a;

    iget-object p1, p1, Lh/a;->a:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lm/i;->J:Lh/a;

    invoke-virtual {p0, p1}, Lm/b;->c(Lh/a;)V

    goto :goto_dc

    :cond_b9
    sget-object v0, Lcom/airbnb/lottie/o;->B:Ljava/lang/Float;

    if-ne p1, v0, :cond_dc

    if-nez p2, :cond_cb

    iget-object p1, p0, Lm/i;->K:Lh/a;

    if-eqz p1, :cond_c8

    iget-object p2, p0, Lm/b;->t:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_c8
    iput-object v1, p0, Lm/i;->K:Lh/a;

    goto :goto_dc

    :cond_cb
    new-instance p1, Lh/n;

    invoke-direct {p1, p2, v1}, Lh/n;-><init>(Lr/c;Ljava/lang/Object;)V

    iput-object p1, p0, Lm/i;->K:Lh/a;

    iget-object p1, p1, Lh/a;->a:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lm/i;->K:Lh/a;

    invoke-virtual {p0, p1}, Lm/b;->c(Lh/a;)V

    :cond_dc
    :goto_dc
    return-void
.end method

.method public f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v2, v0, Lm/i;->E:Lcom/airbnb/lottie/j;

    iget-object v2, v2, Lcom/airbnb/lottie/j;->b:Lcom/airbnb/lottie/d;

    iget-object v2, v2, Lcom/airbnb/lottie/d;->g:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v2}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v2

    if-lez v2, :cond_15

    const/4 v2, 0x1

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :goto_16
    if-nez v2, :cond_1b

    invoke-virtual/range {p1 .. p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    :cond_1b
    iget-object v2, v0, Lm/i;->D:Lh/l;

    invoke-virtual {v2}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj/c;

    iget-object v3, v0, Lm/i;->F:Lcom/airbnb/lottie/d;

    iget-object v3, v3, Lcom/airbnb/lottie/d;->e:Ljava/util/Map;

    iget-object v4, v2, Lj/c;->b:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj/d;

    if-nez v3, :cond_35

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_35
    iget-object v4, v0, Lm/i;->G:Lh/a;

    if-eqz v4, :cond_49

    iget-object v5, v0, Lm/i;->z:Landroid/graphics/Paint;

    invoke-virtual {v4}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_50

    :cond_49
    iget-object v4, v0, Lm/i;->z:Landroid/graphics/Paint;

    iget v5, v2, Lj/c;->h:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    :goto_50
    iget-object v4, v0, Lm/i;->H:Lh/a;

    if-eqz v4, :cond_64

    iget-object v5, v0, Lm/i;->A:Landroid/graphics/Paint;

    invoke-virtual {v4}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_6b

    :cond_64
    iget-object v4, v0, Lm/i;->A:Landroid/graphics/Paint;

    iget v5, v2, Lj/c;->i:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    :goto_6b
    iget-object v4, v0, Lm/b;->u:Lh/m;

    iget-object v4, v4, Lh/m;->j:Lh/a;

    const/16 v5, 0x64

    if-nez v4, :cond_75

    move v4, v5

    goto :goto_7f

    :cond_75
    invoke-virtual {v4}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_7f
    mul-int/lit16 v4, v4, 0xff

    div-int/2addr v4, v5

    iget-object v5, v0, Lm/i;->z:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v5, v0, Lm/i;->A:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, v0, Lm/i;->I:Lh/a;

    if-eqz v4, :cond_a0

    iget-object v5, v0, Lm/i;->A:Landroid/graphics/Paint;

    invoke-virtual {v4}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_b1

    :cond_a0
    invoke-static/range {p2 .. p2}, Lq/j;->d(Landroid/graphics/Matrix;)F

    move-result v4

    iget-object v5, v0, Lm/i;->A:Landroid/graphics/Paint;

    iget v6, v2, Lj/c;->j:F

    invoke-static {}, Lq/j;->c()F

    move-result v7

    mul-float/2addr v7, v6

    mul-float/2addr v7, v4

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :goto_b1
    iget-object v4, v0, Lm/i;->E:Lcom/airbnb/lottie/j;

    iget-object v4, v4, Lcom/airbnb/lottie/j;->b:Lcom/airbnb/lottie/d;

    iget-object v4, v4, Lcom/airbnb/lottie/d;->g:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v4}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v4

    if-lez v4, :cond_bf

    const/4 v4, 0x1

    goto :goto_c0

    :cond_bf
    const/4 v4, 0x0

    :goto_c0
    if-eqz v4, :cond_26a

    iget-object v4, v0, Lm/i;->K:Lh/a;

    if-nez v4, :cond_c9

    iget v4, v2, Lj/c;->c:F

    goto :goto_d3

    :cond_c9
    invoke-virtual {v4}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    :goto_d3
    const/high16 v5, 0x42c80000  # 100.0f

    div-float/2addr v4, v5

    invoke-static/range {p2 .. p2}, Lq/j;->d(Landroid/graphics/Matrix;)F

    move-result v5

    iget-object v6, v2, Lj/c;->a:Ljava/lang/String;

    iget v7, v2, Lj/c;->f:F

    invoke-static {}, Lq/j;->c()F

    move-result v8

    mul-float/2addr v8, v7

    invoke-virtual {v0, v6}, Lm/i;->p(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v9, 0x0

    :goto_ec
    if-ge v9, v7, :cond_444

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_f6
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v12, v13, :cond_137

    invoke-virtual {v10, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    iget-object v14, v3, Lj/d;->a:Ljava/lang/String;

    iget-object v15, v3, Lj/d;->c:Ljava/lang/String;

    invoke-static {v13, v14, v15}, Lj/e;->a(CLjava/lang/String;Ljava/lang/String;)I

    move-result v13

    iget-object v14, v0, Lm/i;->F:Lcom/airbnb/lottie/d;

    iget-object v14, v14, Lcom/airbnb/lottie/d;->g:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v14, v13}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lj/e;

    if-nez v13, :cond_11a

    move v13, v8

    move/from16 v16, v9

    move-object/from16 p3, v10

    goto :goto_12f

    :cond_11a
    float-to-double v14, v11

    move-object/from16 p3, v10

    iget-wide v10, v13, Lj/e;->c:D

    move v13, v8

    move/from16 v16, v9

    float-to-double v8, v4

    mul-double/2addr v10, v8

    invoke-static {}, Lq/j;->c()F

    move-result v8

    float-to-double v8, v8

    mul-double/2addr v10, v8

    float-to-double v8, v5

    mul-double/2addr v10, v8

    add-double/2addr v10, v14

    double-to-float v8, v10

    move v11, v8

    :goto_12f
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v10, p3

    move v8, v13

    move/from16 v9, v16

    goto :goto_f6

    :cond_137
    move v13, v8

    move/from16 v16, v9

    move-object/from16 p3, v10

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v8, v2, Lj/c;->d:I

    invoke-virtual {v0, v8, v1, v11}, Lm/i;->m(ILandroid/graphics/Canvas;F)V

    add-int/lit8 v8, v7, -0x1

    int-to-float v8, v8

    mul-float/2addr v8, v13

    const/high16 v9, 0x40000000  # 2.0f

    div-float/2addr v8, v9

    move/from16 v9, v16

    int-to-float v10, v9

    mul-float/2addr v10, v13

    sub-float/2addr v10, v8

    const/4 v8, 0x0

    invoke-virtual {v1, v8, v10}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v8, 0x0

    :goto_155
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v8, v10, :cond_25c

    move-object/from16 v10, p3

    invoke-virtual {v10, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11

    iget-object v12, v3, Lj/d;->a:Ljava/lang/String;

    iget-object v14, v3, Lj/d;->c:Ljava/lang/String;

    invoke-static {v11, v12, v14}, Lj/e;->a(CLjava/lang/String;Ljava/lang/String;)I

    move-result v11

    iget-object v12, v0, Lm/i;->F:Lcom/airbnb/lottie/d;

    iget-object v12, v12, Lcom/airbnb/lottie/d;->g:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v12, v11}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lj/e;

    if-nez v11, :cond_17f

    move-object/from16 v14, p2

    move-object/from16 p3, v6

    move/from16 v17, v7

    move-object/from16 v16, v10

    goto/16 :goto_252

    :cond_17f
    iget-object v12, v0, Lm/i;->B:Ljava/util/Map;

    invoke-interface {v12, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_196

    iget-object v12, v0, Lm/i;->B:Ljava/util/Map;

    invoke-interface {v12, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    move-object/from16 p3, v6

    move/from16 v17, v7

    move-object/from16 v16, v10

    goto :goto_1d4

    :cond_196
    iget-object v12, v11, Lj/e;->a:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15, v14}, Ljava/util/ArrayList;-><init>(I)V

    const/16 v16, 0x0

    move-object/from16 p3, v6

    move/from16 v6, v16

    :goto_1a7
    if-ge v6, v14, :cond_1ca

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 v17, v7

    move-object/from16 v7, v16

    check-cast v7, Ll/l;

    move-object/from16 v16, v10

    new-instance v10, Lg/d;

    move-object/from16 v18, v12

    iget-object v12, v0, Lm/i;->E:Lcom/airbnb/lottie/j;

    invoke-direct {v10, v12, v0, v7}, Lg/d;-><init>(Lcom/airbnb/lottie/j;Lm/b;Ll/l;)V

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v10, v16

    move/from16 v7, v17

    move-object/from16 v12, v18

    goto :goto_1a7

    :cond_1ca
    move/from16 v17, v7

    move-object/from16 v16, v10

    iget-object v6, v0, Lm/i;->B:Ljava/util/Map;

    invoke-interface {v6, v11, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v12, v15

    :goto_1d4
    const/4 v6, 0x0

    :goto_1d5
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_22b

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/d;

    invoke-virtual {v7}, Lg/d;->getPath()Landroid/graphics/Path;

    move-result-object v7

    iget-object v10, v0, Lm/i;->x:Landroid/graphics/RectF;

    const/4 v14, 0x0

    invoke-virtual {v7, v10, v14}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v10, v0, Lm/i;->y:Landroid/graphics/Matrix;

    move-object/from16 v14, p2

    invoke-virtual {v10, v14}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v10, v0, Lm/i;->y:Landroid/graphics/Matrix;

    iget v15, v2, Lj/c;->g:F

    neg-float v15, v15

    invoke-static {}, Lq/j;->c()F

    move-result v18

    mul-float v15, v15, v18

    move-object/from16 v18, v12

    const/4 v12, 0x0

    invoke-virtual {v10, v12, v15}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v10, v0, Lm/i;->y:Landroid/graphics/Matrix;

    invoke-virtual {v10, v4, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v10, v0, Lm/i;->y:Landroid/graphics/Matrix;

    invoke-virtual {v7, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-boolean v10, v2, Lj/c;->k:Z

    if-eqz v10, :cond_21c

    iget-object v10, v0, Lm/i;->z:Landroid/graphics/Paint;

    invoke-virtual {v0, v7, v10, v1}, Lm/i;->o(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    iget-object v10, v0, Lm/i;->A:Landroid/graphics/Paint;

    invoke-virtual {v0, v7, v10, v1}, Lm/i;->o(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_226

    :cond_21c
    iget-object v10, v0, Lm/i;->A:Landroid/graphics/Paint;

    invoke-virtual {v0, v7, v10, v1}, Lm/i;->o(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    iget-object v10, v0, Lm/i;->z:Landroid/graphics/Paint;

    invoke-virtual {v0, v7, v10, v1}, Lm/i;->o(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    :goto_226
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v12, v18

    goto :goto_1d5

    :cond_22b
    move-object/from16 v14, p2

    iget-wide v6, v11, Lj/e;->c:D

    double-to-float v6, v6

    mul-float/2addr v6, v4

    invoke-static {}, Lq/j;->c()F

    move-result v7

    mul-float/2addr v7, v6

    mul-float/2addr v7, v5

    iget v6, v2, Lj/c;->e:I

    int-to-float v6, v6

    const/high16 v10, 0x41200000  # 10.0f

    div-float/2addr v6, v10

    iget-object v10, v0, Lm/i;->J:Lh/a;

    if-eqz v10, :cond_24c

    invoke-virtual {v10}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    add-float/2addr v6, v10

    :cond_24c
    mul-float/2addr v6, v5

    add-float/2addr v6, v7

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_252
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v6, p3

    move-object/from16 p3, v16

    move/from16 v7, v17

    goto/16 :goto_155

    :cond_25c
    move-object/from16 v14, p2

    move-object/from16 p3, v6

    move/from16 v17, v7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v9, v9, 0x1

    move v8, v13

    goto/16 :goto_ec

    :cond_26a
    move-object/from16 v14, p2

    invoke-static/range {p2 .. p2}, Lq/j;->d(Landroid/graphics/Matrix;)F

    move-result v4

    iget-object v5, v0, Lm/i;->E:Lcom/airbnb/lottie/j;

    iget-object v6, v3, Lj/d;->a:Ljava/lang/String;

    iget-object v3, v3, Lj/d;->c:Ljava/lang/String;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v7

    const/4 v8, 0x0

    if-nez v7, :cond_27f

    move-object v5, v8

    goto :goto_290

    :cond_27f
    iget-object v7, v5, Lcom/airbnb/lottie/j;->l:Li/a;

    if-nez v7, :cond_28e

    new-instance v7, Li/a;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v9

    invoke-direct {v7, v9}, Li/a;-><init>(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object v7, v5, Lcom/airbnb/lottie/j;->l:Li/a;

    :cond_28e
    iget-object v5, v5, Lcom/airbnb/lottie/j;->l:Li/a;

    :goto_290
    if-eqz v5, :cond_2f8

    iget-object v7, v5, Li/a;->a:Lj/j;

    iput-object v6, v7, Lj/j;->a:Ljava/lang/Object;

    iput-object v3, v7, Lj/j;->b:Ljava/lang/Object;

    iget-object v8, v5, Li/a;->b:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Landroid/graphics/Typeface;

    if-eqz v8, :cond_2a4

    goto :goto_2f8

    :cond_2a4
    iget-object v7, v5, Li/a;->c:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Typeface;

    if-eqz v7, :cond_2af

    goto :goto_2c9

    :cond_2af
    const-string v7, "fonts/"

    invoke-static {v7, v6}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Li/a;->e:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v5, Li/a;->d:Landroid/content/res/AssetManager;

    invoke-static {v8, v7}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    iget-object v8, v5, Li/a;->c:Ljava/util/Map;

    invoke-interface {v8, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2c9
    const-string v6, "Italic"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v8, "Bold"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v6, :cond_2db

    if-eqz v3, :cond_2db

    const/4 v3, 0x3

    goto :goto_2e4

    :cond_2db
    if-eqz v6, :cond_2df

    const/4 v3, 0x2

    goto :goto_2e4

    :cond_2df
    if-eqz v3, :cond_2e3

    const/4 v3, 0x1

    goto :goto_2e4

    :cond_2e3
    const/4 v3, 0x0

    :goto_2e4
    invoke-virtual {v7}, Landroid/graphics/Typeface;->getStyle()I

    move-result v6

    if-ne v6, v3, :cond_2ec

    move-object v8, v7

    goto :goto_2f1

    :cond_2ec
    invoke-static {v7, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    move-object v8, v3

    :goto_2f1
    iget-object v3, v5, Li/a;->b:Ljava/util/Map;

    iget-object v5, v5, Li/a;->a:Lj/j;

    invoke-interface {v3, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f8
    :goto_2f8
    if-nez v8, :cond_2fc

    goto/16 :goto_444

    :cond_2fc
    iget-object v3, v2, Lj/c;->a:Ljava/lang/String;

    iget-object v5, v0, Lm/i;->E:Lcom/airbnb/lottie/j;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v0, Lm/i;->z:Landroid/graphics/Paint;

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v5, v0, Lm/i;->K:Lh/a;

    if-nez v5, :cond_30f

    iget v5, v2, Lj/c;->c:F

    goto :goto_319

    :cond_30f
    invoke-virtual {v5}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    :goto_319
    iget-object v6, v0, Lm/i;->z:Landroid/graphics/Paint;

    invoke-static {}, Lq/j;->c()F

    move-result v7

    mul-float/2addr v7, v5

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v5, v0, Lm/i;->A:Landroid/graphics/Paint;

    iget-object v6, v0, Lm/i;->z:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v5, v0, Lm/i;->A:Landroid/graphics/Paint;

    iget-object v6, v0, Lm/i;->z:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getTextSize()F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v5, v2, Lj/c;->f:F

    invoke-static {}, Lq/j;->c()F

    move-result v6

    mul-float/2addr v6, v5

    invoke-virtual {v0, v3}, Lm/i;->p(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x0

    :goto_349
    if-ge v7, v5, :cond_444

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, v0, Lm/i;->A:Landroid/graphics/Paint;

    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    iget v10, v2, Lj/c;->d:I

    invoke-virtual {v0, v10, v1, v9}, Lm/i;->m(ILandroid/graphics/Canvas;F)V

    add-int/lit8 v9, v5, -0x1

    int-to-float v9, v9

    mul-float/2addr v9, v6

    const/high16 v10, 0x40000000  # 2.0f

    div-float/2addr v9, v10

    int-to-float v10, v7

    mul-float/2addr v10, v6

    sub-float/2addr v10, v9

    const/4 v9, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v9, 0x0

    :goto_36b
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_43a

    invoke-virtual {v8, v9}, Ljava/lang/String;->codePointAt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->charCount(I)I

    move-result v11

    add-int/2addr v11, v9

    :goto_37a
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v11, v12, :cond_3bb

    invoke-virtual {v8, v11}, Ljava/lang/String;->codePointAt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->getType(I)I

    move-result v13

    const/16 v15, 0x10

    if-eq v13, v15, :cond_3ae

    invoke-static {v12}, Ljava/lang/Character;->getType(I)I

    move-result v13

    const/16 v15, 0x1b

    if-eq v13, v15, :cond_3ae

    invoke-static {v12}, Ljava/lang/Character;->getType(I)I

    move-result v13

    const/4 v15, 0x6

    if-eq v13, v15, :cond_3ae

    invoke-static {v12}, Ljava/lang/Character;->getType(I)I

    move-result v13

    const/16 v15, 0x1c

    if-eq v13, v15, :cond_3ae

    invoke-static {v12}, Ljava/lang/Character;->getType(I)I

    move-result v13

    const/16 v15, 0x13

    if-ne v13, v15, :cond_3ac

    goto :goto_3ae

    :cond_3ac
    const/4 v13, 0x0

    goto :goto_3af

    :cond_3ae
    :goto_3ae
    const/4 v13, 0x1

    :goto_3af
    if-nez v13, :cond_3b2

    goto :goto_3bb

    :cond_3b2
    invoke-static {v12}, Ljava/lang/Character;->charCount(I)I

    move-result v13

    add-int/2addr v11, v13

    mul-int/lit8 v10, v10, 0x1f

    add-int/2addr v10, v12

    goto :goto_37a

    :cond_3bb
    :goto_3bb
    iget-object v12, v0, Lm/i;->C:Landroidx/collection/LongSparseArray;

    move v13, v5

    move/from16 p3, v6

    int-to-long v5, v10

    invoke-virtual {v12, v5, v6}, Landroidx/collection/LongSparseArray;->containsKey(J)Z

    move-result v10

    if-eqz v10, :cond_3d0

    iget-object v10, v0, Lm/i;->C:Landroidx/collection/LongSparseArray;

    invoke-virtual {v10, v5, v6}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_3f4

    :cond_3d0
    iget-object v10, v0, Lm/i;->w:Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    move v10, v9

    :goto_3d7
    if-ge v10, v11, :cond_3e8

    invoke-virtual {v8, v10}, Ljava/lang/String;->codePointAt(I)I

    move-result v12

    iget-object v15, v0, Lm/i;->w:Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/Character;->charCount(I)I

    move-result v12

    add-int/2addr v10, v12

    goto :goto_3d7

    :cond_3e8
    iget-object v10, v0, Lm/i;->w:Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lm/i;->C:Landroidx/collection/LongSparseArray;

    invoke-virtual {v11, v5, v6, v10}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    move-object v5, v10

    :goto_3f4
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v9, v6

    iget-boolean v6, v2, Lj/c;->k:Z

    if-eqz v6, :cond_408

    iget-object v6, v0, Lm/i;->z:Landroid/graphics/Paint;

    invoke-virtual {v0, v5, v6, v1}, Lm/i;->n(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    iget-object v6, v0, Lm/i;->A:Landroid/graphics/Paint;

    invoke-virtual {v0, v5, v6, v1}, Lm/i;->n(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_412

    :cond_408
    iget-object v6, v0, Lm/i;->A:Landroid/graphics/Paint;

    invoke-virtual {v0, v5, v6, v1}, Lm/i;->n(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    iget-object v6, v0, Lm/i;->z:Landroid/graphics/Paint;

    invoke-virtual {v0, v5, v6, v1}, Lm/i;->n(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    :goto_412
    iget-object v6, v0, Lm/i;->z:Landroid/graphics/Paint;

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v6, v5, v11, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v5

    iget v6, v2, Lj/c;->e:I

    int-to-float v6, v6

    const/high16 v10, 0x41200000  # 10.0f

    div-float/2addr v6, v10

    iget-object v10, v0, Lm/i;->J:Lh/a;

    if-eqz v10, :cond_42f

    invoke-virtual {v10}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    add-float/2addr v6, v10

    :cond_42f
    mul-float/2addr v6, v4

    add-float/2addr v6, v5

    const/4 v5, 0x0

    invoke-virtual {v1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    move/from16 v6, p3

    move v5, v13

    goto/16 :goto_36b

    :cond_43a
    move v13, v5

    move/from16 p3, v6

    invoke-virtual/range {p1 .. p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_349

    :cond_444
    :goto_444
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lm/b;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p2, p0, Lm/i;->F:Lcom/airbnb/lottie/d;

    iget-object p2, p2, Lcom/airbnb/lottie/d;->j:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    iget-object p0, p0, Lm/i;->F:Lcom/airbnb/lottie/d;

    iget-object p0, p0, Lcom/airbnb/lottie/d;->j:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, p2, p0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public final m(ILandroid/graphics/Canvas;F)V
    .registers 5

    invoke-static {p1}, Lj/b;->f(I)I

    move-result p0

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eq p0, p1, :cond_14

    const/4 p1, 0x2

    if-eq p0, p1, :cond_c

    goto :goto_18

    :cond_c
    neg-float p0, p3

    const/high16 p1, 0x40000000  # 2.0f

    div-float/2addr p0, p1

    invoke-virtual {p2, p0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_18

    :cond_14
    neg-float p0, p3

    invoke-virtual {p2, p0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_18
    return-void
.end method

.method public final n(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .registers 11

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object p0

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne p0, v0, :cond_19

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_19

    return-void

    :cond_19
    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p3

    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final o(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .registers 5

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object p0

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne p0, v0, :cond_19

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_19

    return-void

    :cond_19
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final p(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p0, "\r\n"

    const-string v0, "\r"

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\n"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
