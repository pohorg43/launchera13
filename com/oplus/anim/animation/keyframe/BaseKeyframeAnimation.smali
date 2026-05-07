.class public abstract Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;,
        Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$SingleKeyframeWrapper;,
        Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$EmptyKeyframeWrapper;,
        Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapper;,
        Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private cachedEndProgress:F

.field private cachedGetValue:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private cachedStartDelayProgress:F

.field private isDiscrete:Z

.field private final keyframesWrapper:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapper<",
            "TK;>;"
        }
    .end annotation
.end field

.field public final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;",
            ">;"
        }
    .end annotation
.end field

.field public progress:F

.field public valueCallback:Lcom/oplus/anim/value/EffectiveValueCallback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/value/EffectiveValueCallback<",
            "TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/oplus/anim/value/Keyframe<",
            "TK;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->listeners:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->isDiscrete:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->progress:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->cachedGetValue:Ljava/lang/Object;

    const/high16 v0, -0x40800000  # -1.0f

    iput v0, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->cachedStartDelayProgress:F

    iput v0, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->cachedEndProgress:F

    invoke-static {p1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->wrap(Ljava/util/List;)Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->keyframesWrapper:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapper;

    return-void
.end method

.method private getStartDelayProgress()F
    .registers 3
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    iget v0, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->cachedStartDelayProgress:F

    const/high16 v1, -0x40800000  # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->keyframesWrapper:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapper;

    invoke-interface {v0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapper;->getStartDelayProgress()F

    move-result v0

    iput v0, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->cachedStartDelayProgress:F

    :cond_10
    iget p0, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->cachedStartDelayProgress:F

    return p0
.end method

.method private static wrap(Ljava/util/List;)Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapper;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+",
            "Lcom/oplus/anim/value/Keyframe<",
            "TT;>;>;)",
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapper<",
            "TT;>;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$EmptyKeyframeWrapper;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$EmptyKeyframeWrapper;-><init>(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$1;)V

    return-object p0

    :cond_d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    new-instance v0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$SingleKeyframeWrapper;

    invoke-direct {v0, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$SingleKeyframeWrapper;-><init>(Ljava/util/List;)V

    return-object v0

    :cond_1a
    new-instance v0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;

    invoke-direct {v0, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->listeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCurrentKeyframe()Lcom/oplus/anim/value/Keyframe;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oplus/anim/value/Keyframe<",
            "TK;>;"
        }
    .end annotation

    const-string v0, "BaseKeyframeAnimation#getCurrentKeyframe"

    invoke-static {v0}, Lcom/oplus/anim/L;->beginSection(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->keyframesWrapper:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapper;

    invoke-interface {p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapper;->getCurrentKeyframe()Lcom/oplus/anim/value/Keyframe;

    move-result-object p0

    invoke-static {v0}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    return-object p0
.end method

.method public getEndProgress()F
    .registers 3
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    iget v0, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->cachedEndProgress:F

    const/high16 v1, -0x40800000  # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->keyframesWrapper:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapper;

    invoke-interface {v0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapper;->getEndProgress()F

    move-result v0

    iput v0, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->cachedEndProgress:F

    :cond_10
    iget p0, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->cachedEndProgress:F

    return p0
.end method

.method public getInterpolatedCurrentKeyframeProgress()F
    .registers 3

    invoke-virtual {p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getCurrentKeyframe()Lcom/oplus/anim/value/Keyframe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/value/Keyframe;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 p0, 0x0

    return p0

    :cond_c
    iget-object v0, v0, Lcom/oplus/anim/value/Keyframe;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getLinearCurrentKeyframeProgress()F

    move-result p0

    invoke-interface {v0, p0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    return p0
.end method

.method public getLinearCurrentKeyframeProgress()F
    .registers 4

    iget-boolean v0, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->isDiscrete:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getCurrentKeyframe()Lcom/oplus/anim/value/Keyframe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/value/Keyframe;->isStatic()Z

    move-result v2

    if-eqz v2, :cond_11

    return v1

    :cond_11
    iget p0, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->progress:F

    invoke-virtual {v0}, Lcom/oplus/anim/value/Keyframe;->getStartProgress()F

    move-result v1

    sub-float/2addr p0, v1

    invoke-virtual {v0}, Lcom/oplus/anim/value/Keyframe;->getEndProgress()F

    move-result v1

    invoke-virtual {v0}, Lcom/oplus/anim/value/Keyframe;->getStartProgress()F

    move-result v0

    sub-float/2addr v1, v0

    div-float/2addr p0, v1

    return p0
.end method

.method public getProgress()F
    .registers 1

    iget p0, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->progress:F

    return p0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getLinearCurrentKeyframeProgress()F

    move-result v0

    iget-object v1, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->valueCallback:Lcom/oplus/anim/value/EffectiveValueCallback;

    if-nez v1, :cond_13

    iget-object v1, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->keyframesWrapper:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapper;

    invoke-interface {v1, v0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapper;->isCachedValueEnabled(F)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object p0, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->cachedGetValue:Ljava/lang/Object;

    return-object p0

    :cond_13
    invoke-virtual {p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getCurrentKeyframe()Lcom/oplus/anim/value/Keyframe;

    move-result-object v1

    iget-object v2, v1, Lcom/oplus/anim/value/Keyframe;->xInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v2, :cond_2e

    iget-object v3, v1, Lcom/oplus/anim/value/Keyframe;->yInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v3, :cond_2e

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    iget-object v3, v1, Lcom/oplus/anim/value/Keyframe;->yInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue(Lcom/oplus/anim/value/Keyframe;FFF)Ljava/lang/Object;

    move-result-object v0

    goto :goto_36

    :cond_2e
    invoke-virtual {p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getInterpolatedCurrentKeyframeProgress()F

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue(Lcom/oplus/anim/value/Keyframe;F)Ljava/lang/Object;

    move-result-object v0

    :goto_36
    iput-object v0, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->cachedGetValue:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract getValue(Lcom/oplus/anim/value/Keyframe;F)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/value/Keyframe<",
            "TK;>;F)TA;"
        }
    .end annotation
.end method

.method public getValue(Lcom/oplus/anim/value/Keyframe;FFF)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/value/Keyframe<",
            "TK;>;FFF)TA;"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This animation does not support split dimensions!"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public notifyListeners()V
    .registers 3

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->listeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;

    invoke-interface {v1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;->onValueChanged()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public setIsDiscrete()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->isDiscrete:Z

    return-void
.end method

.method public setProgress(F)V
    .registers 3
    .param p1  # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->keyframesWrapper:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapper;

    invoke-interface {v0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapper;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    invoke-direct {p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getStartDelayProgress()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_16

    invoke-direct {p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getStartDelayProgress()F

    move-result p1

    goto :goto_22

    :cond_16
    invoke-virtual {p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getEndProgress()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_22

    invoke-virtual {p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getEndProgress()F

    move-result p1

    :cond_22
    :goto_22
    iget v0, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->progress:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_29

    return-void

    :cond_29
    iput p1, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->progress:F

    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->keyframesWrapper:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapper;

    invoke-interface {v0, p1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapper;->isValueChanged(F)Z

    move-result p1

    if-eqz p1, :cond_36

    invoke-virtual {p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->notifyListeners()V

    :cond_36
    return-void
.end method

.method public setValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V
    .registers 4
    .param p1  # Lcom/oplus/anim/value/EffectiveValueCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/value/EffectiveValueCallback<",
            "TA;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->valueCallback:Lcom/oplus/anim/value/EffectiveValueCallback;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/anim/value/EffectiveValueCallback;->setAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_8
    iput-object p1, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->valueCallback:Lcom/oplus/anim/value/EffectiveValueCallback;

    if-eqz p1, :cond_f

    invoke-virtual {p1, p0}, Lcom/oplus/anim/value/EffectiveValueCallback;->setAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_f
    return-void
.end method
