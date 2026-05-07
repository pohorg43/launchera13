.class public abstract Lm/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lg/e;
.implements Lh/a$b;
.implements Lj/g;


# instance fields
.field public final a:Landroid/graphics/Path;

.field public final b:Landroid/graphics/Matrix;

.field public final c:Landroid/graphics/Paint;

.field public final d:Landroid/graphics/Paint;

.field public final e:Landroid/graphics/Paint;

.field public final f:Landroid/graphics/Paint;

.field public final g:Landroid/graphics/Paint;

.field public final h:Landroid/graphics/RectF;

.field public final i:Landroid/graphics/RectF;

.field public final j:Landroid/graphics/RectF;

.field public final k:Landroid/graphics/RectF;

.field public final l:Ljava/lang/String;

.field public final m:Landroid/graphics/Matrix;

.field public final n:Lcom/airbnb/lottie/j;

.field public final o:Lm/e;

.field public p:Lh/g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public q:Lm/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public r:Lm/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lm/b;",
            ">;"
        }
    .end annotation
.end field

.field public final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh/a<",
            "**>;>;"
        }
    .end annotation
.end field

.field public final u:Lh/m;

.field public v:Z


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/j;Lm/e;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lm/b;->a:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lm/b;->b:Landroid/graphics/Matrix;

    new-instance v0, Lf/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lf/a;-><init>(I)V

    iput-object v0, p0, Lm/b;->c:Landroid/graphics/Paint;

    new-instance v0, Lf/a;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Lf/a;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lm/b;->d:Landroid/graphics/Paint;

    new-instance v0, Lf/a;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Lf/a;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lm/b;->e:Landroid/graphics/Paint;

    new-instance v0, Lf/a;

    invoke-direct {v0, v1}, Lf/a;-><init>(I)V

    iput-object v0, p0, Lm/b;->f:Landroid/graphics/Paint;

    new-instance v2, Lf/a;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Lf/a;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v2, p0, Lm/b;->g:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lm/b;->h:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lm/b;->i:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lm/b;->j:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lm/b;->k:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lm/b;->m:Landroid/graphics/Matrix;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lm/b;->t:Ljava/util/List;

    iput-boolean v1, p0, Lm/b;->v:Z

    iput-object p1, p0, Lm/b;->n:Lcom/airbnb/lottie/j;

    iput-object p2, p0, Lm/b;->o:Lm/e;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lm/e;->c:Ljava/lang/String;

    const-string v3, "#draw"

    invoke-static {p1, v2, v3}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lm/b;->l:Ljava/lang/String;

    iget p1, p2, Lm/e;->u:I

    const/4 v2, 0x3

    if-ne p1, v2, :cond_8a

    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_94

    :cond_8a
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :goto_94
    iget-object p1, p2, Lm/e;->i:Lk/k;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lh/m;

    invoke-direct {v0, p1}, Lh/m;-><init>(Lk/k;)V

    iput-object v0, p0, Lm/b;->u:Lh/m;

    invoke-virtual {v0, p0}, Lh/m;->b(Lh/a$b;)V

    iget-object p1, p2, Lm/e;->h:Ljava/util/List;

    if-eqz p1, :cond_eb

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_eb

    new-instance p1, Lh/g;

    iget-object p2, p2, Lm/e;->h:Ljava/util/List;

    invoke-direct {p1, p2}, Lh/g;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lm/b;->p:Lh/g;

    iget-object p1, p1, Lh/g;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_bc
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_ce

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lh/a;

    iget-object p2, p2, Lh/a;->a:Ljava/util/List;

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_bc

    :cond_ce
    iget-object p1, p0, Lm/b;->p:Lh/g;

    iget-object p1, p1, Lh/g;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_eb

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lh/a;

    invoke-virtual {p0, p2}, Lm/b;->c(Lh/a;)V

    iget-object p2, p2, Lh/a;->a:Ljava/util/List;

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d6

    :cond_eb
    iget-object p1, p0, Lm/b;->o:Lm/e;

    iget-object p1, p1, Lm/e;->t:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_123

    new-instance p1, Lh/c;

    iget-object p2, p0, Lm/b;->o:Lm/e;

    iget-object p2, p2, Lm/e;->t:Ljava/util/List;

    invoke-direct {p1, p2}, Lh/c;-><init>(Ljava/util/List;)V

    iput-boolean v1, p1, Lh/a;->b:Z

    new-instance p2, Lm/a;

    invoke-direct {p2, p0, p1}, Lm/a;-><init>(Lm/b;Lh/c;)V

    iget-object v0, p1, Lh/a;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lh/a;->e()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float p2, p2, v0

    if-nez p2, :cond_11b

    goto :goto_11c

    :cond_11b
    const/4 v1, 0x0

    :goto_11c
    invoke-virtual {p0, v1}, Lm/b;->l(Z)V

    invoke-virtual {p0, p1}, Lm/b;->c(Lh/a;)V

    goto :goto_126

    :cond_123
    invoke-virtual {p0, v1}, Lm/b;->l(Z)V

    :goto_126
    return-void
