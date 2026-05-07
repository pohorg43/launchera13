.class public Lcom/coui/appcompat/scroll/SpringOverScroller;
.super Landroid/widget/OverScroller;
.source ""

# interfaces
.implements Lcom/coui/appcompat/scroll/COUIIOverScroller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/scroll/SpringOverScroller$COUIViscousFluidInterpolator;,
        Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;
    }
.end annotation


# static fields
.field public static k:Z = false

.field public static l:F = 12.19f

.field public static m:F


# instance fields
.field public a:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

.field public b:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

.field public c:Landroid/view/animation/Interpolator;

.field public d:I

.field public e:Z

.field public f:I

.field public g:J

.field public h:F

.field public i:Z

.field public final j:Landroid/view/Choreographer$FrameCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    const/4 p1, 0x2

    iput p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->d:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->e:Z

    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->h:F

    new-instance p1, Lcom/coui/appcompat/scroll/SpringOverScroller$1;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/scroll/SpringOverScroller$1;-><init>(Lcom/coui/appcompat/scroll/SpringOverScroller;)V

    iput-object p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->j:Landroid/view/Choreographer$FrameCallback;

    new-instance p1, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-direct {p1}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->a:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    new-instance p1, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-direct {p1}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->b:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    new-instance p1, Lcom/coui/appcompat/scroll/SpringOverScroller$COUIViscousFluidInterpolator;

    invoke-direct {p1}, Lcom/coui/appcompat/scroll/SpringOverScroller$COUIViscousFluidInterpolator;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->c:Landroid/view/animation/Interpolator;

    const p0, 0x3c83126f  # 0.016f

    sput p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->m:F

    return-void
.end method


# virtual methods
.method public a(IIII)V
    .registers 6

    const/4 v0, 0x1

    iput v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->d:I

    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->a:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {p0, p3}, Lcom/coui/appcompat/scroll/SpringOverScroller;->b(I)I

    move-result p3

    invoke-virtual {v0, p1, p3}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->a(II)V

    iget-object p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->b:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {p0, p4}, Lcom/coui/appcompat/scroll/SpringOverScroller;->b(I)I

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->a(II)V

    return-void
.end method

.method public abortAnimation()V
    .registers 2

    const/4 v0, 0x2

    iput v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->d:I

    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->a:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->d()V

    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->b:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->d()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->i:Z

    return-void
.end method

.method public final b(I)I
    .registers 9

    iget-boolean v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->e:Z

    if-eqz v0, :cond_51

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->f:I

    if-lez v2, :cond_49

    iget-wide v3, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->g:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x1f4

    cmp-long v3, v3, v5

    if-gtz v3, :cond_3d

    const/16 v3, 0x1f40

    if-lt p1, v3, :cond_3d

    iput-wide v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->g:J

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->f:I

    const/4 v0, 0x4

    if-le v2, v0, :cond_51

    iget v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->h:F

    const v1, 0x3fb33333  # 1.4f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->h:F

    int-to-float p0, p1

    mul-float/2addr p0, v0

    float-to-int p0, p0

    const p1, -0x11170

    const v0, 0x11170

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_51

    :cond_3d
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->g:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->f:I

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->h:F

    goto :goto_51

    :cond_49
    if-nez v2, :cond_51

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->f:I

    iput-wide v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->g:J

    :cond_51
    :goto_51
    return p1
.end method

.method public c(Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->e:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->e:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->g:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->f:I

    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->h:F

    return-void
.end method

.method public computeScrollOffset()Z
    .registers 8

    invoke-virtual {p0}, Lcom/coui/appcompat/scroll/SpringOverScroller;->isCOUIFinished()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->a:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    iget-boolean v0, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->A:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->b:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    iget-boolean v0, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->A:Z

    if-eqz v0, :cond_15

    goto :goto_16

    :cond_15
    move v1, v2

    :goto_16
    iput-boolean v1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->i:Z

    return v2

    :cond_19
    iget v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->d:I

    if-eqz v0, :cond_34

    if-eq v0, v1, :cond_20

    goto :goto_65

    :cond_20
    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->a:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->i()Z

    move-result v0

    if-nez v0, :cond_65

    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->b:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->i()Z

    move-result v0

    if-nez v0, :cond_65

    invoke-virtual {p0}, Lcom/coui/appcompat/scroll/SpringOverScroller;->abortAnimation()V

    goto :goto_65

    :cond_34
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->a:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    iget-wide v4, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->o:J

    sub-long/2addr v2, v4

    iget v4, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->m:I

    int-to-long v5, v4

    cmp-long v5, v2, v5

    if-gez v5, :cond_58

    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->c:Landroid/view/animation/Interpolator;

    long-to-float v2, v2

    int-to-float v3, v4

    div-float/2addr v2, v3

    invoke-interface {v0, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->a:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v2, v0}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->j(F)V

    iget-object p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->b:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->j(F)V

    goto :goto_65

    :cond_58
    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->j(F)V

    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->b:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->j(F)V

    invoke-virtual {p0}, Lcom/coui/appcompat/scroll/SpringOverScroller;->abortAnimation()V

    :cond_65
    :goto_65
    return v1
.end method

.method public d(Z)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->a:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    iput-boolean p1, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->q:Z

    iget-object p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->b:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    iput-boolean p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->q:Z

    return-void
.end method

.method public e(F)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->a:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    iput p1, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->t:F

    iget-object p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->b:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    iput p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->t:F

    return-void
.end method

.method public f()V
    .registers 4

    sget-boolean v0, Lcom/coui/appcompat/scroll/SpringOverScroller;->k:Z

    const-string v1, "SpringOverScroller"

    if-eqz v0, :cond_b

    const-string v0, "removeChoreographerCallback: remove Callback"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v2, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->j:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v2}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    sget-boolean v0, Lcom/coui/appcompat/scroll/SpringOverScroller;->k:Z

    if-eqz v0, :cond_1d

    const-string v0, "postChoreographerCallback: post Callback"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->j:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->i:Z

    iget-object v1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->a:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    iput-boolean v0, v1, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->A:Z

    iget-object p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->b:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    iput-boolean v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->A:Z

    return-void
