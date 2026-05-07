.class public Lh/m;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Landroid/graphics/Matrix;

.field public final b:Landroid/graphics/Matrix;

.field public final c:Landroid/graphics/Matrix;

.field public final d:Landroid/graphics/Matrix;

.field public final e:[F

.field public f:Lh/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lh/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lh/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "Lr/d;",
            "Lr/d;",
            ">;"
        }
    .end annotation
.end field

.field public i:Lh/a;
    .annotation build Landroidx/annotation/NonNull;
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

.field public j:Lh/a;
    .annotation build Landroidx/annotation/NonNull;
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

.field public k:Lh/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public l:Lh/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public m:Lh/a;
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
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lk/k;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lh/m;->a:Landroid/graphics/Matrix;

    iget-object v0, p1, Lk/k;->a:Lg/b;

    const/4 v1, 0x0

    if-nez v0, :cond_11

    move-object v0, v1

    goto :goto_15

    :cond_11
    invoke-virtual {v0}, Lg/b;->createAnimation()Lh/a;

    move-result-object v0

    :goto_15
    iput-object v0, p0, Lh/m;->f:Lh/a;

    iget-object v0, p1, Lk/k;->b:Lk/l;

    if-nez v0, :cond_1d

    move-object v0, v1

    goto :goto_21

    :cond_1d
    invoke-interface {v0}, Lk/l;->createAnimation()Lh/a;

    move-result-object v0

    :goto_21
    iput-object v0, p0, Lh/m;->g:Lh/a;

    iget-object v0, p1, Lk/k;->c:Lk/f;

    if-nez v0, :cond_29

    move-object v0, v1

    goto :goto_2d

    :cond_29
    invoke-virtual {v0}, Lk/f;->createAnimation()Lh/a;

    move-result-object v0

    :goto_2d
    iput-object v0, p0, Lh/m;->h:Lh/a;

    iget-object v0, p1, Lk/k;->d:Lk/b;

    if-nez v0, :cond_35

    move-object v0, v1

    goto :goto_39

    :cond_35
    invoke-virtual {v0}, Lk/b;->createAnimation()Lh/a;

    move-result-object v0

    :goto_39
    iput-object v0, p0, Lh/m;->i:Lh/a;

    iget-object v0, p1, Lk/k;->f:Lk/b;

    if-nez v0, :cond_41

    move-object v0, v1

    goto :goto_47

    :cond_41
    invoke-virtual {v0}, Lk/b;->createAnimation()Lh/a;

    move-result-object v0

    check-cast v0, Lh/c;

    :goto_47
    iput-object v0, p0, Lh/m;->k:Lh/c;

    if-eqz v0, :cond_67

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lh/m;->b:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lh/m;->c:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lh/m;->d:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lh/m;->e:[F

    goto :goto_6f

    :cond_67
    iput-object v1, p0, Lh/m;->b:Landroid/graphics/Matrix;

    iput-object v1, p0, Lh/m;->c:Landroid/graphics/Matrix;

    iput-object v1, p0, Lh/m;->d:Landroid/graphics/Matrix;

    iput-object v1, p0, Lh/m;->e:[F

    :goto_6f
    iget-object v0, p1, Lk/k;->g:Lk/b;

    if-nez v0, :cond_75

    move-object v0, v1

    goto :goto_7b

    :cond_75
    invoke-virtual {v0}, Lk/b;->createAnimation()Lh/a;

    move-result-object v0

    check-cast v0, Lh/c;

    :goto_7b
    iput-object v0, p0, Lh/m;->l:Lh/c;

    iget-object v0, p1, Lk/k;->e:Lk/d;

    if-eqz v0, :cond_87

    invoke-virtual {v0}, Lk/d;->createAnimation()Lh/a;

    move-result-object v0

    iput-object v0, p0, Lh/m;->j:Lh/a;

    :cond_87
    iget-object v0, p1, Lk/k;->h:Lk/b;

    if-eqz v0, :cond_92

    invoke-virtual {v0}, Lk/b;->createAnimation()Lh/a;

    move-result-object v0

    iput-object v0, p0, Lh/m;->m:Lh/a;

    goto :goto_94

    :cond_92
    iput-object v1, p0, Lh/m;->m:Lh/a;

    :goto_94
    iget-object p1, p1, Lk/k;->i:Lk/b;

    if-eqz p1, :cond_9f

    invoke-virtual {p1}, Lk/b;->createAnimation()Lh/a;

    move-result-object p1

    iput-object p1, p0, Lh/m;->n:Lh/a;

    goto :goto_a1

    :cond_9f
    iput-object v1, p0, Lh/m;->n:Lh/a;

    :goto_a1
    return-void
.end method


# virtual methods
.method public a(Lm/b;)V
    .registers 3

    iget-object v0, p0, Lh/m;->j:Lh/a;

    invoke-virtual {p1, v0}, Lm/b;->c(Lh/a;)V

    iget-object v0, p0, Lh/m;->m:Lh/a;

    invoke-virtual {p1, v0}, Lm/b;->c(Lh/a;)V

    iget-object v0, p0, Lh/m;->n:Lh/a;

    invoke-virtual {p1, v0}, Lm/b;->c(Lh/a;)V

    iget-object v0, p0, Lh/m;->f:Lh/a;

    invoke-virtual {p1, v0}, Lm/b;->c(Lh/a;)V

    iget-object v0, p0, Lh/m;->g:Lh/a;

    invoke-virtual {p1, v0}, Lm/b;->c(Lh/a;)V

    iget-object v0, p0, Lh/m;->h:Lh/a;

    invoke-virtual {p1, v0}, Lm/b;->c(Lh/a;)V

    iget-object v0, p0, Lh/m;->i:Lh/a;

    invoke-virtual {p1, v0}, Lm/b;->c(Lh/a;)V

    iget-object v0, p0, Lh/m;->k:Lh/c;

    invoke-virtual {p1, v0}, Lm/b;->c(Lh/a;)V

    iget-object p0, p0, Lh/m;->l:Lh/c;

    invoke-virtual {p1, p0}, Lm/b;->c(Lh/a;)V

    return-void
.end method

.method public b(Lh/a$b;)V
    .registers 3

    iget-object v0, p0, Lh/m;->j:Lh/a;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lh/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-object v0, p0, Lh/m;->m:Lh/a;

    if-eqz v0, :cond_12

    iget-object v0, v0, Lh/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    iget-object v0, p0, Lh/m;->n:Lh/a;

    if-eqz v0, :cond_1b

    iget-object v0, v0, Lh/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    iget-object v0, p0, Lh/m;->f:Lh/a;

    if-eqz v0, :cond_24

    iget-object v0, v0, Lh/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_24
    iget-object v0, p0, Lh/m;->g:Lh/a;

    if-eqz v0, :cond_2d

    iget-object v0, v0, Lh/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2d
    iget-object v0, p0, Lh/m;->h:Lh/a;

    if-eqz v0, :cond_36

    iget-object v0, v0, Lh/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_36
    iget-object v0, p0, Lh/m;->i:Lh/a;

    if-eqz v0, :cond_3f

    iget-object v0, v0, Lh/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3f
    iget-object v0, p0, Lh/m;->k:Lh/c;

    if-eqz v0, :cond_48

    iget-object v0, v0, Lh/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_48
    iget-object p0, p0, Lh/m;->l:Lh/c;

    if-eqz p0, :cond_51

    iget-object p0, p0, Lh/a;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_51
    return-void
.end method

.method public c(Ljava/lang/Object;Lr/c;)Z
    .registers 6
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
            "TT;>;)Z"
        }
    .end annotation

    sget-object v0, Lcom/airbnb/lottie/o;->e:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_1c

    iget-object p1, p0, Lh/m;->f:Lh/a;

    if-nez p1, :cond_16

    new-instance p1, Lh/n;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-direct {p1, p2, v0}, Lh/n;-><init>(Lr/c;Ljava/lang/Object;)V

    iput-object p1, p0, Lh/m;->f:Lh/a;

    goto/16 :goto_10c

    :cond_16
    iget-object p0, p1, Lh/a;->e:Lr/c;

    iput-object p2, p1, Lh/a;->e:Lr/c;

    goto/16 :goto_10c

    :cond_1c
    sget-object v0, Lcom/airbnb/lottie/o;->f:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_38

    iget-object p1, p0, Lh/m;->g:Lh/a;

    if-nez p1, :cond_32

    new-instance p1, Lh/n;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-direct {p1, p2, v0}, Lh/n;-><init>(Lr/c;Ljava/lang/Object;)V

    iput-object p1, p0, Lh/m;->g:Lh/a;

    goto/16 :goto_10c

    :cond_32
    iget-object p0, p1, Lh/a;->e:Lr/c;

    iput-object p2, p1, Lh/a;->e:Lr/c;

    goto/16 :goto_10c

    :cond_38
    sget-object v0, Lcom/airbnb/lottie/o;->k:Lr/d;

    if-ne p1, v0, :cond_54

    iget-object p1, p0, Lh/m;->h:Lh/a;

    if-nez p1, :cond_4e

    new-instance p1, Lh/n;

    new-instance v0, Lr/d;

    invoke-direct {v0}, Lr/d;-><init>()V

    invoke-direct {p1, p2, v0}, Lh/n;-><init>(Lr/c;Ljava/lang/Object;)V

    iput-object p1, p0, Lh/m;->h:Lh/a;

    goto/16 :goto_10c

    :cond_4e
    iget-object p0, p1, Lh/a;->e:Lr/c;

    iput-object p2, p1, Lh/a;->e:Lr/c;

    goto/16 :goto_10c

    :cond_54
    sget-object v0, Lcom/airbnb/lottie/o;->l:Ljava/lang/Float;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_70

    iget-object p1, p0, Lh/m;->i:Lh/a;

    if-nez p1, :cond_6a

    new-instance p1, Lh/n;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lh/n;-><init>(Lr/c;Ljava/lang/Object;)V

    iput-object p1, p0, Lh/m;->i:Lh/a;

    goto/16 :goto_10c

    :cond_6a
    iget-object p0, p1, Lh/a;->e:Lr/c;

    iput-object p2, p1, Lh/a;->e:Lr/c;

    goto/16 :goto_10c

    :cond_70
    sget-object v0, Lcom/airbnb/lottie/o;->c:Ljava/lang/Integer;

    const/16 v2, 0x64

    if-ne p1, v0, :cond_8d

    iget-object p1, p0, Lh/m;->j:Lh/a;

    if-nez p1, :cond_87

    new-instance p1, Lh/n;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lh/n;-><init>(Lr/c;Ljava/lang/Object;)V

    iput-object p1, p0, Lh/m;->j:Lh/a;

    goto/16 :goto_10c

    :cond_87
    iget-object p0, p1, Lh/a;->e:Lr/c;

    iput-object p2, p1, Lh/a;->e:Lr/c;

    goto/16 :goto_10c

    :cond_8d
    sget-object v0, Lcom/airbnb/lottie/o;->y:Ljava/lang/Float;

    if-ne p1, v0, :cond_a8

    iget-object v0, p0, Lh/m;->m:Lh/a;

    if-eqz v0, :cond_a8

    if-nez v0, :cond_a3

    new-instance p1, Lh/n;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lh/n;-><init>(Lr/c;Ljava/lang/Object;)V

    iput-object p1, p0, Lh/m;->m:Lh/a;

    goto :goto_10c

    :cond_a3
    iget-object p0, v0, Lh/a;->e:Lr/c;

    iput-object p2, v0, Lh/a;->e:Lr/c;

    goto :goto_10c

    :cond_a8
    sget-object v0, Lcom/airbnb/lottie/o;->z:Ljava/lang/Float;

    if-ne p1, v0, :cond_c3

    iget-object v0, p0, Lh/m;->n:Lh/a;

    if-eqz v0, :cond_c3

    if-nez v0, :cond_be

    new-instance p1, Lh/n;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lh/n;-><init>(Lr/c;Ljava/lang/Object;)V

    iput-object p1, p0, Lh/m;->n:Lh/a;

    goto :goto_10c

    :cond_be
    iget-object p0, v0, Lh/a;->e:Lr/c;

    iput-object p2, v0, Lh/a;->e:Lr/c;

    goto :goto_10c

    :cond_c3
    sget-object v0, Lcom/airbnb/lottie/o;->m:Ljava/lang/Float;

    if-ne p1, v0, :cond_e8

    iget-object v0, p0, Lh/m;->k:Lh/c;

    if-eqz v0, :cond_e8

    if-nez v0, :cond_e1

    new-instance p1, Lh/c;

    new-instance v0, Lr/a;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, Lr/a;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Lh/c;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lh/m;->k:Lh/c;

    :cond_e1
    iget-object p0, p0, Lh/m;->k:Lh/c;

    iget-object p1, p0, Lh/a;->e:Lr/c;

    iput-object p2, p0, Lh/a;->e:Lr/c;

    goto :goto_10c

    :cond_e8
    sget-object v0, Lcom/airbnb/lottie/o;->n:Ljava/lang/Float;

    if-ne p1, v0, :cond_10e

    iget-object p1, p0, Lh/m;->l:Lh/c;

    if-eqz p1, :cond_10e

    if-nez p1, :cond_106

    new-instance p1, Lh/c;

    new-instance v0, Lr/a;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, Lr/a;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Lh/c;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lh/m;->l:Lh/c;

    :cond_106
    iget-object p0, p0, Lh/m;->l:Lh/c;

    iget-object p1, p0, Lh/a;->e:Lr/c;

    iput-object p2, p0, Lh/a;->e:Lr/c;

    :goto_10c
    const/4 p0, 0x1

    return p0

    :cond_10e
    const/4 p0, 0x0

    return p0
.end method

.method public final d()V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x9

    if-ge v0, v1, :cond_d

    iget-object v1, p0, Lh/m;->e:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_d
    return-void
.end method

.method public e()Landroid/graphics/Matrix;
    .registers 14

    iget-object v0, p0, Lh/m;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lh/m;->g:Lh/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v3, v2, v1

    if-nez v3, :cond_1c

    iget v3, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_23

    :cond_1c
    iget-object v3, p0, Lh/m;->a:Landroid/graphics/Matrix;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v2, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_23
    iget-object v0, p0, Lh/m;->i:Lh/a;

    if-eqz v0, :cond_45

    instance-of v2, v0, Lh/n;

    if-eqz v2, :cond_36

    invoke-virtual {v0}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_3c

    :cond_36
    check-cast v0, Lh/c;

    invoke-virtual {v0}, Lh/c;->i()F

    move-result v0

    :goto_3c
    cmpl-float v2, v0, v1

    if-eqz v2, :cond_45

    iget-object v2, p0, Lh/m;->a:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    :cond_45
    iget-object v0, p0, Lh/m;->k:Lh/c;

    const/high16 v2, 0x3f800000  # 1.0f

    if-eqz v0, :cond_df

    iget-object v0, p0, Lh/m;->l:Lh/c;

    const/high16 v3, 0x42b40000  # 90.0f

    if-nez v0, :cond_53

    move v0, v1

    goto :goto_63

    :cond_53
    invoke-virtual {v0}, Lh/c;->i()F

    move-result v0

    neg-float v0, v0

    add-float/2addr v0, v3

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v0, v4

    :goto_63
    iget-object v4, p0, Lh/m;->l:Lh/c;

    if-nez v4, :cond_69

    move v3, v2

    goto :goto_79

    :cond_69
    invoke-virtual {v4}, Lh/c;->i()F

    move-result v4

    neg-float v4, v4

    add-float/2addr v4, v3

    float-to-double v3, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    :goto_79
    iget-object v4, p0, Lh/m;->k:Lh/c;

    invoke-virtual {v4}, Lh/c;->i()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {p0}, Lh/m;->d()V

    iget-object v5, p0, Lh/m;->e:[F

    const/4 v6, 0x0

    aput v0, v5, v6

    const/4 v7, 0x1

    aput v3, v5, v7

    neg-float v8, v3

    const/4 v9, 0x3

    aput v8, v5, v9

    const/4 v10, 0x4

    aput v0, v5, v10

    const/16 v11, 0x8

    aput v2, v5, v11

    iget-object v12, p0, Lh/m;->b:Landroid/graphics/Matrix;

    invoke-virtual {v12, v5}, Landroid/graphics/Matrix;->setValues([F)V

    invoke-virtual {p0}, Lh/m;->d()V

    iget-object v5, p0, Lh/m;->e:[F

    aput v2, v5, v6

    aput v4, v5, v9

    aput v2, v5, v10

    aput v2, v5, v11

    iget-object v4, p0, Lh/m;->c:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->setValues([F)V

    invoke-virtual {p0}, Lh/m;->d()V

    iget-object v4, p0, Lh/m;->e:[F

    aput v0, v4, v6

    aput v8, v4, v7

    aput v3, v4, v9

    aput v0, v4, v10

    aput v2, v4, v11

    iget-object v0, p0, Lh/m;->d:Landroid/graphics/Matrix;

    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->setValues([F)V

    iget-object v0, p0, Lh/m;->c:Landroid/graphics/Matrix;

    iget-object v3, p0, Lh/m;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lh/m;->d:Landroid/graphics/Matrix;

    iget-object v3, p0, Lh/m;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lh/m;->a:Landroid/graphics/Matrix;

    iget-object v3, p0, Lh/m;->d:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_df
    iget-object v0, p0, Lh/m;->h:Lh/a;

    if-eqz v0, :cond_fc

    invoke-virtual {v0}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/d;

    iget v3, v0, Lr/d;->a:F

    cmpl-float v4, v3, v2

    if-nez v4, :cond_f5

    iget v4, v0, Lr/d;->b:F

    cmpl-float v2, v4, v2

    if-eqz v2, :cond_fc

    :cond_f5
    iget-object v2, p0, Lh/m;->a:Landroid/graphics/Matrix;

    iget v0, v0, Lr/d;->b:F

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_fc
    iget-object v0, p0, Lh/m;->f:Lh/a;

    if-eqz v0, :cond_11b

    invoke-virtual {v0}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v3, v2, v1

    if-nez v3, :cond_112

    iget v3, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v3, v1

    if-eqz v1, :cond_11b

    :cond_112
    iget-object v1, p0, Lh/m;->a:Landroid/graphics/Matrix;

    neg-float v2, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    neg-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_11b
    iget-object p0, p0, Lh/m;->a:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public f(F)Landroid/graphics/Matrix;
    .registers 11

    iget-object v0, p0, Lh/m;->g:Lh/a;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move-object v0, v1

    goto :goto_d

    :cond_7
    invoke-virtual {v0}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    :goto_d
    iget-object v2, p0, Lh/m;->h:Lh/a;

    if-nez v2, :cond_13

    move-object v2, v1

    goto :goto_19

    :cond_13
    invoke-virtual {v2}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr/d;

    :goto_19
    iget-object v3, p0, Lh/m;->a:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    if-eqz v0, :cond_2b

    iget-object v3, p0, Lh/m;->a:Landroid/graphics/Matrix;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v4, p1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, p1

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_2b
    if-eqz v2, :cond_43

    iget-object v0, p0, Lh/m;->a:Landroid/graphics/Matrix;

    iget v3, v2, Lr/d;->a:F

    float-to-double v3, v3

    float-to-double v5, p1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    iget v2, v2, Lr/d;->b:F

    float-to-double v7, v2

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v2, v4

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_43
    iget-object v0, p0, Lh/m;->i:Lh/a;

    if-eqz v0, :cond_6e

    invoke-virtual {v0}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v2, p0, Lh/m;->f:Lh/a;

    if-nez v2, :cond_56

    goto :goto_5c

    :cond_56
    invoke-virtual {v2}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    :goto_5c
    iget-object v2, p0, Lh/m;->a:Landroid/graphics/Matrix;

    mul-float/2addr v0, p1

    const/4 p1, 0x0

    if-nez v1, :cond_64

    move v3, p1

    goto :goto_66

    :cond_64
    iget v3, v1, Landroid/graphics/PointF;->x:F

    :goto_66
    if-nez v1, :cond_69

    goto :goto_6b

    :cond_69
    iget p1, v1, Landroid/graphics/PointF;->y:F

    :goto_6b
    invoke-virtual {v2, v0, v3, p1}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    :cond_6e
    iget-object p0, p0, Lh/m;->a:Landroid/graphics/Matrix;

    return-object p0
.end method