.end method


# virtual methods
.method public a(Lj/f;ILjava/util/List;Lj/f;)V
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

    iget-object v0, p0, Lm/b;->o:Lm/e;

    iget-object v0, v0, Lm/e;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lj/f;->e(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    iget-object v0, p0, Lm/b;->o:Lm/e;

    iget-object v0, v0, Lm/e;->c:Ljava/lang/String;

    const-string v1, "__container"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lm/b;->o:Lm/e;

    iget-object v0, v0, Lm/e;->c:Ljava/lang/String;

    invoke-virtual {p4, v0}, Lj/f;->a(Ljava/lang/String;)Lj/f;

    move-result-object p4

    iget-object v0, p0, Lm/b;->o:Lm/e;

    iget-object v0, v0, Lm/e;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lj/f;->c(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {p4, p0}, Lj/f;->g(Lj/g;)Lj/f;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_30
    iget-object v0, p0, Lm/b;->o:Lm/e;

    iget-object v0, v0, Lm/e;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lj/f;->f(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lm/b;->o:Lm/e;

    iget-object v0, v0, Lm/e;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lj/f;->d(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0, p3, p4}, Lm/b;->j(Lj/f;ILjava/util/List;Lj/f;)V

    :cond_46
    return-void
.end method

.method public b(Ljava/lang/Object;Lr/c;)V
    .registers 3
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

    iget-object p0, p0, Lm/b;->u:Lh/m;

    invoke-virtual {p0, p1, p2}, Lh/m;->c(Ljava/lang/Object;Lr/c;)Z

    return-void
.end method

.method public c(Lh/a;)V
    .registers 2
    .param p1  # Lh/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/a<",
            "**>;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object p0, p0, Lm/b;->t:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d()V
    .registers 3

    iget-object v0, p0, Lm/b;->s:Ljava/util/List;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lm/b;->r:Lm/b;

    if-nez v0, :cond_10

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lm/b;->s:Ljava/util/List;

    return-void

    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lm/b;->s:Ljava/util/List;

    iget-object v0, p0, Lm/b;->r:Lm/b;

    :goto_19
    if-eqz v0, :cond_23

    iget-object v1, p0, Lm/b;->s:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lm/b;->r:Lm/b;

    goto :goto_19

    :cond_23
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lm/b;->l:Ljava/lang/String;

    iget-boolean v4, v0, Lm/b;->v:Z

    if-eqz v4, :cond_3f0

    iget-object v4, v0, Lm/b;->o:Lm/e;

    iget-boolean v4, v4, Lm/e;->v:Z

    if-eqz v4, :cond_14

    goto/16 :goto_3f0

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lm/b;->d()V

    iget-object v3, v0, Lm/b;->b:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    iget-object v3, v0, Lm/b;->b:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v3, v0, Lm/b;->s:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_29
    if-ltz v3, :cond_41

    iget-object v5, v0, Lm/b;->b:Landroid/graphics/Matrix;

    iget-object v6, v0, Lm/b;->s:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lm/b;

    iget-object v6, v6, Lm/b;->u:Lh/m;

    invoke-virtual {v6}, Lh/m;->e()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    add-int/lit8 v3, v3, -0x1

    goto :goto_29

    :cond_41
    const-string v3, "Layer#parentMatrix"

    invoke-static {v3}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)F

    iget-object v3, v0, Lm/b;->u:Lh/m;

    iget-object v3, v3, Lh/m;->j:Lh/a;

    if-nez v3, :cond_4f

    const/16 v3, 0x64

    goto :goto_59

    :cond_4f
    invoke-virtual {v3}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_59
    move/from16 v5, p3

    int-to-float v5, v5

    const/high16 v6, 0x437f0000  # 255.0f

    div-float/2addr v5, v6

    int-to-float v3, v3

    mul-float/2addr v5, v3

    const/high16 v3, 0x42c80000  # 100.0f

    div-float/2addr v5, v3

    mul-float/2addr v5, v6

    float-to-int v3, v5

    invoke-virtual/range {p0 .. p0}, Lm/b;->h()Z

    move-result v5

    const-string v6, "Layer#drawLayer"

    const/4 v7, 0x0

    if-nez v5, :cond_91

    invoke-virtual/range {p0 .. p0}, Lm/b;->g()Z

    move-result v5

    if-nez v5, :cond_91

    iget-object v2, v0, Lm/b;->b:Landroid/graphics/Matrix;

    iget-object v4, v0, Lm/b;->u:Lh/m;

    invoke-virtual {v4}, Lh/m;->e()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    iget-object v2, v0, Lm/b;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v2, v3}, Lm/b;->f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    invoke-static {v6}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)F

    iget-object v1, v0, Lm/b;->l:Ljava/lang/String;

    invoke-static {v1}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)F

    invoke-virtual {v0, v7}, Lm/b;->i(F)V

    return-void

    :cond_91
    iget-object v5, v0, Lm/b;->h:Landroid/graphics/RectF;

    iget-object v8, v0, Lm/b;->b:Landroid/graphics/Matrix;

    const/4 v9, 0x0

    invoke-virtual {v0, v5, v8, v9}, Lm/b;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object v5, v0, Lm/b;->h:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lm/b;->h()Z

    move-result v8

    const/4 v10, 0x3

    if-nez v8, :cond_a3

    goto :goto_c1

    :cond_a3
    iget-object v8, v0, Lm/b;->o:Lm/e;

    iget v8, v8, Lm/e;->u:I

    if-ne v8, v10, :cond_aa

    goto :goto_c1

    :cond_aa
    iget-object v8, v0, Lm/b;->j:Landroid/graphics/RectF;

    invoke-virtual {v8, v7, v7, v7, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v8, v0, Lm/b;->q:Lm/b;

    iget-object v11, v0, Lm/b;->j:Landroid/graphics/RectF;

    invoke-virtual {v8, v11, v2, v4}, Lm/b;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object v8, v0, Lm/b;->j:Landroid/graphics/RectF;

    invoke-virtual {v5, v8}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v8

    if-nez v8, :cond_c1

    invoke-virtual {v5, v7, v7, v7, v7}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_c1
    :goto_c1
    iget-object v5, v0, Lm/b;->b:Landroid/graphics/Matrix;

    iget-object v8, v0, Lm/b;->u:Lh/m;

    invoke-virtual {v8}, Lh/m;->e()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    iget-object v5, v0, Lm/b;->h:Landroid/graphics/RectF;

    iget-object v8, v0, Lm/b;->b:Landroid/graphics/Matrix;

    iget-object v11, v0, Lm/b;->i:Landroid/graphics/RectF;

    invoke-virtual {v11, v7, v7, v7, v7}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual/range {p0 .. p0}, Lm/b;->g()Z

    move-result v11

    const/4 v12, 0x2

    if-nez v11, :cond_de

    goto/16 :goto_17b

    :cond_de
    iget-object v11, v0, Lm/b;->p:Lh/g;

    iget-object v11, v11, Lh/g;->c:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    move v13, v9

    :goto_e7
    if-ge v13, v11, :cond_16d

    iget-object v14, v0, Lm/b;->p:Lh/g;

    iget-object v14, v14, Lh/g;->c:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ll/f;

    iget-object v15, v0, Lm/b;->p:Lh/g;

    iget-object v15, v15, Lh/g;->a:Ljava/util/List;

    invoke-interface {v15, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lh/a;

    invoke-virtual {v15}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/Path;

    iget-object v7, v0, Lm/b;->a:Landroid/graphics/Path;

    invoke-virtual {v7, v15}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object v7, v0, Lm/b;->a:Landroid/graphics/Path;

    invoke-virtual {v7, v8}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget v7, v14, Ll/f;->a:I

    invoke-static {v7}, Lj/b;->f(I)I

    move-result v7

    if-eqz v7, :cond_11c

    if-eq v7, v4, :cond_17a

    if-eq v7, v12, :cond_11c

    if-eq v7, v10, :cond_17a

    goto :goto_121

    :cond_11c
    iget-boolean v7, v14, Ll/f;->d:Z

    if-eqz v7, :cond_121

    goto :goto_17a

    :cond_121
    :goto_121
    iget-object v7, v0, Lm/b;->a:Landroid/graphics/Path;

    iget-object v14, v0, Lm/b;->k:Landroid/graphics/RectF;

    invoke-virtual {v7, v14, v9}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    if-nez v13, :cond_132

    iget-object v7, v0, Lm/b;->i:Landroid/graphics/RectF;

    iget-object v14, v0, Lm/b;->k:Landroid/graphics/RectF;

    invoke-virtual {v7, v14}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_165

    :cond_132
    iget-object v7, v0, Lm/b;->i:Landroid/graphics/RectF;

    iget v14, v7, Landroid/graphics/RectF;->left:F

    iget-object v15, v0, Lm/b;->k:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->left:F

    invoke-static {v14, v15}, Ljava/lang/Math;->min(FF)F

    move-result v14

    iget-object v15, v0, Lm/b;->i:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->top:F

    iget-object v9, v0, Lm/b;->k:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    invoke-static {v15, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    iget-object v15, v0, Lm/b;->i:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->right:F

    iget-object v10, v0, Lm/b;->k:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->right:F

    invoke-static {v15, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    iget-object v15, v0, Lm/b;->i:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->bottom:F

    iget-object v12, v0, Lm/b;->k:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->bottom:F

    invoke-static {v15, v12}, Ljava/lang/Math;->max(FF)F

    move-result v12

    invoke-virtual {v7, v14, v9, v10, v12}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_165
    add-int/lit8 v13, v13, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x3

    const/4 v12, 0x2

    goto/16 :goto_e7

    :cond_16d
    iget-object v7, v0, Lm/b;->i:Landroid/graphics/RectF;

    invoke-virtual {v5, v7}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v7

    if-nez v7, :cond_17a

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v7, v7, v7}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_17b

    :cond_17a
    :goto_17a
    const/4 v7, 0x0

    :goto_17b
    iget-object v5, v0, Lm/b;->h:Landroid/graphics/RectF;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v5, v7, v7, v8, v9}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v5

    if-nez v5, :cond_192

    iget-object v5, v0, Lm/b;->h:Landroid/graphics/RectF;

    invoke-virtual {v5, v7, v7, v7, v7}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_192
    const-string v5, "Layer#computeBounds"

    invoke-static {v5}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)F

    iget-object v5, v0, Lm/b;->h:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3e6

    iget-object v5, v0, Lm/b;->h:Landroid/graphics/RectF;

    iget-object v7, v0, Lm/b;->c:Landroid/graphics/Paint;

    sget-object v8, Lq/j;->a:Landroid/graphics/PathMeasure;

    invoke-virtual {v1, v5, v7}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    const-string v5, "Utils#saveLayer"

    invoke-static {v5}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)F

    const-string v7, "Layer#saveLayer"

    invoke-static {v7}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)F

    invoke-virtual/range {p0 .. p1}, Lm/b;->e(Landroid/graphics/Canvas;)V

    iget-object v8, v0, Lm/b;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v8, v3}, Lm/b;->f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    invoke-static {v6}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)F

    invoke-virtual/range {p0 .. p0}, Lm/b;->g()Z

    move-result v6

    const-string v8, "Layer#restoreLayer"

    if-eqz v6, :cond_3ba

    iget-object v6, v0, Lm/b;->b:Landroid/graphics/Matrix;

    iget-object v9, v0, Lm/b;->h:Landroid/graphics/RectF;

    iget-object v10, v0, Lm/b;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    invoke-static {v5}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)F

    invoke-static {v7}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)F

    const/4 v9, 0x0

    :goto_1d5
    iget-object v10, v0, Lm/b;->p:Lh/g;

    iget-object v10, v10, Lh/g;->c:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_3b4

    iget-object v10, v0, Lm/b;->p:Lh/g;

    iget-object v10, v10, Lh/g;->c:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ll/f;

    iget-object v11, v0, Lm/b;->p:Lh/g;

    iget-object v11, v11, Lh/g;->a:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lh/a;

    iget-object v12, v0, Lm/b;->p:Lh/g;

    iget-object v12, v12, Lh/g;->b:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lh/a;

    iget v13, v10, Ll/f;->a:I

    invoke-static {v13}, Lj/b;->f(I)I

    move-result v13

    const v14, 0x40233333  # 2.55f

    if-eqz v13, :cond_342

    const/16 v15, 0xff

    if-eq v13, v4, :cond_2cf

    const/4 v4, 0x2

    if-eq v13, v4, :cond_24f

    const/4 v4, 0x3

    if-eq v13, v4, :cond_214

    goto/16 :goto_3af

    :cond_214
    iget-object v10, v0, Lm/b;->p:Lh/g;

    iget-object v10, v10, Lh/g;->a:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_21f

    goto :goto_239

    :cond_21f
    const/4 v10, 0x0

    :goto_220
    iget-object v11, v0, Lm/b;->p:Lh/g;

    iget-object v11, v11, Lh/g;->c:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_23e

    iget-object v11, v0, Lm/b;->p:Lh/g;

    iget-object v11, v11, Lh/g;->c:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ll/f;

    iget v11, v11, Ll/f;->a:I

    const/4 v12, 0x4

    if-eq v11, v12, :cond_23b

    :goto_239
    const/4 v10, 0x0

    goto :goto_23f

    :cond_23b
    add-int/lit8 v10, v10, 0x1

    goto :goto_220

    :cond_23e
    const/4 v10, 0x1

    :goto_23f
    if-eqz v10, :cond_3af

    iget-object v10, v0, Lm/b;->c:Landroid/graphics/Paint;

    invoke-virtual {v10, v15}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v10, v0, Lm/b;->h:Landroid/graphics/RectF;

    iget-object v11, v0, Lm/b;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v11}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_3af

    :cond_24f
    const/4 v4, 0x3

    iget-boolean v10, v10, Ll/f;->d:Z

    if-eqz v10, :cond_295

    iget-object v10, v0, Lm/b;->h:Landroid/graphics/RectF;

    iget-object v13, v0, Lm/b;->d:Landroid/graphics/Paint;

    sget-object v15, Lq/j;->a:Landroid/graphics/PathMeasure;

    invoke-virtual {v1, v10, v13}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    invoke-static {v5}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)F

    iget-object v10, v0, Lm/b;->h:Landroid/graphics/RectF;

    iget-object v13, v0, Lm/b;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v13}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v10, v0, Lm/b;->e:Landroid/graphics/Paint;

    invoke-virtual {v12}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v14

    float-to-int v12, v12

    invoke-virtual {v10, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v11}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Path;

    iget-object v11, v0, Lm/b;->a:Landroid/graphics/Path;

    invoke-virtual {v11, v10}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object v10, v0, Lm/b;->a:Landroid/graphics/Path;

    invoke-virtual {v10, v6}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v10, v0, Lm/b;->a:Landroid/graphics/Path;

    iget-object v11, v0, Lm/b;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_3af

    :cond_295
    iget-object v10, v0, Lm/b;->h:Landroid/graphics/RectF;

    iget-object v13, v0, Lm/b;->d:Landroid/graphics/Paint;

    sget-object v15, Lq/j;->a:Landroid/graphics/PathMeasure;

    invoke-virtual {v1, v10, v13}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    invoke-static {v5}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)F

    invoke-virtual {v11}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Path;

    iget-object v11, v0, Lm/b;->a:Landroid/graphics/Path;

    invoke-virtual {v11, v10}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object v10, v0, Lm/b;->a:Landroid/graphics/Path;

    invoke-virtual {v10, v6}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v10, v0, Lm/b;->c:Landroid/graphics/Paint;

    invoke-virtual {v12}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v14

    float-to-int v11, v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v10, v0, Lm/b;->a:Landroid/graphics/Path;

    iget-object v11, v0, Lm/b;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_3af

    :cond_2cf
    const/4 v4, 0x3

    if-nez v9, :cond_2e5

    iget-object v13, v0, Lm/b;->c:Landroid/graphics/Paint;

    const/high16 v4, -0x1000000

    invoke-virtual {v13, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, v0, Lm/b;->c:Landroid/graphics/Paint;

    invoke-virtual {v4, v15}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, v0, Lm/b;->h:Landroid/graphics/RectF;

    iget-object v13, v0, Lm/b;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v13}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_2e5
    iget-boolean v4, v10, Ll/f;->d:Z

    if-eqz v4, :cond_32a

    iget-object v4, v0, Lm/b;->h:Landroid/graphics/RectF;

    iget-object v10, v0, Lm/b;->e:Landroid/graphics/Paint;

    sget-object v13, Lq/j;->a:Landroid/graphics/PathMeasure;

    invoke-virtual {v1, v4, v10}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    invoke-static {v5}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)F

    iget-object v4, v0, Lm/b;->h:Landroid/graphics/RectF;

    iget-object v10, v0, Lm/b;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v10}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v4, v0, Lm/b;->e:Landroid/graphics/Paint;

    invoke-virtual {v12}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v14

    float-to-int v10, v10

    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v11}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Path;

    iget-object v10, v0, Lm/b;->a:Landroid/graphics/Path;

    invoke-virtual {v10, v4}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object v4, v0, Lm/b;->a:Landroid/graphics/Path;

    invoke-virtual {v4, v6}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v4, v0, Lm/b;->a:Landroid/graphics/Path;

    iget-object v10, v0, Lm/b;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_3af

    :cond_32a
    invoke-virtual {v11}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Path;

    iget-object v10, v0, Lm/b;->a:Landroid/graphics/Path;

    invoke-virtual {v10, v4}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object v4, v0, Lm/b;->a:Landroid/graphics/Path;

    invoke-virtual {v4, v6}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v4, v0, Lm/b;->a:Landroid/graphics/Path;

    iget-object v10, v0, Lm/b;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_3af

    :cond_342
    iget-boolean v4, v10, Ll/f;->d:Z

    if-eqz v4, :cond_386

    iget-object v4, v0, Lm/b;->h:Landroid/graphics/RectF;

    iget-object v10, v0, Lm/b;->c:Landroid/graphics/Paint;

    sget-object v13, Lq/j;->a:Landroid/graphics/PathMeasure;

    invoke-virtual {v1, v4, v10}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    invoke-static {v5}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)F

    iget-object v4, v0, Lm/b;->h:Landroid/graphics/RectF;

    iget-object v10, v0, Lm/b;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v10}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {v11}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Path;

    iget-object v10, v0, Lm/b;->a:Landroid/graphics/Path;

    invoke-virtual {v10, v4}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object v4, v0, Lm/b;->a:Landroid/graphics/Path;

    invoke-virtual {v4, v6}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v4, v0, Lm/b;->c:Landroid/graphics/Paint;

    invoke-virtual {v12}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v14

    float-to-int v10, v10

    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, v0, Lm/b;->a:Landroid/graphics/Path;

    iget-object v10, v0, Lm/b;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_3af

    :cond_386
    invoke-virtual {v11}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Path;

    iget-object v10, v0, Lm/b;->a:Landroid/graphics/Path;

    invoke-virtual {v10, v4}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object v4, v0, Lm/b;->a:Landroid/graphics/Path;

    invoke-virtual {v4, v6}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v4, v0, Lm/b;->c:Landroid/graphics/Paint;

    invoke-virtual {v12}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v14

    float-to-int v10, v10

    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, v0, Lm/b;->a:Landroid/graphics/Path;

    iget-object v10, v0, Lm/b;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_3af
    :goto_3af
    add-int/lit8 v9, v9, 0x1

    const/4 v4, 0x1

    goto/16 :goto_1d5

    :cond_3b4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-static {v8}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)F

    :cond_3ba
    invoke-virtual/range {p0 .. p0}, Lm/b;->h()Z

    move-result v4

    if-eqz v4, :cond_3e0

    iget-object v4, v0, Lm/b;->h:Landroid/graphics/RectF;

    iget-object v6, v0, Lm/b;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    invoke-static {v5}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)F

    invoke-static {v7}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)F

    invoke-virtual/range {p0 .. p1}, Lm/b;->e(Landroid/graphics/Canvas;)V

    iget-object v4, v0, Lm/b;->q:Lm/b;

    invoke-virtual {v4, v1, v2, v3}, Lm/b;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-static {v8}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)F

    const-string v2, "Layer#drawMatte"

    invoke-static {v2}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)F

    :cond_3e0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-static {v8}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)F

    :cond_3e6
    iget-object v1, v0, Lm/b;->l:Ljava/lang/String;

    invoke-static {v1}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)F

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lm/b;->i(F)V

    return-void

    :cond_3f0
    :goto_3f0
    invoke-static {v3}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)F

    return-void