.end method

.method public fling(IIIIIIII)V
    .registers 9

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/scroll/SpringOverScroller;->a(IIII)V

    return-void
.end method

.method public fling(IIIIIIIIII)V
    .registers 11

    invoke-virtual/range {p0 .. p8}, Lcom/coui/appcompat/scroll/SpringOverScroller;->fling(IIIIIIII)V

    return-void
.end method

.method public final getCOUICurrX()I
    .registers 3

    iget-object p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->a:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    iget-object p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->d:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->a:D

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public final getCOUICurrY()I
    .registers 3

    iget-object p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->b:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    iget-object p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->d:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->a:D

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public final getCOUIFinalX()I
    .registers 3

    iget-object p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->a:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    iget-wide v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->k:D

    double-to-int p0, v0

    return p0
.end method

.method public final getCOUIFinalY()I
    .registers 3

    iget-object p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->b:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    iget-wide v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->k:D

    double-to-int p0, v0

    return p0
.end method

.method public getCurrVelocity()F
    .registers 5

    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->a:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    iget-object v0, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->d:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v0, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->b:D

    iget-object p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->b:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    iget-object p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->d:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v2, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->b:D

    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int p0, v0

    int-to-float p0, p0

    return p0
.end method

.method public getCurrVelocityX()F
    .registers 3

    iget-object p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->a:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    iget-object p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->d:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->b:D

    double-to-float p0, v0

    return p0
.end method

.method public getCurrVelocityY()F
    .registers 3

    iget-object p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->b:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    iget-object p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->d:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->b:D

    double-to-float p0, v0

    return p0
.end method

.method public final isCOUIFinished()Z
    .registers 2

    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->a:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->b()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->b:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->b()Z

    move-result v0

    if-eqz v0, :cond_16

    iget p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->d:I

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public isScrollingInDirection(FF)Z
    .registers 9

    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->a:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    iget-wide v1, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->k:D

    iget-wide v3, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->j:D

    sub-double/2addr v1, v3

    double-to-int v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->b:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    iget-wide v2, v1, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->k:D

    iget-wide v4, v1, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->j:D

    sub-double/2addr v2, v4

    double-to-int v1, v2

    invoke-virtual {p0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p0

    if-nez p0, :cond_32

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p0

    int-to-float p1, v0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    cmpl-float p0, p0, p1

    if-nez p0, :cond_32

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p0

    int-to-float p1, v1

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    cmpl-float p0, p0, p1

    if-nez p0, :cond_32

    const/4 p0, 0x1

    goto :goto_33

    :cond_32
    const/4 p0, 0x0

    :goto_33
    return p0
.end method

.method public notifyHorizontalEdgeReached(III)V
    .registers 11

    iget-object p3, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->a:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {p3, p1, p2}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->c(II)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/coui/appcompat/scroll/SpringOverScroller;->springBack(IIIIII)Z

    return-void
.end method

.method public notifyVerticalEdgeReached(III)V
    .registers 11

    iget-object p3, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->b:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {p3, p1, p2}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->c(II)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/coui/appcompat/scroll/SpringOverScroller;->springBack(IIIIII)Z

    return-void
.end method

.method public setCurrVelocityX(F)V
    .registers 4

    iget-object p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->a:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    iget-object p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->d:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    float-to-double v0, p1

    iput-wide v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->b:D

    return-void
.end method

.method public setCurrVelocityY(F)V
    .registers 4

    iget-object p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->b:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    iget-object p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->d:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    float-to-double v0, p1

    iput-wide v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->b:D

    return-void
.end method

.method public setFinalX(I)V
    .registers 2

    return-void
.end method

.method public setFinalY(I)V
    .registers 2

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 2

    if-nez p1, :cond_a

    new-instance p1, Lcom/coui/appcompat/scroll/SpringOverScroller$COUIViscousFluidInterpolator;

    invoke-direct {p1}, Lcom/coui/appcompat/scroll/SpringOverScroller$COUIViscousFluidInterpolator;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->c:Landroid/view/animation/Interpolator;

    goto :goto_c

    :cond_a
    iput-object p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->c:Landroid/view/animation/Interpolator;

    :goto_c
    return-void
.end method

.method public springBack(IIIIII)Z
    .registers 8

    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->a:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0, p1, p3, p4}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->g(III)Z

    move-result p1

    iget-object p3, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->b:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {p3, p2, p5, p6}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->g(III)Z

    move-result p2

    const/4 p3, 0x1

    if-nez p1, :cond_11

    if-eqz p2, :cond_13

    :cond_11
    iput p3, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->d:I

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

    invoke-virtual/range {v0 .. v5}, Lcom/coui/appcompat/scroll/SpringOverScroller;->startScroll(IIIII)V

    return-void
.end method

.method public startScroll(IIIII)V
    .registers 7

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->d:I

    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->a:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0, p1, p3, p5}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->h(III)V

    iget-object p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->b:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {p0, p2, p4, p5}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->h(III)V

    return-void
.end method
