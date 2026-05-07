.class public Lcom/oplus/anim/animation/keyframe/SplitDimensionPathKeyframeAnimation;
.super Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private final point:Landroid/graphics/PointF;

.field private final pointWithCallbackValues:Landroid/graphics/PointF;

.field private final xAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public xValueCallback:Lcom/oplus/anim/value/EffectiveValueCallback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/value/EffectiveValueCallback<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final yAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public yValueCallback:Lcom/oplus/anim/value/EffectiveValueCallback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/value/EffectiveValueCallback<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;-><init>(Ljava/util/List;)V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/animation/keyframe/SplitDimensionPathKeyframeAnimation;->point:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/animation/keyframe/SplitDimensionPathKeyframeAnimation;->pointWithCallbackValues:Landroid/graphics/PointF;

    iput-object p1, p0, Lcom/oplus/anim/animation/keyframe/SplitDimensionPathKeyframeAnimation;->xAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    iput-object p2, p0, Lcom/oplus/anim/animation/keyframe/SplitDimensionPathKeyframeAnimation;->yAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getProgress()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/anim/animation/keyframe/SplitDimensionPathKeyframeAnimation;->setProgress(F)V

    return-void
.end method


# virtual methods
.method public getValue()Landroid/graphics/PointF;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oplus/anim/animation/keyframe/SplitDimensionPathKeyframeAnimation;->getValue(Lcom/oplus/anim/value/Keyframe;F)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public getValue(Lcom/oplus/anim/value/Keyframe;F)Landroid/graphics/PointF;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/value/Keyframe<",
            "Landroid/graphics/PointF;",
            ">;F)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    iget-object p1, p0, Lcom/oplus/anim/animation/keyframe/SplitDimensionPathKeyframeAnimation;->xValueCallback:Lcom/oplus/anim/value/EffectiveValueCallback;

    const/4 v0, 0x0

    if-eqz p1, :cond_2f

    iget-object p1, p0, Lcom/oplus/anim/animation/keyframe/SplitDimensionPathKeyframeAnimation;->xAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getCurrentKeyframe()Lcom/oplus/anim/value/Keyframe;

    move-result-object p1

    if-eqz p1, :cond_2f

    iget-object v1, p0, Lcom/oplus/anim/animation/keyframe/SplitDimensionPathKeyframeAnimation;->xAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getInterpolatedCurrentKeyframeProgress()F

    move-result v9

    iget-object v1, p1, Lcom/oplus/anim/value/Keyframe;->endFrame:Ljava/lang/Float;

    iget-object v2, p0, Lcom/oplus/anim/animation/keyframe/SplitDimensionPathKeyframeAnimation;->xValueCallback:Lcom/oplus/anim/value/EffectiveValueCallback;

    iget v3, p1, Lcom/oplus/anim/value/Keyframe;->startFrame:F

    if-nez v1, :cond_1d

    move v4, v3

    goto :goto_22

    :cond_1d
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    move v4, v1

    :goto_22
    iget-object v5, p1, Lcom/oplus/anim/value/Keyframe;->startValue:Ljava/lang/Object;

    iget-object v6, p1, Lcom/oplus/anim/value/Keyframe;->endValue:Ljava/lang/Object;

    move v7, p2

    move v8, p2

    invoke-virtual/range {v2 .. v9}, Lcom/oplus/anim/value/EffectiveValueCallback;->getValueInternal(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    goto :goto_30

    :cond_2f
    move-object p1, v0

    :goto_30
    iget-object v1, p0, Lcom/oplus/anim/animation/keyframe/SplitDimensionPathKeyframeAnimation;->yValueCallback:Lcom/oplus/anim/value/EffectiveValueCallback;

    if-eqz v1, :cond_5e

    iget-object v1, p0, Lcom/oplus/anim/animation/keyframe/SplitDimensionPathKeyframeAnimation;->yAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getCurrentKeyframe()Lcom/oplus/anim/value/Keyframe;

    move-result-object v1

    if-eqz v1, :cond_5e

    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/SplitDimensionPathKeyframeAnimation;->yAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getInterpolatedCurrentKeyframeProgress()F

    move-result v9

    iget-object v0, v1, Lcom/oplus/anim/value/Keyframe;->endFrame:Ljava/lang/Float;

    iget-object v2, p0, Lcom/oplus/anim/animation/keyframe/SplitDimensionPathKeyframeAnimation;->yValueCallback:Lcom/oplus/anim/value/EffectiveValueCallback;

    iget v3, v1, Lcom/oplus/anim/value/Keyframe;->startFrame:F

    if-nez v0, :cond_4c

    move v4, v3

    goto :goto_51

    :cond_4c
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    move v4, v0

    :goto_51
    iget-object v5, v1, Lcom/oplus/anim/value/Keyframe;->startValue:Ljava/lang/Object;

    iget-object v6, v1, Lcom/oplus/anim/value/Keyframe;->endValue:Ljava/lang/Object;

    move v7, p2

    move v8, p2

    invoke-virtual/range {v2 .. v9}, Lcom/oplus/anim/value/EffectiveValueCallback;->getValueInternal(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Ljava/lang/Float;

    :cond_5e
    const/4 p2, 0x0

    if-nez p1, :cond_6b

    iget-object p1, p0, Lcom/oplus/anim/animation/keyframe/SplitDimensionPathKeyframeAnimation;->pointWithCallbackValues:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/oplus/anim/animation/keyframe/SplitDimensionPathKeyframeAnimation;->point:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1, v1, p2}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_74

    :cond_6b
    iget-object v1, p0, Lcom/oplus/anim/animation/keyframe/SplitDimensionPathKeyframeAnimation;->pointWithCallbackValues:Landroid/graphics/PointF;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v1, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    :goto_74
    if-nez v0, :cond_82

    iget-object p1, p0, Lcom/oplus/anim/animation/keyframe/SplitDimensionPathKeyframeAnimation;->pointWithCallbackValues:Landroid/graphics/PointF;

    iget p2, p1, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/SplitDimensionPathKeyframeAnimation;->point:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2, v0}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_8d

    :cond_82
    iget-object p1, p0, Lcom/oplus/anim/animation/keyframe/SplitDimensionPathKeyframeAnimation;->pointWithCallbackValues:Landroid/graphics/PointF;

    iget p2, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/PointF;->set(FF)V

    :goto_8d
    iget-object p0, p0, Lcom/oplus/anim/animation/keyframe/SplitDimensionPathKeyframeAnimation;->pointWithCallbackValues:Landroid/graphics/PointF;

    return-object p0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/anim/animation/keyframe/SplitDimensionPathKeyframeAnimation;->getValue()Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue(Lcom/oplus/anim/value/Keyframe;F)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/oplus/anim/animation/keyframe/SplitDimensionPathKeyframeAnimation;->getValue(Lcom/oplus/anim/value/Keyframe;F)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public setProgress(F)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/SplitDimensionPathKeyframeAnimation;->xAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/SplitDimensionPathKeyframeAnimation;->yAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    iget-object p1, p0, Lcom/oplus/anim/animation/keyframe/SplitDimensionPathKeyframeAnimation;->point:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/SplitDimensionPathKeyframeAnimation;->xAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/oplus/anim/animation/keyframe/SplitDimensionPathKeyframeAnimation;->yAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    const/4 p1, 0x0

    :goto_28
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3e

    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;

    invoke-interface {v0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;->onValueChanged()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_28

    :cond_3e
    return-void
.end method

.method public setXValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V
    .registers 4
    .param p1  # Lcom/oplus/anim/value/EffectiveValueCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/value/EffectiveValueCallback<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/SplitDimensionPathKeyframeAnimation;->xValueCallback:Lcom/oplus/anim/value/EffectiveValueCallback;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/anim/value/EffectiveValueCallback;->setAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_8
    iput-object p1, p0, Lcom/oplus/anim/animation/keyframe/SplitDimensionPathKeyframeAnimation;->xValueCallback:Lcom/oplus/anim/value/EffectiveValueCallback;

    if-eqz p1, :cond_f

    invoke-virtual {p1, p0}, Lcom/oplus/anim/value/EffectiveValueCallback;->setAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_f
    return-void
.end method

.method public setYValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V
    .registers 4
    .param p1  # Lcom/oplus/anim/value/EffectiveValueCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/value/EffectiveValueCallback<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/SplitDimensionPathKeyframeAnimation;->yValueCallback:Lcom/oplus/anim/value/EffectiveValueCallback;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/anim/value/EffectiveValueCallback;->setAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_8
    iput-object p1, p0, Lcom/oplus/anim/animation/keyframe/SplitDimensionPathKeyframeAnimation;->yValueCallback:Lcom/oplus/anim/value/EffectiveValueCallback;

    if-eqz p1, :cond_f

    invoke-virtual {p1, p0}, Lcom/oplus/anim/value/EffectiveValueCallback;->setAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_f
    return-void
.end method