.end method

.method public final e(Landroid/graphics/Canvas;)V
    .registers 11

    iget-object v0, p0, Lm/b;->h:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x3f800000  # 1.0f

    sub-float v4, v1, v2

    iget v1, v0, Landroid/graphics/RectF;->top:F

    sub-float v5, v1, v2

    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float v6, v1, v2

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float v7, v0, v2

    iget-object v8, p0, Lm/b;->g:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const-string p0, "Layer#clearLayer"

    invoke-static {p0}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)F

    return-void
.end method

.method public abstract f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
.end method

.method public g()Z
    .registers 1

    iget-object p0, p0, Lm/b;->p:Lh/g;

    if-eqz p0, :cond_e

    iget-object p0, p0, Lh/g;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .registers 5
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iget-object p1, p0, Lm/b;->h:Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, Lm/b;->d()V

    iget-object p1, p0, Lm/b;->m:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    if-eqz p3, :cond_41

    iget-object p1, p0, Lm/b;->s:Ljava/util/List;

    if-eqz p1, :cond_32

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1a
    if-ltz p1, :cond_41

    iget-object p2, p0, Lm/b;->m:Landroid/graphics/Matrix;

    iget-object p3, p0, Lm/b;->s:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lm/b;

    iget-object p3, p3, Lm/b;->u:Lh/m;

    invoke-virtual {p3}, Lh/m;->e()Landroid/graphics/Matrix;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_1a

    :cond_32
    iget-object p1, p0, Lm/b;->r:Lm/b;

    if-eqz p1, :cond_41

    iget-object p2, p0, Lm/b;->m:Landroid/graphics/Matrix;

    iget-object p1, p1, Lm/b;->u:Lh/m;

    invoke-virtual {p1}, Lh/m;->e()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_41
    iget-object p1, p0, Lm/b;->m:Landroid/graphics/Matrix;

    iget-object p0, p0, Lm/b;->u:Lh/m;

    invoke-virtual {p0}, Lh/m;->e()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lm/b;->o:Lm/e;

    iget-object p0, p0, Lm/e;->c:Ljava/lang/String;

    return-object p0
