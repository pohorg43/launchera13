.class public Lcom/airbnb/lottie/j;
.super Landroid/graphics/drawable/Drawable;
.source ""

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/j$o;
    }
.end annotation


# instance fields
.field public final a:Landroid/graphics/Matrix;

.field public b:Lcom/airbnb/lottie/d;

.field public final c:Lq/g;

.field public d:F

.field public e:Z

.field public f:Z

.field public final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/airbnb/lottie/j$o;",
            ">;"
        }
    .end annotation
.end field

.field public h:Landroid/widget/ImageView$ScaleType;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public i:Li/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public j:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public k:Lcom/airbnb/lottie/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public l:Li/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public m:Z

.field public n:Lm/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public o:I

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/airbnb/lottie/j;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/j;->a:Landroid/graphics/Matrix;

    new-instance v0, Lq/g;

    invoke-direct {v0}, Lq/g;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/j;->c:Lq/g;

    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, p0, Lcom/airbnb/lottie/j;->d:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/airbnb/lottie/j;->e:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/airbnb/lottie/j;->f:Z

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/airbnb/lottie/j;->g:Ljava/util/ArrayList;

    new-instance v3, Lcom/airbnb/lottie/j$f;

    invoke-direct {v3, p0}, Lcom/airbnb/lottie/j$f;-><init>(Lcom/airbnb/lottie/j;)V

    const/16 v4, 0xff

    iput v4, p0, Lcom/airbnb/lottie/j;->o:I

    iput-boolean v1, p0, Lcom/airbnb/lottie/j;->r:Z

    iput-boolean v2, p0, Lcom/airbnb/lottie/j;->s:Z

    iget-object p0, v0, Lq/a;->a:Ljava/util/Set;

    invoke-interface {p0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a(Lj/f;Ljava/lang/Object;Lr/c;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj/f;",
            "TT;",
            "Lr/c<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/j;->n:Lm/c;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/airbnb/lottie/j;->g:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/j$e;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/airbnb/lottie/j$e;-><init>(Lcom/airbnb/lottie/j;Lj/f;Ljava/lang/Object;Lr/c;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_f
    iget-object v1, p1, Lj/f;->b:Lj/g;

    const/4 v2, 0x1

    if-eqz v1, :cond_18

    invoke-interface {v1, p2, p3}, Lj/g;->b(Ljava/lang/Object;Lr/c;)V

    goto :goto_50

    :cond_18
    const/4 v1, 0x0

    if-nez v0, :cond_25

    const-string p1, "Cannot resolve KeyPath. Composition is not set yet."

    invoke-static {p1}, Lq/f;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_37

    :cond_25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/airbnb/lottie/j;->n:Lm/c;

    new-instance v4, Lj/f;

    new-array v5, v1, [Ljava/lang/String;

    invoke-direct {v4, v5}, Lj/f;-><init>([Ljava/lang/String;)V

    invoke-virtual {v3, p1, v1, v0, v4}, Lm/b;->a(Lj/f;ILjava/util/List;Lj/f;)V

    move-object p1, v0

    :goto_37
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4b

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj/f;

    iget-object v0, v0, Lj/f;->b:Lj/g;

    invoke-interface {v0, p2, p3}, Lj/g;->b(Ljava/lang/Object;Lr/c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    :cond_4b
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/2addr v2, p1

    :goto_50
    if-eqz v2, :cond_60

    invoke-virtual {p0}, Lcom/airbnb/lottie/j;->invalidateSelf()V

    sget-object p1, Lcom/airbnb/lottie/o;->A:Ljava/lang/Float;

    if-ne p2, p1, :cond_60

    invoke-virtual {p0}, Lcom/airbnb/lottie/j;->g()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/j;->u(F)V

    :cond_60
    return-void
.end method

.method public final b()V
    .registers 29

    move-object/from16 v0, p0

    new-instance v1, Lm/c;

    iget-object v2, v0, Lcom/airbnb/lottie/j;->b:Lcom/airbnb/lottie/d;

    move-object v4, v2

    sget-object v3, Lo/s;->a:Lp/c$a;

    iget-object v5, v2, Lcom/airbnb/lottie/d;->j:Landroid/graphics/Rect;

    new-instance v15, Lm/e;

    move-object v2, v15

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    sget-object v8, Lm/e$a;->a:Lm/e$a;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    new-instance v16, Lk/k;

    move-object/from16 v13, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-direct/range {v16 .. v25}, Lk/k;-><init>(Lg/b;Lk/l;Lk/f;Lk/b;Lk/d;Lk/b;Lk/b;Lk/b;Lk/b;)V

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v19

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v20

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v23

    const-string v5, "__container"

    const-wide/16 v6, -0x1

    const-wide/16 v9, -0x1

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    move/from16 v16, v17

    move-object/from16 v27, v15

    move/from16 v15, v17

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v24, 0x1

    const/16 v26, 0x0

    invoke-direct/range {v2 .. v26}, Lm/e;-><init>(Ljava/util/List;Lcom/airbnb/lottie/d;Ljava/lang/String;JLm/e$a;JLjava/lang/String;Ljava/util/List;Lk/k;IIIFFIILk/i;Lk/j;Ljava/util/List;ILk/b;Z)V

    iget-object v2, v0, Lcom/airbnb/lottie/j;->b:Lcom/airbnb/lottie/d;

    iget-object v3, v2, Lcom/airbnb/lottie/d;->i:Ljava/util/List;

    move-object/from16 v4, v27

    invoke-direct {v1, v0, v4, v3, v2}, Lm/c;-><init>(Lcom/airbnb/lottie/j;Lm/e;Ljava/util/List;Lcom/airbnb/lottie/d;)V

    iput-object v1, v0, Lcom/airbnb/lottie/j;->n:Lm/c;

    return-void
.end method

.method public c()V
    .registers 3

    iget-object v0, p0, Lcom/airbnb/lottie/j;->c:Lq/g;

    iget-boolean v1, v0, Lq/g;->k:Z

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lq/g;->cancel()V

    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/j;->b:Lcom/airbnb/lottie/d;

    iput-object v0, p0, Lcom/airbnb/lottie/j;->n:Lm/c;

    iput-object v0, p0, Lcom/airbnb/lottie/j;->i:Li/b;

    iget-object v1, p0, Lcom/airbnb/lottie/j;->c:Lq/g;

    iput-object v0, v1, Lq/g;->j:Lcom/airbnb/lottie/d;

    const/high16 v0, -0x31000000

    iput v0, v1, Lq/g;->h:F

    const/high16 v0, 0x4f000000

    iput v0, v1, Lq/g;->i:F

    invoke-virtual {p0}, Lcom/airbnb/lottie/j;->invalidateSelf()V

    return-void
.end method

.method public final d(Landroid/graphics/Canvas;)V
    .registers 10
    .param p1  # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    iget-object v1, p0, Lcom/airbnb/lottie/j;->h:Landroid/widget/ImageView$ScaleType;

    const/high16 v2, 0x40000000  # 2.0f

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000  # 1.0f

    if-ne v0, v1, :cond_7e

    iget-object v0, p0, Lcom/airbnb/lottie/j;->n:Lm/c;

    if-nez v0, :cond_11

    goto/16 :goto_f5

    :cond_11
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v5, p0, Lcom/airbnb/lottie/j;->b:Lcom/airbnb/lottie/d;

    iget-object v5, v5, Lcom/airbnb/lottie/d;->j:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v1, v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/airbnb/lottie/j;->b:Lcom/airbnb/lottie/d;

    iget-object v6, v6, Lcom/airbnb/lottie/d;->j:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    iget-boolean v6, p0, Lcom/airbnb/lottie/j;->r:Z

    if-eqz v6, :cond_64

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v6

    cmpg-float v7, v6, v4

    if-gez v7, :cond_44

    div-float v7, v4, v6

    div-float/2addr v1, v7

    div-float/2addr v5, v7

    goto :goto_45

    :cond_44
    move v7, v4

    :goto_45
    cmpl-float v4, v7, v4

    if-lez v4, :cond_64

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    mul-float v2, v4, v6

    mul-float/2addr v6, v0

    sub-float/2addr v4, v2

    sub-float/2addr v0, v6

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v7, v7, v2, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_64
    iget-object v0, p0, Lcom/airbnb/lottie/j;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/airbnb/lottie/j;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v0, p0, Lcom/airbnb/lottie/j;->n:Lm/c;

    iget-object v1, p0, Lcom/airbnb/lottie/j;->a:Landroid/graphics/Matrix;

    iget p0, p0, Lcom/airbnb/lottie/j;->o:I

    invoke-virtual {v0, p1, v1, p0}, Lm/b;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    if-lez v3, :cond_f5

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_f5

    :cond_7e
    iget-object v0, p0, Lcom/airbnb/lottie/j;->n:Lm/c;

    if-nez v0, :cond_83

    goto :goto_f5

    :cond_83
    iget v0, p0, Lcom/airbnb/lottie/j;->d:F

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v5, p0, Lcom/airbnb/lottie/j;->b:Lcom/airbnb/lottie/d;

    iget-object v5, v5, Lcom/airbnb/lottie/d;->j:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v1, v5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/airbnb/lottie/j;->b:Lcom/airbnb/lottie/d;

    iget-object v6, v6, Lcom/airbnb/lottie/d;->j:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    cmpl-float v5, v0, v1

    if-lez v5, :cond_af

    iget v0, p0, Lcom/airbnb/lottie/j;->d:F

    div-float/2addr v0, v1

    goto :goto_b1

    :cond_af
    move v1, v0

    move v0, v4

    :goto_b1
    cmpl-float v4, v0, v4

    if-lez v4, :cond_dd

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    iget-object v4, p0, Lcom/airbnb/lottie/j;->b:Lcom/airbnb/lottie/d;

    iget-object v4, v4, Lcom/airbnb/lottie/d;->j:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    iget-object v5, p0, Lcom/airbnb/lottie/j;->b:Lcom/airbnb/lottie/d;

    iget-object v5, v5, Lcom/airbnb/lottie/d;->j:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v2

    mul-float v2, v4, v1

    mul-float v6, v5, v1

    iget v7, p0, Lcom/airbnb/lottie/j;->d:F

    mul-float/2addr v4, v7

    sub-float/2addr v4, v2

    mul-float/2addr v7, v5

    sub-float/2addr v7, v6

    invoke-virtual {p1, v4, v7}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v0, v0, v2, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_dd
    iget-object v0, p0, Lcom/airbnb/lottie/j;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/airbnb/lottie/j;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v0, p0, Lcom/airbnb/lottie/j;->n:Lm/c;

    iget-object v1, p0, Lcom/airbnb/lottie/j;->a:Landroid/graphics/Matrix;

    iget p0, p0, Lcom/airbnb/lottie/j;->o:I

    invoke-virtual {v0, p1, v1, p0}, Lm/b;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    if-lez v3, :cond_f5

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_f5
    :goto_f5
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1  # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/j;->s:Z

    iget-boolean v0, p0, Lcom/airbnb/lottie/j;->f:Z

    if-eqz v0, :cond_11

    :try_start_7
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/j;->d(Landroid/graphics/Canvas;)V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_b

    goto :goto_14

    :catchall_b
    sget-object p0, Lq/f;->a:Lcom/airbnb/lottie/m;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :cond_11
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/j;->d(Landroid/graphics/Canvas;)V

    :goto_14
    const-string p0, "Drawable#draw"

    invoke-static {p0}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)F

    return-void
.end method

.method public e()F
    .registers 1

    iget-object p0, p0, Lcom/airbnb/lottie/j;->c:Lq/g;

    invoke-virtual {p0}, Lq/g;->e()F

    move-result p0

    return p0
.end method

.method public f()F
    .registers 1

    iget-object p0, p0, Lcom/airbnb/lottie/j;->c:Lq/g;

    invoke-virtual {p0}, Lq/g;->f()F

    move-result p0

    return p0
.end method

.method public g()F
    .registers 1
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/j;->c:Lq/g;

    invoke-virtual {p0}, Lq/g;->d()F

    move-result p0

    return p0
.end method

.method public getAlpha()I
    .registers 1

    iget p0, p0, Lcom/airbnb/lottie/j;->o:I

    return p0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    iget-object v0, p0, Lcom/airbnb/lottie/j;->b:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_6

    const/4 p0, -0x1

    goto :goto_11

    :cond_6
    iget-object v0, v0, Lcom/airbnb/lottie/d;->j:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Lcom/airbnb/lottie/j;->d:F

    mul-float/2addr v0, p0

    float-to-int p0, v0

    :goto_11
    return p0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    iget-object v0, p0, Lcom/airbnb/lottie/j;->b:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_6

    const/4 p0, -0x1

    goto :goto_11

    :cond_6
    iget-object v0, v0, Lcom/airbnb/lottie/d;->j:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Lcom/airbnb/lottie/j;->d:F

    mul-float/2addr v0, p0

    float-to-int p0, v0

    :goto_11
    return p0
.end method

.method public getOpacity()I
    .registers 1

    const/4 p0, -0x3

    return p0
.end method

.method public h()I
    .registers 1

    iget-object p0, p0, Lcom/airbnb/lottie/j;->c:Lq/g;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result p0

    return p0
.end method

.method public i()Z
    .registers 1

    iget-object p0, p0, Lcom/airbnb/lottie/j;->c:Lq/g;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    iget-boolean p0, p0, Lq/g;->k:Z

    return p0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    :cond_7
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public invalidateSelf()V
    .registers 2

    iget-boolean v0, p0, Lcom/airbnb/lottie/j;->s:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/j;->s:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_11
    return-void
.end method

.method public isRunning()Z
    .registers 1

    invoke-virtual {p0}, Lcom/airbnb/lottie/j;->i()Z

    move-result p0

    return p0
.end method

.method public j()V
    .registers 5
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/j;->n:Lm/c;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/airbnb/lottie/j;->g:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/j$g;

    invoke-direct {v1, p0}, Lcom/airbnb/lottie/j$g;-><init>(Lcom/airbnb/lottie/j;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_f
    iget-boolean v0, p0, Lcom/airbnb/lottie/j;->e:Z

    if-nez v0, :cond_19

    invoke-virtual {p0}, Lcom/airbnb/lottie/j;->h()I

    move-result v0

    if-nez v0, :cond_56

    :cond_19
    iget-object v0, p0, Lcom/airbnb/lottie/j;->c:Lq/g;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lq/g;->k:Z

    invoke-virtual {v0}, Lq/g;->g()Z

    move-result v1

    iget-object v2, v0, Lq/a;->b:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v3, v0, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;Z)V

    goto :goto_28

    :cond_38
    invoke-virtual {v0}, Lq/g;->g()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-virtual {v0}, Lq/g;->e()F

    move-result v1

    goto :goto_47

    :cond_43
    invoke-virtual {v0}, Lq/g;->f()F

    move-result v1

    :goto_47
    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lq/g;->j(F)V

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lq/g;->e:J

    const/4 v1, 0x0

    iput v1, v0, Lq/g;->g:I

    invoke-virtual {v0}, Lq/g;->h()V

    :cond_56
    iget-boolean v0, p0, Lcom/airbnb/lottie/j;->e:Z

    if-nez v0, :cond_75

    iget-object v0, p0, Lcom/airbnb/lottie/j;->c:Lq/g;

    iget v0, v0, Lq/g;->c:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_68

    invoke-virtual {p0}, Lcom/airbnb/lottie/j;->f()F

    move-result v0

    goto :goto_6c

    :cond_68
    invoke-virtual {p0}, Lcom/airbnb/lottie/j;->e()F

    move-result v0

    :goto_6c
    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/j;->l(I)V

    iget-object p0, p0, Lcom/airbnb/lottie/j;->c:Lq/g;

    invoke-virtual {p0}, Lq/g;->c()V

    :cond_75
    return-void
.end method

.method public k()V
    .registers 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/j;->n:Lm/c;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/airbnb/lottie/j;->g:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/j$h;

    invoke-direct {v1, p0}, Lcom/airbnb/lottie/j$h;-><init>(Lcom/airbnb/lottie/j;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_f
    iget-boolean v0, p0, Lcom/airbnb/lottie/j;->e:Z

    if-nez v0, :cond_19

    invoke-virtual {p0}, Lcom/airbnb/lottie/j;->h()I

    move-result v0

    if-nez v0, :cond_52

    :cond_19
    iget-object v0, p0, Lcom/airbnb/lottie/j;->c:Lq/g;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lq/g;->k:Z

    invoke-virtual {v0}, Lq/g;->h()V

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lq/g;->e:J

    invoke-virtual {v0}, Lq/g;->g()Z

    move-result v1

    if-eqz v1, :cond_3c

    iget v1, v0, Lq/g;->f:F

    invoke-virtual {v0}, Lq/g;->f()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3c

    invoke-virtual {v0}, Lq/g;->e()F

    move-result v1

    iput v1, v0, Lq/g;->f:F

    goto :goto_52

    :cond_3c
    invoke-virtual {v0}, Lq/g;->g()Z

    move-result v1

    if-nez v1, :cond_52

    iget v1, v0, Lq/g;->f:F

    invoke-virtual {v0}, Lq/g;->e()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_52

    invoke-virtual {v0}, Lq/g;->f()F

    move-result v1

    iput v1, v0, Lq/g;->f:F

    :cond_52
    :goto_52
    iget-boolean v0, p0, Lcom/airbnb/lottie/j;->e:Z

    if-nez v0, :cond_71

    iget-object v0, p0, Lcom/airbnb/lottie/j;->c:Lq/g;

    iget v0, v0, Lq/g;->c:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_64

    invoke-virtual {p0}, Lcom/airbnb/lottie/j;->f()F

    move-result v0

    goto :goto_68

    :cond_64
    invoke-virtual {p0}, Lcom/airbnb/lottie/j;->e()F

    move-result v0

    :goto_68
    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/j;->l(I)V

    iget-object p0, p0, Lcom/airbnb/lottie/j;->c:Lq/g;

    invoke-virtual {p0}, Lq/g;->c()V

    :cond_71
    return-void
.end method

.method public l(I)V
    .registers 4

    iget-object v0, p0, Lcom/airbnb/lottie/j;->b:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/airbnb/lottie/j;->g:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/j$c;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/j$c;-><init>(Lcom/airbnb/lottie/j;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_f
    iget-object p0, p0, Lcom/airbnb/lottie/j;->c:Lq/g;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lq/g;->j(F)V

    return-void
.end method

.method public m(I)V
    .registers 4

    iget-object v0, p0, Lcom/airbnb/lottie/j;->b:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/airbnb/lottie/j;->g:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/j$k;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/j$k;-><init>(Lcom/airbnb/lottie/j;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_f
    iget-object p0, p0, Lcom/airbnb/lottie/j;->c:Lq/g;

    int-to-float p1, p1

    const v0, 0x3f7d70a4  # 0.99f

    add-float/2addr p1, v0

    iget v0, p0, Lq/g;->h:F

    invoke-virtual {p0, v0, p1}, Lq/g;->k(FF)V

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/airbnb/lottie/j;->b:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/airbnb/lottie/j;->g:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/j$n;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/j$n;-><init>(Lcom/airbnb/lottie/j;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_f
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/d;->d(Ljava/lang/String;)Lj/i;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget p1, v0, Lj/i;->b:F

    iget v0, v0, Lj/i;->c:F

    add-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/j;->m(I)V

    return-void

    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot find marker with name "

    const-string v1, "."

    invoke-static {v0, p1, v1}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public o(F)V
    .registers 4
    .param p1  # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    iget-object v0, p0, Lcom/airbnb/lottie/j;->b:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/airbnb/lottie/j;->g:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/j$l;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/j$l;-><init>(Lcom/airbnb/lottie/j;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_f
    iget v1, v0, Lcom/airbnb/lottie/d;->k:F

    iget v0, v0, Lcom/airbnb/lottie/d;->l:F

    invoke-static {v1, v0, p1}, Lq/i;->e(FFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/j;->m(I)V

    return-void
.end method

.method public p(II)V
    .registers 5

    iget-object v0, p0, Lcom/airbnb/lottie/j;->b:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/airbnb/lottie/j;->g:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/j$b;

    invoke-direct {v1, p0, p1, p2}, Lcom/airbnb/lottie/j$b;-><init>(Lcom/airbnb/lottie/j;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_f
    iget-object p0, p0, Lcom/airbnb/lottie/j;->c:Lq/g;

    int-to-float p1, p1

    int-to-float p2, p2

    const v0, 0x3f7d70a4  # 0.99f

    add-float/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lq/g;->k(FF)V

    return-void
.end method

.method public q(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/airbnb/lottie/j;->b:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/airbnb/lottie/j;->g:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/j$a;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/j$a;-><init>(Lcom/airbnb/lottie/j;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_f
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/d;->d(Ljava/lang/String;)Lj/i;

    move-result-object v0

    if-eqz v0, :cond_20

    iget p1, v0, Lj/i;->b:F

    float-to-int p1, p1

    iget v0, v0, Lj/i;->c:F

    float-to-int v0, v0

    add-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/airbnb/lottie/j;->p(II)V

    return-void

    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot find marker with name "

    const-string v1, "."

    invoke-static {v0, p1, v1}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public r(I)V
    .registers 4

    iget-object v0, p0, Lcom/airbnb/lottie/j;->b:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/airbnb/lottie/j;->g:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/j$i;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/j$i;-><init>(Lcom/airbnb/lottie/j;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_f
    iget-object p0, p0, Lcom/airbnb/lottie/j;->c:Lq/g;

    int-to-float p1, p1

    iget v0, p0, Lq/g;->i:F

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0, p1, v0}, Lq/g;->k(FF)V

    return-void
.end method

.method public s(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/airbnb/lottie/j;->b:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/airbnb/lottie/j;->g:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/j$m;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/j$m;-><init>(Lcom/airbnb/lottie/j;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_f
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/d;->d(Ljava/lang/String;)Lj/i;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget p1, v0, Lj/i;->b:F

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/j;->r(I)V

    return-void

    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot find marker with name "

    const-string v1, "."

    invoke-static {v0, p1, v1}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 5
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    :cond_7
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .registers 2
    .param p1  # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    iput p1, p0, Lcom/airbnb/lottie/j;->o:I

    invoke-virtual {p0}, Lcom/airbnb/lottie/j;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2
    .param p1  # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string p0, "Use addColorFilter instead."

    invoke-static {p0}, Lq/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public start()V
    .registers 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-virtual {p0}, Lcom/airbnb/lottie/j;->j()V

    return-void
.end method

.method public stop()V
    .registers 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/airbnb/lottie/j;->c:Lq/g;

    invoke-virtual {p0}, Lq/g;->c()V

    return-void
.end method

.method public t(F)V
    .registers 4

    iget-object v0, p0, Lcom/airbnb/lottie/j;->b:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/airbnb/lottie/j;->g:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/j$j;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/j$j;-><init>(Lcom/airbnb/lottie/j;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_f
    iget v1, v0, Lcom/airbnb/lottie/d;->k:F

    iget v0, v0, Lcom/airbnb/lottie/d;->l:F

    invoke-static {v1, v0, p1}, Lq/i;->e(FFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/j;->r(I)V

    return-void
.end method

.method public u(F)V
    .registers 4
    .param p1  # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    iget-object v0, p0, Lcom/airbnb/lottie/j;->b:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/airbnb/lottie/j;->g:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/j$d;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/j$d;-><init>(Lcom/airbnb/lottie/j;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_f
    iget-object p0, p0, Lcom/airbnb/lottie/j;->c:Lq/g;

    iget v1, v0, Lcom/airbnb/lottie/d;->k:F

    iget v0, v0, Lcom/airbnb/lottie/d;->l:F

    invoke-static {v1, v0, p1}, Lq/i;->e(FFF)F

    move-result p1

    invoke-virtual {p0, p1}, Lq/g;->j(F)V

    const-string p0, "Drawable#setProgress"

    invoke-static {p0}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)F

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 3
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    :cond_7
    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final v()V
    .registers 4

    iget-object v0, p0, Lcom/airbnb/lottie/j;->b:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget v1, p0, Lcom/airbnb/lottie/j;->d:F

    iget-object v0, v0, Lcom/airbnb/lottie/d;->j:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v2, p0, Lcom/airbnb/lottie/j;->b:Lcom/airbnb/lottie/d;

    iget-object v2, v2, Lcom/airbnb/lottie/d;->j:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method
