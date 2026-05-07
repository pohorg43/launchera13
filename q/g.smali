.class public Lq/g;
.super Lq/a;
.source ""

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public c:F

.field public d:Z

.field public e:J

.field public f:F

.field public g:I

.field public h:F

.field public i:F

.field public j:Lcom/airbnb/lottie/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public k:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Lq/a;-><init>()V

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lq/g;->c:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lq/g;->d:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lq/g;->e:J

    const/4 v1, 0x0

    iput v1, p0, Lq/g;->f:F

    iput v0, p0, Lq/g;->g:I

    const/high16 v1, -0x31000000

    iput v1, p0, Lq/g;->h:F

    const/high16 v1, 0x4f000000

    iput v1, p0, Lq/g;->i:F

    iput-boolean v0, p0, Lq/g;->k:Z

    return-void
.end method


# virtual methods
.method public c()V
    .registers 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-virtual {p0}, Lq/g;->i()V

    invoke-virtual {p0}, Lq/g;->g()Z

    move-result v0

    invoke-virtual {p0, v0}, Lq/a;->a(Z)V

    return-void
.end method

.method public cancel()V
    .registers 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lq/a;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v1, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    goto :goto_6

    :cond_16
    invoke-virtual {p0}, Lq/g;->i()V

    return-void
.end method

.method public d()F
    .registers 3
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    iget-object v0, p0, Lq/g;->j:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    iget p0, p0, Lq/g;->f:F

    iget v1, v0, Lcom/airbnb/lottie/d;->k:F

    sub-float/2addr p0, v1

    iget v0, v0, Lcom/airbnb/lottie/d;->l:F

    sub-float/2addr v0, v1

    div-float/2addr p0, v0

    return p0
.end method

.method public doFrame(J)V
    .registers 9

    invoke-virtual {p0}, Lq/g;->h()V

    iget-object v0, p0, Lq/g;->j:Lcom/airbnb/lottie/d;

    if-eqz v0, :cond_10e

    iget-boolean v1, p0, Lq/g;->k:Z

    if-nez v1, :cond_d

    goto/16 :goto_10e

    :cond_d
    iget-wide v1, p0, Lq/g;->e:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_16

    goto :goto_18

    :cond_16
    sub-long v3, p1, v1

    :goto_18
    const v1, 0x4e6e6b28  # 1.0E9f

    iget v0, v0, Lcom/airbnb/lottie/d;->m:F

    div-float/2addr v1, v0

    iget v0, p0, Lq/g;->c:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v1, v0

    long-to-float v0, v3

    div-float/2addr v0, v1

    iget v1, p0, Lq/g;->f:F

    invoke-virtual {p0}, Lq/g;->g()Z

    move-result v2

    if-eqz v2, :cond_30

    neg-float v0, v0

    :cond_30
    add-float/2addr v1, v0

    iput v1, p0, Lq/g;->f:F

    invoke-virtual {p0}, Lq/g;->f()F

    move-result v0

    invoke-virtual {p0}, Lq/g;->e()F

    move-result v2

    sget-object v3, Lq/i;->a:Landroid/graphics/PointF;

    cmpl-float v0, v1, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v0, :cond_49

    cmpg-float v0, v1, v2

    if-gtz v0, :cond_49

    move v0, v4

    goto :goto_4a

    :cond_49
    move v0, v3

    :goto_4a
    xor-int/2addr v0, v4

    iget v1, p0, Lq/g;->f:F

    invoke-virtual {p0}, Lq/g;->f()F

    move-result v2

    invoke-virtual {p0}, Lq/g;->e()F

    move-result v5

    invoke-static {v1, v2, v5}, Lq/i;->b(FFF)F

    move-result v1

    iput v1, p0, Lq/g;->f:F

    iput-wide p1, p0, Lq/g;->e:J

    invoke-virtual {p0}, Lq/a;->b()V

    const/4 v1, 0x2

    if-eqz v0, :cond_ce

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_8f

    iget v0, p0, Lq/g;->g:I

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v2

    if-lt v0, v2, :cond_8f

    iget p1, p0, Lq/g;->c:F

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_7e

    invoke-virtual {p0}, Lq/g;->f()F

    move-result p1

    goto :goto_82

    :cond_7e
    invoke-virtual {p0}, Lq/g;->e()F

    move-result p1

    :goto_82
    iput p1, p0, Lq/g;->f:F

    invoke-virtual {p0}, Lq/g;->i()V

    invoke-virtual {p0}, Lq/g;->g()Z

    move-result p1

    invoke-virtual {p0, p1}, Lq/a;->a(Z)V

    goto :goto_ce

    :cond_8f
    iget-object v0, p0, Lq/a;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_95
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v2, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    goto :goto_95

    :cond_a5
    iget v0, p0, Lq/g;->g:I

    add-int/2addr v0, v4

    iput v0, p0, Lq/g;->g:I

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatMode()I

    move-result v0

    if-ne v0, v1, :cond_bb

    iget-boolean v0, p0, Lq/g;->d:Z

    xor-int/2addr v0, v4

    iput-boolean v0, p0, Lq/g;->d:Z

    iget v0, p0, Lq/g;->c:F

    neg-float v0, v0

    iput v0, p0, Lq/g;->c:F

    goto :goto_cc

    :cond_bb
    invoke-virtual {p0}, Lq/g;->g()Z

    move-result v0

    if-eqz v0, :cond_c6

    invoke-virtual {p0}, Lq/g;->e()F

    move-result v0

    goto :goto_ca

    :cond_c6
    invoke-virtual {p0}, Lq/g;->f()F

    move-result v0

    :goto_ca
    iput v0, p0, Lq/g;->f:F

    :goto_cc
    iput-wide p1, p0, Lq/g;->e:J

    :cond_ce
    :goto_ce
    iget-object p1, p0, Lq/g;->j:Lcom/airbnb/lottie/d;

    if-nez p1, :cond_d3

    goto :goto_e1

    :cond_d3
    iget p1, p0, Lq/g;->f:F

    iget p2, p0, Lq/g;->h:F

    cmpg-float p2, p1, p2

    if-ltz p2, :cond_e7

    iget p2, p0, Lq/g;->i:F

    cmpl-float p1, p1, p2

    if-gtz p1, :cond_e7

    :goto_e1
    const-string p0, "LottieValueAnimator#doFrame"

    invoke-static {p0}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)F

    return-void

    :cond_e7
    new-instance p1, Ljava/lang/IllegalStateException;

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    iget v0, p0, Lq/g;->h:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p2, v3

    iget v0, p0, Lq/g;->i:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p2, v4

    iget p0, p0, Lq/g;->f:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, p2, v1

    const-string p0, "Frame must be [%f,%f]. It is %f"

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10e
    :goto_10e
    return-void
