.class public Lcom/android/launcher/OplusSpringOverScroller;
.super Lcom/android/launcher3/util/OverScroller;
.source ""

# interfaces
.implements Lcom/coui/appcompat/scroll/COUIIOverScroller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/OplusSpringOverScroller$ColorViscousFluidInterpolator;,
        Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;
    }
.end annotation


# static fields
.field public static final FLING_FRICTION_NORMAL:F = 1.06f

.field private static final FLING_MODE:I = 0x1

.field private static final NUM_EQUAL_THRESHOLD:F = 1.0E-4f

.field private static final REST_MODE:I = 0x2

.field private static final SCROLL_DEFAULT_DURATION:I = 0xfa

.field private static final SCROLL_MODE:I = 0x0

.field private static final SOLVER_TIMESTEP_SEC:F = 0.016f

.field private static sRefreshTime:F = 0.016f


# instance fields
.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMode:I

.field private final mScrollerX:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;

.field private final mScrollerY:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/OplusSpringOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/util/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    const/4 p1, 0x2

    iput p1, p0, Lcom/android/launcher/OplusSpringOverScroller;->mMode:I

    new-instance p1, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;

    invoke-direct {p1}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/OplusSpringOverScroller;->mScrollerX:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;

    new-instance p1, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;

    invoke-direct {p1}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/OplusSpringOverScroller;->mScrollerY:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;

    if-nez p2, :cond_1e

    new-instance p1, Lcom/android/launcher/OplusSpringOverScroller$ColorViscousFluidInterpolator;

    invoke-direct {p1}, Lcom/android/launcher/OplusSpringOverScroller$ColorViscousFluidInterpolator;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/OplusSpringOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_20

    :cond_1e
    iput-object p2, p0, Lcom/android/launcher/OplusSpringOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    :goto_20
    return-void
.end method

.method public static synthetic access$800()F
    .registers 1

    sget v0, Lcom/android/launcher/OplusSpringOverScroller;->sRefreshTime:F

    return v0
.end method


# virtual methods
.method public abortAnimation()V
    .registers 2

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher/OplusSpringOverScroller;->mMode:I

    iget-object v0, p0, Lcom/android/launcher/OplusSpringOverScroller;->mScrollerX:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->setAtRest()V

    iget-object p0, p0, Lcom/android/launcher/OplusSpringOverScroller;->mScrollerY:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;

    invoke-virtual {p0}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->setAtRest()V

    return-void
.end method

.method public computeScrollOffset()Z
    .registers 7

    invoke-virtual {p0}, Lcom/android/launcher/OplusSpringOverScroller;->isCOUIFinished()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    iget v0, p0, Lcom/android/launcher/OplusSpringOverScroller;->mMode:I

    const/4 v1, 0x1

    if-eqz v0, :cond_24

    if-eq v0, v1, :cond_10

    goto :goto_5d

    :cond_10
    iget-object v0, p0, Lcom/android/launcher/OplusSpringOverScroller;->mScrollerX:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->update()Z

    move-result v0

    if-nez v0, :cond_5d

    iget-object v0, p0, Lcom/android/launcher/OplusSpringOverScroller;->mScrollerY:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->update()Z

    move-result v0

    if-nez v0, :cond_5d

    invoke-virtual {p0}, Lcom/android/launcher/OplusSpringOverScroller;->abortAnimation()V

    goto :goto_5d

    :cond_24
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/launcher/OplusSpringOverScroller;->mScrollerX:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v0}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->access$200(Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v0, p0, Lcom/android/launcher/OplusSpringOverScroller;->mScrollerX:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v0}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->access$300(Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;)I

    move-result v0

    int-to-long v4, v0

    cmp-long v4, v2, v4

    if-gez v4, :cond_4e

    iget-object v4, p0, Lcom/android/launcher/OplusSpringOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    long-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    invoke-interface {v4, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    iget-object v2, p0, Lcom/android/launcher/OplusSpringOverScroller;->mScrollerX:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;

    invoke-virtual {v2, v0}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->updateScroll(F)V

    iget-object p0, p0, Lcom/android/launcher/OplusSpringOverScroller;->mScrollerY:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;

    invoke-virtual {p0, v0}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->updateScroll(F)V

    goto :goto_5d

    :cond_4e
    iget-object v0, p0, Lcom/android/launcher/OplusSpringOverScroller;->mScrollerX:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v0, v2}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->updateScroll(F)V

    iget-object v0, p0, Lcom/android/launcher/OplusSpringOverScroller;->mScrollerY:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0, v2}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->updateScroll(F)V

    invoke-virtual {p0}, Lcom/android/launcher/OplusSpringOverScroller;->abortAnimation()V

    :cond_5d
    :goto_5d
    return v1
