.class public Lcom/coui/appcompat/scroll/COUILocateOverScroller;
.super Landroid/widget/OverScroller;
.source ""

# interfaces
.implements Lcom/coui/appcompat/scroll/COUIIOverScroller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;
    }
.end annotation


# static fields
.field public static final e:Landroid/view/animation/Interpolator;


# instance fields
.field public a:Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;

.field public b:Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;

.field public c:Landroid/view/animation/Interpolator;

.field public d:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$1;

    invoke-direct {v0}, Lcom/coui/appcompat/scroll/COUILocateOverScroller$1;-><init>()V

    sput-object v0, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->e:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    new-instance v0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;

    invoke-direct {v0, p1}, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->a:Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;

    new-instance v0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;

    invoke-direct {v0, p1}, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->b:Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;

    sget-object p1, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->e:Landroid/view/animation/Interpolator;

    iput-object p1, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->c:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public a(F)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->a:Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;

    iput p1, v0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->m:F

    iget-object p0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->b:Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;

    iput p1, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->m:F

    return-void
.end method

.method public abortAnimation()V
    .registers 2

    iget-object v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->a:Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;

    invoke-virtual {v0}, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->c()V

    iget-object p0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->b:Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;

    invoke-virtual {p0}, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->c()V

    return-void
.end method

.method public computeScrollOffset()Z
    .registers 7

    invoke-virtual {p0}, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->isCOUIFinished()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    iget v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->d:I

    const/4 v1, 0x1

    if-eqz v0, :cond_43

    if-eq v0, v1, :cond_10

    goto :goto_7c

    :cond_10
    iget-object v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->a:Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;

    iget-boolean v2, v0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->k:Z

    if-nez v2, :cond_29

    invoke-virtual {v0}, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->m()Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->a:Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;

    invoke-virtual {v0}, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->b()Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->a:Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;

    invoke-virtual {v0}, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->c()V

    :cond_29
    iget-object v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->b:Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;

    iget-boolean v2, v0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->k:Z

    if-nez v2, :cond_7c

    invoke-virtual {v0}, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->m()Z

    move-result v0

    if-nez v0, :cond_7c

    iget-object v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->b:Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;

    invoke-virtual {v0}, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->b()Z

    move-result v0

    if-nez v0, :cond_7c

    iget-object p0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->b:Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;

    invoke-virtual {p0}, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->c()V

    goto :goto_7c

    :cond_43
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->a:Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;

    iget-wide v4, v0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->g:J

    sub-long/2addr v2, v4

    iget v0, v0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->h:I

    int-to-long v4, v0

    cmp-long v4, v2, v4

    if-gez v4, :cond_79

    iget-object v4, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->c:Landroid/view/animation/Interpolator;

    long-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    invoke-interface {v4, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->a:Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;

    iget v3, v2, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->a:I

    iget v4, v2, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->c:I

    sub-int/2addr v4, v3

    int-to-float v4, v4

    invoke-static {v4, v0, v3}, Landroidx/core/animation/b;->a(FFI)I

    move-result v3

    iput v3, v2, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->b:I

    iget-object p0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->b:Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;

    iget v2, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->a:I

    iget v3, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->c:I

    sub-int/2addr v3, v2

    int-to-float v3, v3

    invoke-static {v0, v3, v2}, Landroidx/core/animation/b;->a(FFI)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->b:I

    goto :goto_7c

    :cond_79
    invoke-virtual {p0}, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->abortAnimation()V

    :cond_7c
    :goto_7c
    return v1
.end method

.method public fling(IIIIIIII)V
    .registers 20

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v10}, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->fling(IIIIIIIIII)V

    return-void
.end method

.method public fling(IIIIIIIIII)V
    .registers 18

    move-object v0, p0

    move v2, p2

    move v6, p8

    move v5, p7

    if-gt v2, v6, :cond_33

    if-ge v2, v5, :cond_9

    goto :goto_33

    :cond_9
    const/4 v1, 0x1

    iput v1, v0, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->d:I

    iget-object v1, v0, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->a:Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;

    const/high16 v3, -0x80000000

    const v4, 0x7fffffff

    const/4 v5, 0x0

    move-object p5, v1

    move p6, p1

    move p7, p3

    move p8, v3

    move/from16 p9, v4

    move/from16 p10, v5

    invoke-virtual/range {p5 .. p10}, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->d(IIIII)V

    iget-object v0, v0, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->b:Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;

    const/high16 v1, -0x80000000

    const v3, 0x7fffffff

    const/4 v4, 0x0

    move-object p5, v0

    move p6, p2

    move p7, p4

    move p8, v1

    move/from16 p9, v3

    move/from16 p10, v4

    invoke-virtual/range {p5 .. p10}, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->d(IIIII)V

    return-void

    :cond_33
    :goto_33
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p5

    move v4, p6

    move v5, p7

    move v6, p8

    invoke-virtual/range {v0 .. v6}, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->springBack(IIIIII)Z

    return-void