.end method

.method public h()Z
    .registers 1

    iget-object p0, p0, Lm/b;->q:Lm/b;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public final i(F)V
    .registers 7

    iget-object v0, p0, Lm/b;->n:Lcom/airbnb/lottie/j;

    iget-object v0, v0, Lcom/airbnb/lottie/j;->b:Lcom/airbnb/lottie/d;

    iget-object v0, v0, Lcom/airbnb/lottie/d;->a:Lcom/airbnb/lottie/s;

    iget-object p0, p0, Lm/b;->o:Lm/e;

    iget-object p0, p0, Lm/e;->c:Ljava/lang/String;

    iget-boolean v1, v0, Lcom/airbnb/lottie/s;->a:Z

    if-nez v1, :cond_f

    goto :goto_5a

    :cond_f
    iget-object v1, v0, Lcom/airbnb/lottie/s;->c:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq/h;

    if-nez v1, :cond_23

    new-instance v1, Lq/h;

    invoke-direct {v1}, Lq/h;-><init>()V

    iget-object v2, v0, Lcom/airbnb/lottie/s;->c:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    iget v2, v1, Lq/h;->a:F

    add-float/2addr v2, p1

    iput v2, v1, Lq/h;->a:F

    iget v3, v1, Lq/h;->b:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lq/h;->b:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_3c

    const/high16 v4, 0x40000000  # 2.0f

    div-float/2addr v2, v4

    iput v2, v1, Lq/h;->a:F

    div-int/lit8 v3, v3, 0x2

    iput v3, v1, Lq/h;->b:I

    :cond_3c
    const-string v1, "__container"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5a

    iget-object p0, v0, Lcom/airbnb/lottie/s;->b:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/s$a;

    invoke-interface {v0, p1}, Lcom/airbnb/lottie/s$a;->onFrameRendered(F)V

    goto :goto_4a

    :cond_5a
    :goto_5a
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

    iget-object v0, p0, Lm/b;->u:Lh/m;

    iget-object v1, v0, Lh/m;->j:Lh/a;

    if-eqz v1, :cond_9

    invoke-virtual {v1, p1}, Lh/a;->h(F)V

    :cond_9
    iget-object v1, v0, Lh/m;->m:Lh/a;

    if-eqz v1, :cond_10

    invoke-virtual {v1, p1}, Lh/a;->h(F)V

    :cond_10
    iget-object v1, v0, Lh/m;->n:Lh/a;

    if-eqz v1, :cond_17

    invoke-virtual {v1, p1}, Lh/a;->h(F)V

    :cond_17
    iget-object v1, v0, Lh/m;->f:Lh/a;

    if-eqz v1, :cond_1e

    invoke-virtual {v1, p1}, Lh/a;->h(F)V

    :cond_1e
    iget-object v1, v0, Lh/m;->g:Lh/a;

    if-eqz v1, :cond_25

    invoke-virtual {v1, p1}, Lh/a;->h(F)V

    :cond_25
    iget-object v1, v0, Lh/m;->h:Lh/a;

    if-eqz v1, :cond_2c

    invoke-virtual {v1, p1}, Lh/a;->h(F)V

    :cond_2c
    iget-object v1, v0, Lh/m;->i:Lh/a;

    if-eqz v1, :cond_33

    invoke-virtual {v1, p1}, Lh/a;->h(F)V

    :cond_33
    iget-object v1, v0, Lh/m;->k:Lh/c;

    if-eqz v1, :cond_3a

    invoke-virtual {v1, p1}, Lh/a;->h(F)V

    :cond_3a
    iget-object v0, v0, Lh/m;->l:Lh/c;

    if-eqz v0, :cond_41

    invoke-virtual {v0, p1}, Lh/a;->h(F)V

    :cond_41
    iget-object v0, p0, Lm/b;->p:Lh/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_61

    move v0, v1

    :goto_47
    iget-object v2, p0, Lm/b;->p:Lh/g;

    iget-object v2, v2, Lh/g;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_61

    iget-object v2, p0, Lm/b;->p:Lh/g;

    iget-object v2, v2, Lh/g;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh/a;

    invoke-virtual {v2, p1}, Lh/a;->h(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    :cond_61
    iget-object v0, p0, Lm/b;->o:Lm/e;

    iget v0, v0, Lm/e;->m:F

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_6b

    div-float/2addr p1, v0

    :cond_6b
    iget-object v0, p0, Lm/b;->q:Lm/b;

    if-eqz v0, :cond_77

    iget-object v2, v0, Lm/b;->o:Lm/e;

    iget v2, v2, Lm/e;->m:F

    mul-float/2addr v2, p1

    invoke-virtual {v0, v2}, Lm/b;->k(F)V

    :cond_77
    :goto_77
    iget-object v0, p0, Lm/b;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_8d

    iget-object v0, p0, Lm/b;->t:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh/a;

    invoke-virtual {v0, p1}, Lh/a;->h(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_77

    :cond_8d
    return-void
.end method

.method public final l(Z)V
    .registers 3

    iget-boolean v0, p0, Lm/b;->v:Z

    if-eq p1, v0, :cond_b

    iput-boolean p1, p0, Lm/b;->v:Z

    iget-object p0, p0, Lm/b;->n:Lcom/airbnb/lottie/j;

    invoke-virtual {p0}, Lcom/airbnb/lottie/j;->invalidateSelf()V

    :cond_b
    return-void
.end method

.method public onValueChanged()V
    .registers 1

    iget-object p0, p0, Lm/b;->n:Lcom/airbnb/lottie/j;

    invoke-virtual {p0}, Lcom/airbnb/lottie/j;->invalidateSelf()V

    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .registers 3
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

    return-void
.end method