.end method

.method public fling(IIII)V
    .registers 6

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/OplusSpringOverScroller;->mMode:I

    iget-object v0, p0, Lcom/android/launcher/OplusSpringOverScroller;->mScrollerX:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0, p1, p3}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->fling(II)V

    iget-object p0, p0, Lcom/android/launcher/OplusSpringOverScroller;->mScrollerY:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;

    invoke-virtual {p0, p2, p4}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->fling(II)V

    return-void
.end method

.method public fling(IIIIIIII)V
    .registers 9

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher/OplusSpringOverScroller;->fling(IIII)V

    return-void
.end method

.method public fling(IIIIIIIIII)V
    .registers 18

    move v2, p2

    move v6, p8

    move v5, p7

    if-gt v2, v6, :cond_c

    if-ge v2, v5, :cond_8

    goto :goto_c

    :cond_8
    invoke-virtual/range {p0 .. p8}, Lcom/android/launcher/OplusSpringOverScroller;->fling(IIIIIIII)V

    return-void

    :cond_c
    :goto_c
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p5

    move v4, p6

    move v5, p7

    move v6, p8

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher/OplusSpringOverScroller;->springBack(IIIIII)Z

    return-void
.end method

.method public getCOUICurrX()I
    .registers 3

    iget-object p0, p0, Lcom/android/launcher/OplusSpringOverScroller;->mScrollerX:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;

    invoke-virtual {p0}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->getCurrentValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public getCOUICurrY()I
    .registers 3

    iget-object p0, p0, Lcom/android/launcher/OplusSpringOverScroller;->mScrollerY:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;

    invoke-virtual {p0}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->getCurrentValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public getCOUIFinalX()I
    .registers 3

    iget-object p0, p0, Lcom/android/launcher/OplusSpringOverScroller;->mScrollerX:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;

    invoke-virtual {p0}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->getEndValue()D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method public getCOUIFinalY()I
    .registers 3

    iget-object p0, p0, Lcom/android/launcher/OplusSpringOverScroller;->mScrollerY:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;

    invoke-virtual {p0}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->getEndValue()D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method public getCurrVelocity()F
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/OplusSpringOverScroller;->mScrollerX:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->getVelocity()D

    move-result-wide v0

    iget-object p0, p0, Lcom/android/launcher/OplusSpringOverScroller;->mScrollerY:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;

    invoke-virtual {p0}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->getVelocity()D

    move-result-wide v2

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

    iget-object p0, p0, Lcom/android/launcher/OplusSpringOverScroller;->mScrollerX:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;

    invoke-virtual {p0}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->getVelocity()D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public getCurrVelocityY()F
    .registers 3

    iget-object p0, p0, Lcom/android/launcher/OplusSpringOverScroller;->mScrollerY:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;

    invoke-virtual {p0}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->getVelocity()D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public isCOUIFinished()Z
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/OplusSpringOverScroller;->mScrollerX:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->isAtRest()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/launcher/OplusSpringOverScroller;->mScrollerY:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->isAtRest()Z

    move-result v0

    if-eqz v0, :cond_16

    iget p0, p0, Lcom/android/launcher/OplusSpringOverScroller;->mMode:I

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public isScrollingInDirection(FF)Z
    .registers 8

    iget-object v0, p0, Lcom/android/launcher/OplusSpringOverScroller;->mScrollerX:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v0}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->access$400(Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;)D

    move-result-wide v0

    iget-object v2, p0, Lcom/android/launcher/OplusSpringOverScroller;->mScrollerX:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v2}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->access$500(Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;)D

    move-result-wide v2

    sub-double/2addr v0, v2

    double-to-int v0, v0

    iget-object v1, p0, Lcom/android/launcher/OplusSpringOverScroller;->mScrollerY:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v1}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->access$400(Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;)D

    move-result-wide v1

    iget-object v3, p0, Lcom/android/launcher/OplusSpringOverScroller;->mScrollerY:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v3}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->access$500(Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;)D

    move-result-wide v3

    sub-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {p0}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result p0

    if-nez p0, :cond_3e

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p0

    int-to-float p1, v0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    cmpl-float p0, p0, p1

    if-nez p0, :cond_3e

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p0

    int-to-float p1, v1

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    cmpl-float p0, p0, p1

    if-nez p0, :cond_3e

    const/4 p0, 0x1

    goto :goto_3f

    :cond_3e
    const/4 p0, 0x0

    :goto_3f
    return p0