.end method

.method public getCOUICurrX()I
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->a:Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;

    iget p0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->b:I

    return p0
.end method

.method public getCOUICurrY()I
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->b:Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;

    iget p0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->b:I

    return p0
.end method

.method public getCOUIFinalX()I
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->a:Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;

    iget p0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->c:I

    return p0
.end method

.method public getCOUIFinalY()I
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->b:Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;

    iget p0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->c:I

    return p0
.end method

.method public getCurrVelocity()F
    .registers 5

    iget-object v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->a:Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;

    iget v0, v0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->e:F

    float-to-double v0, v0

    iget-object p0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->b:Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;

    iget p0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->e:F

    float-to-double v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public getCurrVelocityX()F
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->a:Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;

    iget p0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->e:F

    return p0
.end method

.method public getCurrVelocityY()F
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->b:Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;

    iget p0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->e:F

    return p0
.end method

.method public isCOUIFinished()Z
    .registers 2

    iget-object v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->a:Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;

    iget-boolean v0, v0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->k:Z

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->b:Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;

    iget-boolean p0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->k:Z

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isScrollingInDirection(FF)Z
    .registers 6

    iget-object v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->a:Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;

    iget v1, v0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->c:I

    iget v0, v0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->a:I

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->b:Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;

    iget v2, v0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->c:I

    iget v0, v0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->a:I

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p0

    if-nez p0, :cond_30

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p0

    int-to-float p1, v1

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    cmpl-float p0, p0, p1

    if-nez p0, :cond_30

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p0

    int-to-float p1, v2

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    cmpl-float p0, p0, p1

    if-nez p0, :cond_30

    const/4 p0, 0x1

    goto :goto_31

    :cond_30
    const/4 p0, 0x0

    :goto_31
    return p0
.end method

.method public notifyHorizontalEdgeReached(III)V
    .registers 12

    iget-object v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->a:Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;

    iget v1, v0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->n:I

    if-nez v1, :cond_14

    iput p3, v0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->l:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->g:J

    iget p3, v0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->e:F

    float-to-int p3, p3

    invoke-virtual {v0, p1, p2, p2, p3}, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->j(IIII)V

    :cond_14
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->springBack(IIIIII)Z

    return-void
.end method

.method public notifyVerticalEdgeReached(III)V
    .registers 12

    iget-object v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->b:Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;

    iget v1, v0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->n:I

    if-nez v1, :cond_14

    iput p3, v0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->l:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->g:J

    iget p3, v0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->e:F

    float-to-int p3, p3

    invoke-virtual {v0, p1, p2, p2, p3}, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->j(IIII)V

    :cond_14
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v3, p1

    invoke-virtual/range {v1 .. v7}, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->springBack(IIIIII)Z

    return-void
.end method

.method public setCurrVelocityX(F)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->a:Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;

    iput p1, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->e:F

    return-void
.end method

.method public setCurrVelocityY(F)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->b:Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;

    iput p1, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->e:F

    return-void
.end method

.method public setFinalX(I)V
    .registers 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    return-void

    :cond_4
    iget-object p0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->a:Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;

    iput p1, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->c:I

    iget v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->a:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->j:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->k:Z

    return-void
.end method

.method public setFinalY(I)V
    .registers 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    return-void

    :cond_4
    iget-object p0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->b:Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;

    iput p1, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->c:I

    iget v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->a:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->j:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->k:Z

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 2

    if-nez p1, :cond_7

    sget-object p1, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->e:Landroid/view/animation/Interpolator;

    iput-object p1, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->c:Landroid/view/animation/Interpolator;

    goto :goto_9

    :cond_7
    iput-object p1, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->c:Landroid/view/animation/Interpolator;

    :goto_9
    return-void
.end method

.method public springBack(IIIIII)Z
    .registers 8

    iget-object v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->a:Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;

    invoke-virtual {v0, p1, p3, p4}, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->i(III)Z

    move-result p1

    iget-object p3, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->b:Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;

    invoke-virtual {p3, p2, p5, p6}, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->i(III)Z

    move-result p2

    const/4 p3, 0x1

    if-nez p1, :cond_11

    if-eqz p2, :cond_13

    :cond_11
    iput p3, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->d:I

    :cond_13
    if-nez p1, :cond_19

    if-eqz p2, :cond_18

    goto :goto_19

    :cond_18
    const/4 p3, 0x0

    :cond_19
    :goto_19
    return p3
.end method

.method public startScroll(IIII)V
    .registers 11

    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->startScroll(IIIII)V

    return-void
.end method

.method public startScroll(IIIII)V
    .registers 7

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->d:I

    iget-object v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->a:Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;

    invoke-virtual {v0, p1, p3, p5}, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->k(III)V

    iget-object p0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->b:Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;

    invoke-virtual {p0, p2, p4, p5}, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->k(III)V

    return-void
.end method
