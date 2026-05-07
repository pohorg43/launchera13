.class public abstract Lg/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lh/a$b;
.implements Lg/k;
.implements Lg/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/a$b;
    }
.end annotation


# instance fields
.field public final a:Landroid/graphics/PathMeasure;

.field public final b:Landroid/graphics/Path;

.field public final c:Landroid/graphics/Path;

.field public final d:Landroid/graphics/RectF;

.field public final e:Lcom/airbnb/lottie/j;

.field public final f:Lm/b;

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public final h:[F

.field public final i:Landroid/graphics/Paint;

.field public final j:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "*",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh/a<",
            "*",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field public final m:Lh/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public n:Lh/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/j;Lm/b;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLk/d;Lk/b;Ljava/util/List;Lk/b;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/j;",
            "Lm/b;",
            "Landroid/graphics/Paint$Cap;",
            "Landroid/graphics/Paint$Join;",
            "F",
            "Lk/d;",
            "Lk/b;",
            "Ljava/util/List<",
            "Lk/b;",
            ">;",
            "Lk/b;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v0, p0, Lg/a;->a:Landroid/graphics/PathMeasure;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lg/a;->b:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lg/a;->c:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lg/a;->d:Landroid/graphics/RectF;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/a;->g:Ljava/util/List;

    new-instance v0, Lf/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lf/a;-><init>(I)V

    iput-object v0, p0, Lg/a;->i:Landroid/graphics/Paint;

    iput-object p1, p0, Lg/a;->e:Lcom/airbnb/lottie/j;

    iput-object p2, p0, Lg/a;->f:Lm/b;

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    invoke-virtual {p6}, Lk/d;->createAnimation()Lh/a;

    move-result-object p1

    iput-object p1, p0, Lg/a;->k:Lh/a;

    invoke-virtual {p7}, Lk/b;->createAnimation()Lh/a;

    move-result-object p1

    iput-object p1, p0, Lg/a;->j:Lh/a;

    if-nez p9, :cond_52

    const/4 p1, 0x0

    iput-object p1, p0, Lg/a;->m:Lh/a;

    goto :goto_58

    :cond_52
    invoke-virtual {p9}, Lk/b;->createAnimation()Lh/a;

    move-result-object p1

    iput-object p1, p0, Lg/a;->m:Lh/a;

    :goto_58
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lg/a;->l:Ljava/util/List;

    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [F

    iput-object p1, p0, Lg/a;->h:[F

    const/4 p1, 0x0

    move p3, p1

    :goto_6d
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_85

    iget-object p4, p0, Lg/a;->l:Ljava/util/List;

    invoke-interface {p8, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lk/b;

    invoke-virtual {p5}, Lk/b;->createAnimation()Lh/a;

    move-result-object p5

    invoke-interface {p4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_6d

    :cond_85
    iget-object p3, p0, Lg/a;->k:Lh/a;

    invoke-virtual {p2, p3}, Lm/b;->c(Lh/a;)V

    iget-object p3, p0, Lg/a;->j:Lh/a;

    invoke-virtual {p2, p3}, Lm/b;->c(Lh/a;)V

    move p3, p1

    :goto_90
    iget-object p4, p0, Lg/a;->l:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_a6

    iget-object p4, p0, Lg/a;->l:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lh/a;

    invoke-virtual {p2, p4}, Lm/b;->c(Lh/a;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_90

    :cond_a6
    iget-object p3, p0, Lg/a;->m:Lh/a;

    if-eqz p3, :cond_ad

    invoke-virtual {p2, p3}, Lm/b;->c(Lh/a;)V

    :cond_ad
    iget-object p2, p0, Lg/a;->k:Lh/a;

    iget-object p2, p2, Lh/a;->a:Ljava/util/List;

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lg/a;->j:Lh/a;

    iget-object p2, p2, Lh/a;->a:Ljava/util/List;

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_bb
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_d1

    iget-object p2, p0, Lg/a;->l:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lh/a;

    iget-object p2, p2, Lh/a;->a:Ljava/util/List;

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_bb

    :cond_d1
    iget-object p1, p0, Lg/a;->m:Lh/a;

    if-eqz p1, :cond_da

    iget-object p1, p1, Lh/a;->a:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_da
    return-void
.end method


# virtual methods
.method public a(Lj/f;ILjava/util/List;Lj/f;)V
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

    invoke-static {p1, p2, p3, p4, p0}, Lq/i;->f(Lj/f;ILjava/util/List;Lj/f;Lg/k;)V

    return-void
.end method

.method public b(Ljava/lang/Object;Lr/c;)V
    .registers 4
    .param p2  # Lr/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lr/c<",
            "TT;>;)V"
        }
    .end annotation

    sget-object v0, Lcom/airbnb/lottie/o;->d:Ljava/lang/Integer;

    if-ne p1, v0, :cond_b

    iget-object p0, p0, Lg/a;->k:Lh/a;

    iget-object p1, p0, Lh/a;->e:Lr/c;

    iput-object p2, p0, Lh/a;->e:Lr/c;

    goto :goto_33

    :cond_b
    sget-object v0, Lcom/airbnb/lottie/o;->o:Ljava/lang/Float;

    if-ne p1, v0, :cond_16

    iget-object p0, p0, Lg/a;->j:Lh/a;

    iget-object p1, p0, Lh/a;->e:Lr/c;

    iput-object p2, p0, Lh/a;->e:Lr/c;

    goto :goto_33

    :cond_16
    sget-object v0, Lcom/airbnb/lottie/o;->C:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_33

    const/4 p1, 0x0

    if-nez p2, :cond_20

    iput-object p1, p0, Lg/a;->n:Lh/a;

    goto :goto_33

    :cond_20
    new-instance v0, Lh/n;

    invoke-direct {v0, p2, p1}, Lh/n;-><init>(Lr/c;Ljava/lang/Object;)V

    iput-object v0, p0, Lg/a;->n:Lh/a;

    iget-object p1, v0, Lh/a;->a:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lg/a;->f:Lm/b;

    iget-object p0, p0, Lg/a;->n:Lh/a;

    invoke-virtual {p1, p0}, Lm/b;->c(Lh/a;)V

    :cond_33
    :goto_33
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget-object v3, Lq/j;->d:[F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v6, 0x1

    aput v5, v3, v6

    const v7, 0x471212bb

    const/4 v8, 0x2

    aput v7, v3, v8

    const v7, 0x471a973c

    const/4 v9, 0x3

    aput v7, v3, v9

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v7, v3, v4

    aget v8, v3, v8

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_31

    aget v7, v3, v6

    aget v3, v3, v9

    cmpl-float v3, v7, v3

    if-nez v3, :cond_2f

    goto :goto_31

    :cond_2f
    move v3, v4

    goto :goto_32

    :cond_31
    :goto_31
    move v3, v6

    :goto_32
    const-string v7, "StrokeContent#draw"

    if-eqz v3, :cond_3a

    invoke-static {v7}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)F

    return-void

    :cond_3a
    move/from16 v3, p3

    int-to-float v3, v3

    const/high16 v8, 0x437f0000  # 255.0f

    div-float/2addr v3, v8

    iget-object v9, v0, Lg/a;->k:Lh/a;

    check-cast v9, Lh/e;

    invoke-virtual {v9}, Lh/a;->a()Lr/a;

    move-result-object v10

    invoke-virtual {v9}, Lh/a;->c()F

    move-result v11

    invoke-virtual {v9, v10, v11}, Lh/e;->i(Lr/a;F)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v3, v9

    const/high16 v9, 0x42c80000  # 100.0f

    div-float/2addr v3, v9

    mul-float/2addr v3, v8

    float-to-int v3, v3

    iget-object v8, v0, Lg/a;->i:Landroid/graphics/Paint;

    const/16 v10, 0xff

    invoke-static {v3, v4, v10}, Lq/i;->c(III)I

    move-result v3

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v3, v0, Lg/a;->i:Landroid/graphics/Paint;

    iget-object v8, v0, Lg/a;->j:Lh/a;

    check-cast v8, Lh/c;

    invoke-virtual {v8}, Lh/c;->i()F

    move-result v8

    invoke-static/range {p2 .. p2}, Lq/j;->d(Landroid/graphics/Matrix;)F

    move-result v10

    mul-float/2addr v10, v8

    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v3, v0, Lg/a;->i:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_82

    invoke-static {v7}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)F

    return-void

    :cond_82
    iget-object v3, v0, Lg/a;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const-string v8, "StrokeContent#applyDashPattern"

    const/high16 v10, 0x3f800000  # 1.0f

    if-eqz v3, :cond_92

    invoke-static {v8}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)F

    goto :goto_fb

    :cond_92
    invoke-static/range {p2 .. p2}, Lq/j;->d(Landroid/graphics/Matrix;)F

    move-result v3

    move v11, v4

    :goto_97
    iget-object v12, v0, Lg/a;->l:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_db

    iget-object v12, v0, Lg/a;->h:[F

    iget-object v13, v0, Lg/a;->l:Ljava/util/List;

    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lh/a;

    invoke-virtual {v13}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    aput v13, v12, v11

    rem-int/lit8 v12, v11, 0x2

    if-nez v12, :cond_c4

    iget-object v12, v0, Lg/a;->h:[F

    aget v13, v12, v11

    cmpg-float v13, v13, v10

    if-gez v13, :cond_d1

    aput v10, v12, v11

    goto :goto_d1

    :cond_c4
    iget-object v12, v0, Lg/a;->h:[F

    aget v13, v12, v11

    const v14, 0x3dcccccd  # 0.1f

    cmpg-float v13, v13, v14

    if-gez v13, :cond_d1

    aput v14, v12, v11

    :cond_d1
    :goto_d1
    iget-object v12, v0, Lg/a;->h:[F

    aget v13, v12, v11

    mul-float/2addr v13, v3

    aput v13, v12, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_97

    :cond_db
    iget-object v11, v0, Lg/a;->m:Lh/a;

    if-nez v11, :cond_e1

    move v11, v5

    goto :goto_ec

    :cond_e1
    invoke-virtual {v11}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    mul-float/2addr v11, v3

    :goto_ec
    iget-object v3, v0, Lg/a;->i:Landroid/graphics/Paint;

    new-instance v12, Landroid/graphics/DashPathEffect;

    iget-object v13, v0, Lg/a;->h:[F

    invoke-direct {v12, v13, v11}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v3, v12}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    invoke-static {v8}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)F

    :goto_fb
    iget-object v3, v0, Lg/a;->n:Lh/a;

    if-eqz v3, :cond_10a

    iget-object v8, v0, Lg/a;->i:Landroid/graphics/Paint;

    invoke-virtual {v3}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/ColorFilter;

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_10a
    move v3, v4

    :goto_10b
    iget-object v8, v0, Lg/a;->g:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_27f

    iget-object v8, v0, Lg/a;->g:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/a$b;

    iget-object v11, v8, Lg/a$b;->b:Lg/s;

    if-eqz v11, :cond_242

    const-string v12, "StrokeContent#applyTrimPath"

    if-nez v11, :cond_128

    invoke-static {v12}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)F

    goto/16 :goto_240

    :cond_128
    iget-object v11, v0, Lg/a;->b:Landroid/graphics/Path;

    invoke-virtual {v11}, Landroid/graphics/Path;->reset()V

    iget-object v11, v8, Lg/a$b;->a:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    :goto_133
    add-int/lit8 v11, v11, -0x1

    if-ltz v11, :cond_149

    iget-object v13, v0, Lg/a;->b:Landroid/graphics/Path;

    iget-object v14, v8, Lg/a$b;->a:Ljava/util/List;

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lg/m;

    invoke-interface {v14}, Lg/m;->getPath()Landroid/graphics/Path;

    move-result-object v14

    invoke-virtual {v13, v14, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_133

    :cond_149
    iget-object v11, v0, Lg/a;->a:Landroid/graphics/PathMeasure;

    iget-object v13, v0, Lg/a;->b:Landroid/graphics/Path;

    invoke-virtual {v11, v13, v4}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    iget-object v11, v0, Lg/a;->a:Landroid/graphics/PathMeasure;

    invoke-virtual {v11}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v11

    :goto_156
    iget-object v13, v0, Lg/a;->a:Landroid/graphics/PathMeasure;

    invoke-virtual {v13}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v13

    if-eqz v13, :cond_166

    iget-object v13, v0, Lg/a;->a:Landroid/graphics/PathMeasure;

    invoke-virtual {v13}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v13

    add-float/2addr v11, v13

    goto :goto_156

    :cond_166
    iget-object v13, v8, Lg/a$b;->b:Lg/s;

    iget-object v13, v13, Lg/s;->f:Lh/a;

    invoke-virtual {v13}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    mul-float/2addr v13, v11

    const/high16 v14, 0x43b40000  # 360.0f

    div-float/2addr v13, v14

    iget-object v14, v8, Lg/a$b;->b:Lg/s;

    iget-object v14, v14, Lg/s;->d:Lh/a;

    invoke-virtual {v14}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    mul-float/2addr v14, v11

    div-float/2addr v14, v9

    add-float/2addr v14, v13

    iget-object v15, v8, Lg/a$b;->b:Lg/s;

    iget-object v15, v15, Lg/s;->e:Lh/a;

    invoke-virtual {v15}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    mul-float/2addr v15, v11

    div-float/2addr v15, v9

    add-float/2addr v15, v13

    iget-object v13, v8, Lg/a$b;->a:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    move/from16 v16, v5

    :goto_1a4
    if-ltz v13, :cond_23d

    iget-object v9, v0, Lg/a;->c:Landroid/graphics/Path;

    iget-object v6, v8, Lg/a$b;->a:Ljava/util/List;

    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/m;

    invoke-interface {v6}, Lg/m;->getPath()Landroid/graphics/Path;

    move-result-object v6

    invoke-virtual {v9, v6}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object v6, v0, Lg/a;->c:Landroid/graphics/Path;

    invoke-virtual {v6, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v6, v0, Lg/a;->a:Landroid/graphics/PathMeasure;

    iget-object v9, v0, Lg/a;->c:Landroid/graphics/Path;

    invoke-virtual {v6, v9, v4}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    iget-object v6, v0, Lg/a;->a:Landroid/graphics/PathMeasure;

    invoke-virtual {v6}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v6

    cmpl-float v9, v15, v11

    if-lez v9, :cond_1f7

    sub-float v9, v15, v11

    add-float v17, v16, v6

    cmpg-float v17, v9, v17

    if-gez v17, :cond_1f7

    cmpg-float v17, v16, v9

    if-gez v17, :cond_1f7

    cmpl-float v17, v14, v11

    if-lez v17, :cond_1e4

    sub-float v17, v14, v11

    div-float v17, v17, v6

    move/from16 v4, v17

    goto :goto_1e5

    :cond_1e4
    move v4, v5

    :goto_1e5
    div-float/2addr v9, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    iget-object v10, v0, Lg/a;->c:Landroid/graphics/Path;

    invoke-static {v10, v4, v9, v5}, Lq/j;->a(Landroid/graphics/Path;FFF)V

    iget-object v4, v0, Lg/a;->c:Landroid/graphics/Path;

    iget-object v9, v0, Lg/a;->i:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_231

    :cond_1f7
    add-float v4, v16, v6

    cmpg-float v9, v4, v14

    if-ltz v9, :cond_231

    cmpl-float v9, v16, v15

    if-lez v9, :cond_202

    goto :goto_231

    :cond_202
    cmpg-float v9, v4, v15

    if-gtz v9, :cond_212

    cmpg-float v9, v14, v16

    if-gez v9, :cond_212

    iget-object v4, v0, Lg/a;->c:Landroid/graphics/Path;

    iget-object v9, v0, Lg/a;->i:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_231

    :cond_212
    cmpg-float v9, v14, v16

    if-gez v9, :cond_218

    move v9, v5

    goto :goto_21b

    :cond_218
    sub-float v9, v14, v16

    div-float/2addr v9, v6

    :goto_21b
    cmpl-float v4, v15, v4

    if-lez v4, :cond_222

    const/high16 v4, 0x3f800000  # 1.0f

    goto :goto_225

    :cond_222
    sub-float v4, v15, v16

    div-float/2addr v4, v6

    :goto_225
    iget-object v10, v0, Lg/a;->c:Landroid/graphics/Path;

    invoke-static {v10, v9, v4, v5}, Lq/j;->a(Landroid/graphics/Path;FFF)V

    iget-object v4, v0, Lg/a;->c:Landroid/graphics/Path;

    iget-object v9, v0, Lg/a;->i:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_231
    :goto_231
    add-float v16, v16, v6

    add-int/lit8 v13, v13, -0x1

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/high16 v9, 0x42c80000  # 100.0f

    const/high16 v10, 0x3f800000  # 1.0f

    goto/16 :goto_1a4

    :cond_23d
    invoke-static {v12}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)F

    :goto_240
    const/4 v6, 0x1

    goto :goto_276

    :cond_242
    iget-object v4, v0, Lg/a;->b:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    iget-object v4, v8, Lg/a$b;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    :goto_24f
    if-ltz v4, :cond_265

    iget-object v9, v0, Lg/a;->b:Landroid/graphics/Path;

    iget-object v10, v8, Lg/a$b;->a:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg/m;

    invoke-interface {v10}, Lg/m;->getPath()Landroid/graphics/Path;

    move-result-object v10

    invoke-virtual {v9, v10, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_24f

    :cond_265
    const-string v4, "StrokeContent#buildPath"

    invoke-static {v4}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)F

    iget-object v4, v0, Lg/a;->b:Landroid/graphics/Path;

    iget-object v8, v0, Lg/a;->i:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const-string v4, "StrokeContent#drawPath"

    invoke-static {v4}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)F

    :goto_276
    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    const/high16 v9, 0x42c80000  # 100.0f

    const/high16 v10, 0x3f800000  # 1.0f

    goto/16 :goto_10b

    :cond_27f
    invoke-static {v7}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)F

    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .registers 9

    iget-object p3, p0, Lg/a;->b:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    const/4 p3, 0x0

    move v0, p3

    :goto_7
    iget-object v1, p0, Lg/a;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_37

    iget-object v1, p0, Lg/a;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/a$b;

    move v2, p3

    :goto_18
    iget-object v3, v1, Lg/a$b;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_34

    iget-object v3, p0, Lg/a;->b:Landroid/graphics/Path;

    iget-object v4, v1, Lg/a$b;->a:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/m;

    invoke-interface {v4}, Lg/m;->getPath()Landroid/graphics/Path;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_37
    iget-object p2, p0, Lg/a;->b:Landroid/graphics/Path;

    iget-object v0, p0, Lg/a;->d:Landroid/graphics/RectF;

    invoke-virtual {p2, v0, p3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object p2, p0, Lg/a;->j:Lh/a;

    check-cast p2, Lh/c;

    invoke-virtual {p2}, Lh/c;->i()F

    move-result p2

    iget-object p3, p0, Lg/a;->d:Landroid/graphics/RectF;

    iget v0, p3, Landroid/graphics/RectF;->left:F

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr p2, v1

    sub-float/2addr v0, p2

    iget v1, p3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, p2

    iget v2, p3, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, p2

    iget v3, p3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, p2

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p0, p0, Lg/a;->d:Landroid/graphics/RectF;

    invoke-virtual {p1, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget p0, p1, Landroid/graphics/RectF;->left:F

    const/high16 p2, 0x3f800000  # 1.0f

    sub-float/2addr p0, p2

    iget p3, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p3, p2

    iget v0, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p2

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, p2

    invoke-virtual {p1, p0, p3, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    const-string p0, "StrokeContent#getBounds"

    invoke-static {p0}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)F

    return-void
.end method

.method public onValueChanged()V
    .registers 1

    iget-object p0, p0, Lg/a;->e:Lcom/airbnb/lottie/j;

    invoke-virtual {p0}, Lcom/airbnb/lottie/j;->invalidateSelf()V

    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .registers 10
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

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move-object v2, v1

    :goto_8
    const/4 v3, 0x2

    if-ltz v0, :cond_1f

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/c;

    instance-of v5, v4, Lg/s;

    if-eqz v5, :cond_1c

    check-cast v4, Lg/s;

    iget v5, v4, Lg/s;->c:I

    if-ne v5, v3, :cond_1c

    move-object v2, v4

    :cond_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1f
    if-eqz v2, :cond_26

    iget-object p1, v2, Lg/s;->b:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_26
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    move-object v0, v1

    :goto_2d
    if-ltz p1, :cond_67

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/c;

    instance-of v5, v4, Lg/s;

    if-eqz v5, :cond_52

    move-object v5, v4

    check-cast v5, Lg/s;

    iget v6, v5, Lg/s;->c:I

    if-ne v6, v3, :cond_52

    if-eqz v0, :cond_47

    iget-object v4, p0, Lg/a;->g:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_47
    new-instance v0, Lg/a$b;

    invoke-direct {v0, v5, v1}, Lg/a$b;-><init>(Lg/s;Lg/a$a;)V

    iget-object v4, v5, Lg/s;->b:Ljava/util/List;

    invoke-interface {v4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_64

    :cond_52
    instance-of v5, v4, Lg/m;

    if-eqz v5, :cond_64

    if-nez v0, :cond_5d

    new-instance v0, Lg/a$b;

    invoke-direct {v0, v2, v1}, Lg/a$b;-><init>(Lg/s;Lg/a$a;)V

    :cond_5d
    iget-object v5, v0, Lg/a$b;->a:Ljava/util/List;

    check-cast v4, Lg/m;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_64
    :goto_64
    add-int/lit8 p1, p1, -0x1

    goto :goto_2d

    :cond_67
    if-eqz v0, :cond_6e

    iget-object p0, p0, Lg/a;->g:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6e
    return-void
.end method