.end method

.method public notifyHorizontalEdgeReached(III)V
    .registers 12

    iget-object v0, p0, Lcom/android/launcher/OplusSpringOverScroller;->mScrollerX:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->notifyEdgeReached(III)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher/OplusSpringOverScroller;->springBack(IIIIII)Z

    return-void
.end method

.method public notifyVerticalEdgeReached(III)V
    .registers 12

    iget-object v0, p0, Lcom/android/launcher/OplusSpringOverScroller;->mScrollerY:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->notifyEdgeReached(III)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v3, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher/OplusSpringOverScroller;->springBack(IIIIII)Z

    return-void
.end method

.method public setCOUIFriction(F)V
    .registers 2

    return-void
.end method

.method public setCurrVelocityX(F)V
    .registers 4

    iget-object p0, p0, Lcom/android/launcher/OplusSpringOverScroller;->mScrollerX:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {p0}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->access$600(Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;)Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    move-result-object p0

    float-to-double v0, p1

    iput-wide v0, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    return-void
.end method

.method public setCurrVelocityY(F)V
    .registers 4

    iget-object p0, p0, Lcom/android/launcher/OplusSpringOverScroller;->mScrollerY:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {p0}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->access$600(Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;)Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    move-result-object p0

    float-to-double v0, p1

    iput-wide v0, p0, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

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

.method public setFlingFriction(F)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/OplusSpringOverScroller;->mScrollerX:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v0, p1}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->access$102(Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;F)F

    iget-object p0, p0, Lcom/android/launcher/OplusSpringOverScroller;->mScrollerY:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {p0, p1}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->access$102(Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;F)F

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 2

    if-nez p1, :cond_a

    new-instance p1, Lcom/android/launcher/OplusSpringOverScroller$ColorViscousFluidInterpolator;

    invoke-direct {p1}, Lcom/android/launcher/OplusSpringOverScroller$ColorViscousFluidInterpolator;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/OplusSpringOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_c

    :cond_a
    iput-object p1, p0, Lcom/android/launcher/OplusSpringOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    :goto_c
    return-void
.end method

.method public setIsScrollView(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/OplusSpringOverScroller;->mScrollerX:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v0, p1}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->access$002(Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;Z)Z

    iget-object p0, p0, Lcom/android/launcher/OplusSpringOverScroller;->mScrollerY:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {p0, p1}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->access$002(Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;Z)Z

    return-void
.end method

.method public setRefreshRate(F)V
    .registers 2

    const p0, 0x461c4000  # 10000.0f

    div-float p1, p0, p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p0

    sput p1, Lcom/android/launcher/OplusSpringOverScroller;->sRefreshTime:F

    return-void
.end method

.method public setSpringBackTensionMultiple(F)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/OplusSpringOverScroller;->mScrollerX:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v0, p1}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->access$702(Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;F)F

    iget-object p0, p0, Lcom/android/launcher/OplusSpringOverScroller;->mScrollerY:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {p0, p1}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->access$702(Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;F)F

    return-void
.end method

.method public springBack(IIIIII)Z
    .registers 8

    iget-object v0, p0, Lcom/android/launcher/OplusSpringOverScroller;->mScrollerX:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->springBack(III)Z

    move-result p1

    iget-object p3, p0, Lcom/android/launcher/OplusSpringOverScroller;->mScrollerY:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;

    invoke-virtual {p3, p2, p5, p6}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->springBack(III)Z

    move-result p2

    const/4 p3, 0x1

    if-nez p1, :cond_11

    if-eqz p2, :cond_13

    :cond_11
    iput p3, p0, Lcom/android/launcher/OplusSpringOverScroller;->mMode:I

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

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher/OplusSpringOverScroller;->startScroll(IIIII)V

    return-void
.end method

.method public startScroll(IIIII)V
    .registers 7

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/OplusSpringOverScroller;->mMode:I

    iget-object v0, p0, Lcom/android/launcher/OplusSpringOverScroller;->mScrollerX:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0, p1, p3, p5}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->startScroll(III)V

    iget-object p0, p0, Lcom/android/launcher/OplusSpringOverScroller;->mScrollerY:Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;

    invoke-virtual {p0, p2, p4, p5}, Lcom/android/launcher/OplusSpringOverScroller$ReboundOverScroller;->startScroll(III)V

    return-void
.end method