.end method

.method public e()F
    .registers 3

    iget-object v0, p0, Lq/g;->j:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    iget p0, p0, Lq/g;->i:F

    const/high16 v1, 0x4f000000

    cmpl-float v1, p0, v1

    if-nez v1, :cond_10

    iget p0, v0, Lcom/airbnb/lottie/d;->l:F

    :cond_10
    return p0
.end method

.method public f()F
    .registers 3

    iget-object v0, p0, Lq/g;->j:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    iget p0, p0, Lq/g;->h:F

    const/high16 v1, -0x31000000

    cmpl-float v1, p0, v1

    if-nez v1, :cond_10

    iget p0, v0, Lcom/airbnb/lottie/d;->k:F

    :cond_10
    return p0
.end method

.method public final g()Z
    .registers 2

    iget p0, p0, Lq/g;->c:F

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    if-gez p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public getAnimatedFraction()F
    .registers 3
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    iget-object v0, p0, Lq/g;->j:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    invoke-virtual {p0}, Lq/g;->g()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lq/g;->e()F

    move-result v0

    iget v1, p0, Lq/g;->f:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lq/g;->e()F

    move-result v1

    invoke-virtual {p0}, Lq/g;->f()F

    move-result p0

    :goto_1b
    sub-float/2addr v1, p0

    div-float/2addr v0, v1

    return v0

    :cond_1e
    iget v0, p0, Lq/g;->f:F

    invoke-virtual {p0}, Lq/g;->f()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lq/g;->e()F

    move-result v1

    invoke-virtual {p0}, Lq/g;->f()F

    move-result p0

    goto :goto_1b
.end method

.method public getAnimatedValue()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lq/g;->d()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public getDuration()J
    .registers 3

    iget-object p0, p0, Lq/g;->j:Lcom/airbnb/lottie/d;

    if-nez p0, :cond_7

    const-wide/16 v0, 0x0

    goto :goto_c

    :cond_7
    invoke-virtual {p0}, Lcom/airbnb/lottie/d;->b()F

    move-result p0

    float-to-long v0, p0

    :goto_c
    return-wide v0
.end method

.method public h()V
    .registers 2

    iget-boolean v0, p0, Lq/g;->k:Z

    if-eqz v0, :cond_12

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_12
    return-void
.end method

.method public i()V
    .registers 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lq/g;->k:Z

    return-void
.end method

.method public isRunning()Z
    .registers 1

    iget-boolean p0, p0, Lq/g;->k:Z

    return p0
.end method

.method public j(F)V
    .registers 4

    iget v0, p0, Lq/g;->f:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Lq/g;->f()F

    move-result v0

    invoke-virtual {p0}, Lq/g;->e()F

    move-result v1

    invoke-static {p1, v0, v1}, Lq/i;->b(FFF)F

    move-result p1

    iput p1, p0, Lq/g;->f:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lq/g;->e:J

    invoke-virtual {p0}, Lq/a;->b()V

    return-void
.end method

.method public k(FF)V
    .registers 6

    cmpl-float v0, p1, p2

    if-gtz v0, :cond_2e

    iget-object v0, p0, Lq/g;->j:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_c

    const v1, -0x800001

    goto :goto_e

    :cond_c
    iget v1, v0, Lcom/airbnb/lottie/d;->k:F

    :goto_e
    if-nez v0, :cond_14

    const v0, 0x7f7fffff  # Float.MAX_VALUE

    goto :goto_16

    :cond_14
    iget v0, v0, Lcom/airbnb/lottie/d;->l:F

    :goto_16
    invoke-static {p1, v1, v0}, Lq/i;->b(FFF)F

    move-result v2

    iput v2, p0, Lq/g;->h:F

    invoke-static {p2, v1, v0}, Lq/i;->b(FFF)F

    move-result v0

    iput v0, p0, Lq/g;->i:F

    iget v0, p0, Lq/g;->f:F

    invoke-static {v0, p1, p2}, Lq/i;->b(FFF)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lq/g;->j(F)V

    return-void

    :cond_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v0, p1

    const-string/jumbo p1, "minFrame (%s) must be <= maxFrame (%s)"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setRepeatMode(I)V
    .registers 3

    invoke-super {p0, p1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const/4 v0, 0x2

    if-eq p1, v0, :cond_12

    iget-boolean p1, p0, Lq/g;->d:Z

    if-eqz p1, :cond_12

    const/4 p1, 0x0

    iput-boolean p1, p0, Lq/g;->d:Z

    iget p1, p0, Lq/g;->c:F

    neg-float p1, p1

    iput p1, p0, Lq/g;->c:F

    :cond_12
    return-void
.end method
