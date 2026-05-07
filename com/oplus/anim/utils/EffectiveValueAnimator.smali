.class public Lcom/oplus/anim/utils/EffectiveValueAnimator;
.super Lcom/oplus/anim/utils/BaseAnimator;
.source ""

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field private composition:Lcom/oplus/anim/EffectiveAnimationComposition;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private frame:F

.field private lastFrameTimeNs:J

.field private maxFrame:F

.field private minFrame:F

.field private repeatCount:I

.field public running:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private speed:F

.field private speedReversedForRepeatMode:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Lcom/oplus/anim/utils/BaseAnimator;-><init>()V

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->speed:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->speedReversedForRepeatMode:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->lastFrameTimeNs:J

    const/4 v1, 0x0

    iput v1, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->frame:F

    iput v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->repeatCount:I

    const/high16 v1, -0x31000000

    iput v1, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->minFrame:F

    const/high16 v1, 0x4f000000

    iput v1, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->maxFrame:F

    iput-boolean v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->running:Z

    return-void
.end method

.method private getFrameDurationNs()F
    .registers 3

    iget-object v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_8

    const p0, 0x7f7fffff  # Float.MAX_VALUE

    return p0

    :cond_8
    const v1, 0x4e6e6b28  # 1.0E9f

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationComposition;->getFrameRate()F

    move-result v0

    div-float/2addr v1, v0

    iget p0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->speed:F

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    div-float/2addr v1, p0

    return v1
.end method

.method private isReversed()Z
    .registers 2

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getSpeed()F

    move-result p0

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    if-gez p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method private verifyFrame()V
    .registers 5

    iget-object v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->frame:F

    iget v1, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->minFrame:F

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_14

    iget v1, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->maxFrame:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_14

    return-void

    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->minFrame:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->maxFrame:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget p0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->frame:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "Frame must be [%f,%f]. It is %f"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public cancel()V
    .registers 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-virtual {p0}, Lcom/oplus/anim/utils/BaseAnimator;->notifyCancel()V

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->removeFrameCallback()V

    return-void
.end method

.method public clearComposition()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    const/high16 v0, -0x31000000

    iput v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->minFrame:F

    const/high16 v0, 0x4f000000

    iput v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->maxFrame:F

    return-void
.end method

.method public doFrame(J)V
    .registers 9

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->postFrameCallback()V

    iget-object v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-eqz v0, :cond_b5

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_b5

    :cond_f
    const-string v0, "EffectiveValueAnimator#doFrame"

    invoke-static {v0}, Lcom/oplus/anim/L;->beginSection(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->lastFrameTimeNs:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1d

    goto :goto_1f

    :cond_1d
    sub-long v3, p1, v1

    :goto_1f
    invoke-direct {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getFrameDurationNs()F

    move-result v1

    long-to-float v2, v3

    div-float/2addr v2, v1

    iget v1, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->frame:F

    invoke-direct {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->isReversed()Z

    move-result v3

    if-eqz v3, :cond_2e

    neg-float v2, v2

    :cond_2e
    add-float/2addr v1, v2

    iput v1, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->frame:F

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getMinFrame()F

    move-result v2

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getMaxFrame()F

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/oplus/anim/utils/MiscUtils;->contains(FFF)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->frame:F

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getMinFrame()F

    move-result v3

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getMaxFrame()F

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/oplus/anim/utils/MiscUtils;->clamp(FFF)F

    move-result v2

    iput v2, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->frame:F

    iput-wide p1, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->lastFrameTimeNs:J

    invoke-virtual {p0}, Lcom/oplus/anim/utils/BaseAnimator;->notifyUpdate()V

    if-eqz v1, :cond_af

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_82

    iget v1, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->repeatCount:I

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v2

    if-lt v1, v2, :cond_82

    iget p1, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->speed:F

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_71

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getMinFrame()F

    move-result p1

    goto :goto_75

    :cond_71
    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getMaxFrame()F

    move-result p1

    :goto_75
    iput p1, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->frame:F

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->removeFrameCallback()V

    invoke-direct {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->isReversed()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/anim/utils/BaseAnimator;->notifyEnd(Z)V

    goto :goto_af

    :cond_82
    invoke-virtual {p0}, Lcom/oplus/anim/utils/BaseAnimator;->notifyRepeat()V

    iget v1, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->repeatCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->repeatCount:I

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_9c

    iget-boolean v1, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->speedReversedForRepeatMode:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->speedReversedForRepeatMode:Z

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->reverseAnimationSpeed()V

    goto :goto_ad

    :cond_9c
    invoke-direct {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->isReversed()Z

    move-result v1

    if-eqz v1, :cond_a7

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getMaxFrame()F

    move-result v1

    goto :goto_ab

    :cond_a7
    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getMinFrame()F

    move-result v1

    :goto_ab
    iput v1, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->frame:F

    :goto_ad
    iput-wide p1, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->lastFrameTimeNs:J

    :cond_af
    :goto_af
    invoke-direct {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->verifyFrame()V

    invoke-static {v0}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    :cond_b5
    :goto_b5
    return-void
.end method

.method public endAnimation()V
    .registers 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->removeFrameCallback()V

    invoke-direct {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->isReversed()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/anim/utils/BaseAnimator;->notifyEnd(Z)V

    return-void
.end method

.method public getAnimatedFraction()F
    .registers 3
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    iget-object v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    invoke-direct {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->isReversed()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getMaxFrame()F

    move-result v0

    iget v1, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->frame:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getMaxFrame()F

    move-result v1

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getMinFrame()F

    move-result p0

    :goto_1b
    sub-float/2addr v1, p0

    div-float/2addr v0, v1

    return v0

    :cond_1e
    iget v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->frame:F

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getMinFrame()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getMaxFrame()F

    move-result v1

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getMinFrame()F

    move-result p0

    goto :goto_1b
.end method

.method public getAnimatedValue()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getAnimatedValueAbsolute()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public getAnimatedValueAbsolute()F
    .registers 3
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    iget-object v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    iget v1, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->frame:F

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationComposition;->getStartFrame()F

    move-result v0

    sub-float/2addr v1, v0

    iget-object v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationComposition;->getEndFrame()F

    move-result v0

    iget-object p0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationComposition;->getStartFrame()F

    move-result p0

    sub-float/2addr v0, p0

    div-float/2addr v1, v0

    return v1
.end method

.method public getDuration()J
    .registers 3

    iget-object p0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-nez p0, :cond_7

    const-wide/16 v0, 0x0

    goto :goto_c

    :cond_7
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationComposition;->getDuration()F

    move-result p0

    float-to-long v0, p0

    :goto_c
    return-wide v0
.end method

.method public getFrame()F
    .registers 1

    iget p0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->frame:F

    return p0
.end method

.method public getMaxFrame()F
    .registers 3

    iget-object v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    iget p0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->maxFrame:F

    const/high16 v1, 0x4f000000

    cmpl-float v1, p0, v1

    if-nez v1, :cond_12

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationComposition;->getEndFrame()F

    move-result p0

    :cond_12
    return p0
.end method

.method public getMinFrame()F
    .registers 3

    iget-object v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    iget p0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->minFrame:F

    const/high16 v1, -0x31000000

    cmpl-float v1, p0, v1

    if-nez v1, :cond_12

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationComposition;->getStartFrame()F

    move-result p0

    :cond_12
    return p0
.end method

.method public getSpeed()F
    .registers 1

    iget p0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->speed:F

    return p0
.end method

.method public isRunning()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->running:Z

    return p0
.end method

.method public pauseAnimation()V
    .registers 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->removeFrameCallback()V

    return-void
.end method

.method public playAnimation()V
    .registers 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->running:Z

    invoke-direct {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->isReversed()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/anim/utils/BaseAnimator;->notifyStart(Z)V

    invoke-direct {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->isReversed()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getMaxFrame()F

    move-result v0

    goto :goto_19

    :cond_15
    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getMinFrame()F

    move-result v0

    :goto_19
    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->setFrame(F)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->lastFrameTimeNs:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->repeatCount:I

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->postFrameCallback()V

    return-void
.end method

.method public postFrameCallback()V
    .registers 2

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->removeFrameCallback(Z)V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    if-nez v0, :cond_16

    const-string p0, "Gets the choreographer is null"

    invoke-static {p0}, Lcom/oplus/anim/utils/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1d

    :cond_16
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public removeFrameCallback()V
    .registers 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    if-nez v0, :cond_c

    const-string p0, "Gets the choreographer is null"

    invoke-static {p0}, Lcom/oplus/anim/utils/Logger;->debug(Ljava/lang/String;)V

    goto :goto_10

    :cond_c
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->removeFrameCallback(Z)V

    :goto_10
    return-void
.end method

.method public removeFrameCallback(Z)V
    .registers 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    if-eqz p1, :cond_c

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->running:Z

    :cond_c
    return-void
.end method

.method public resumeAnimation()V
    .registers 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->running:Z

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->postFrameCallback()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->lastFrameTimeNs:J

    invoke-direct {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->isReversed()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getFrame()F

    move-result v0

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getMinFrame()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_23

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getMaxFrame()F

    move-result v0

    iput v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->frame:F

    goto :goto_3b

    :cond_23
    invoke-direct {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->isReversed()Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getFrame()F

    move-result v0

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getMaxFrame()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3b

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getMinFrame()F

    move-result v0

    iput v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->frame:F

    :cond_3b
    :goto_3b
    return-void
.end method

.method public reverseAnimationSpeed()V
    .registers 2

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getSpeed()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0, v0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->setSpeed(F)V

    return-void
.end method

.method public setComposition(Lcom/oplus/anim/EffectiveAnimationComposition;)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    iput-object p1, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-eqz v0, :cond_27

    iget v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->minFrame:F

    invoke-virtual {p1}, Lcom/oplus/anim/EffectiveAnimationComposition;->getStartFrame()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->maxFrame:F

    invoke-virtual {p1}, Lcom/oplus/anim/EffectiveAnimationComposition;->getEndFrame()F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, v0, p1}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->setMinAndMaxFrames(FF)V

    goto :goto_36

    :cond_27
    invoke-virtual {p1}, Lcom/oplus/anim/EffectiveAnimationComposition;->getStartFrame()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/oplus/anim/EffectiveAnimationComposition;->getEndFrame()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, v0, p1}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->setMinAndMaxFrames(FF)V

    :goto_36
    iget p1, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->frame:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->frame:F

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->setFrame(F)V

    invoke-virtual {p0}, Lcom/oplus/anim/utils/BaseAnimator;->notifyUpdate()V

    return-void
.end method

.method public setFrame(F)V
    .registers 4

    iget v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->frame:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getMinFrame()F

    move-result v0

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getMaxFrame()F

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/oplus/anim/utils/MiscUtils;->clamp(FFF)F

    move-result p1

    iput p1, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->frame:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->lastFrameTimeNs:J

    invoke-virtual {p0}, Lcom/oplus/anim/utils/BaseAnimator;->notifyUpdate()V

    return-void
.end method

.method public setMaxFrame(F)V
    .registers 3

    iget v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->minFrame:F

    invoke-virtual {p0, v0, p1}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->setMinAndMaxFrames(FF)V

    return-void
.end method

.method public setMinAndMaxFrames(FF)V
    .registers 5

    cmpl-float v0, p1, p2

    if-gtz v0, :cond_40

    iget-object v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_c

    const v0, -0x800001

    goto :goto_10

    :cond_c
    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationComposition;->getStartFrame()F

    move-result v0

    :goto_10
    iget-object v1, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-nez v1, :cond_18

    const v1, 0x7f7fffff  # Float.MAX_VALUE

    goto :goto_1c

    :cond_18
    invoke-virtual {v1}, Lcom/oplus/anim/EffectiveAnimationComposition;->getEndFrame()F

    move-result v1

    :goto_1c
    invoke-static {p1, v0, v1}, Lcom/oplus/anim/utils/MiscUtils;->clamp(FFF)F

    move-result p1

    invoke-static {p2, v0, v1}, Lcom/oplus/anim/utils/MiscUtils;->clamp(FFF)F

    move-result p2

    iget v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->minFrame:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_30

    iget v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->maxFrame:F

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_3f

    :cond_30
    iput p1, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->minFrame:F

    iput p2, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->maxFrame:F

    iget v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->frame:F

    invoke-static {v0, p1, p2}, Lcom/oplus/anim/utils/MiscUtils;->clamp(FFF)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->setFrame(F)V

    :cond_3f
    return-void

    :cond_40
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

    const-string p1, "minFrame (%s) must be <= maxFrame (%s)"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMinFrame(I)V
    .registers 3

    int-to-float p1, p1

    iget v0, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->maxFrame:F

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->setMinAndMaxFrames(FF)V

    return-void
.end method

.method public setRepeatMode(I)V
    .registers 3

    invoke-super {p0, p1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const/4 v0, 0x2

    if-eq p1, v0, :cond_10

    iget-boolean p1, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->speedReversedForRepeatMode:Z

    if-eqz p1, :cond_10

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->speedReversedForRepeatMode:Z

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->reverseAnimationSpeed()V

    :cond_10
    return-void
.end method

.method public setSpeed(F)V
    .registers 2

    iput p1, p0, Lcom/oplus/anim/utils/EffectiveValueAnimator;->speed:F

    return-void
.end method
