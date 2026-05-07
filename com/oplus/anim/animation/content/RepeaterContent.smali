.class public Lcom/oplus/anim/animation/content/RepeaterContent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/anim/animation/content/DrawingContent;
.implements Lcom/oplus/anim/animation/content/PathContent;
.implements Lcom/oplus/anim/animation/content/GreedyContent;
.implements Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/oplus/anim/animation/content/KeyPathElementContent;


# instance fields
.field private contentGroup:Lcom/oplus/anim/animation/content/ContentGroup;

.field private final copies:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

.field private final hidden:Z

.field private final layer:Lcom/oplus/anim/model/layer/BaseLayer;

.field private final matrix:Landroid/graphics/Matrix;

.field private final name:Ljava/lang/String;

.field private final offset:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final path:Landroid/graphics/Path;

.field private final transform:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;


# direct methods
.method public constructor <init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;Lcom/oplus/anim/model/content/Repeater;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->matrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->path:Landroid/graphics/Path;

    iput-object p1, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    iput-object p2, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->layer:Lcom/oplus/anim/model/layer/BaseLayer;

    invoke-virtual {p3}, Lcom/oplus/anim/model/content/Repeater;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->name:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/oplus/anim/model/content/Repeater;->isHidden()Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->hidden:Z

    invoke-virtual {p3}, Lcom/oplus/anim/model/content/Repeater;->getCopies()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->copies:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, p1}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    invoke-virtual {p1, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    invoke-virtual {p3}, Lcom/oplus/anim/model/content/Repeater;->getOffset()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->offset:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, p1}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    invoke-virtual {p1, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    invoke-virtual {p3}, Lcom/oplus/anim/model/content/Repeater;->getTransform()Lcom/oplus/anim/model/animatable/AnimatableTransform;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/anim/model/animatable/AnimatableTransform;->createAnimation()Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->transform:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {p1, p2}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->addAnimationsToLayer(Lcom/oplus/anim/model/layer/BaseLayer;)V

    invoke-virtual {p1, p0}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->addListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    return-void
.end method


# virtual methods
.method public absorbContent(Ljava/util/ListIterator;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator<",
            "Lcom/oplus/anim/animation/content/Content;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->contentGroup:Lcom/oplus/anim/animation/content/ContentGroup;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    :goto_5
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_12

    goto :goto_5

    :cond_12
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_17
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    goto :goto_17

    :cond_28
    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    new-instance p1, Lcom/oplus/anim/animation/content/ContentGroup;

    iget-object v2, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    iget-object v3, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->layer:Lcom/oplus/anim/model/layer/BaseLayer;

    iget-boolean v5, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->hidden:Z

    const/4 v7, 0x0

    const-string v4, "Repeater"

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/oplus/anim/animation/content/ContentGroup;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;Ljava/lang/String;ZLjava/util/List;Lcom/oplus/anim/model/animatable/AnimatableTransform;)V

    iput-object p1, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->contentGroup:Lcom/oplus/anim/animation/content/ContentGroup;

    return-void
.end method

.method public addValueCallback(Ljava/lang/Object;Lcom/oplus/anim/value/EffectiveValueCallback;)V
    .registers 4
    .param p2  # Lcom/oplus/anim/value/EffectiveValueCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/oplus/anim/value/EffectiveValueCallback<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->transform:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->applyValueCallback(Ljava/lang/Object;Lcom/oplus/anim/value/EffectiveValueCallback;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->REPEATER_COPIES:Ljava/lang/Float;

    if-ne p1, v0, :cond_13

    iget-object p0, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->copies:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, p2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto :goto_1c

    :cond_13
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->REPEATER_OFFSET:Ljava/lang/Float;

    if-ne p1, v0, :cond_1c

    iget-object p0, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->offset:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, p2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .registers 13

    iget-object v0, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->copies:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->offset:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->transform:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v2}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->getStartOpacity()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x42c80000  # 100.0f

    div-float/2addr v2, v3

    iget-object v4, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->transform:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v4}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->getEndOpacity()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    div-float/2addr v4, v3

    float-to-int v3, v0

    add-int/lit8 v3, v3, -0x1

    :goto_3f
    if-ltz v3, :cond_66

    iget-object v5, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v5, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->matrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->transform:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    int-to-float v7, v3

    add-float v8, v7, v1

    invoke-virtual {v6, v8}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->getMatrixForRepeater(F)Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    int-to-float v5, p3

    div-float/2addr v7, v0

    invoke-static {v2, v4, v7}, Lcom/oplus/anim/utils/MiscUtils;->lerp(FFF)F

    move-result v6

    mul-float/2addr v6, v5

    iget-object v5, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->contentGroup:Lcom/oplus/anim/animation/content/ContentGroup;

    iget-object v7, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->matrix:Landroid/graphics/Matrix;

    float-to-int v6, v6

    invoke-virtual {v5, p1, v7, v6}, Lcom/oplus/anim/animation/content/ContentGroup;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_3f

    :cond_66
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .registers 4

    iget-object p0, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->contentGroup:Lcom/oplus/anim/animation/content/ContentGroup;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/anim/animation/content/ContentGroup;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Landroid/graphics/Path;
    .registers 7

    iget-object v0, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->contentGroup:Lcom/oplus/anim/animation/content/ContentGroup;

    invoke-virtual {v0}, Lcom/oplus/anim/animation/content/ContentGroup;->getPath()Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->copies:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->offset:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_26
    if-ltz v1, :cond_3f

    iget-object v3, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->matrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->transform:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    int-to-float v5, v1

    add-float/2addr v5, v2

    invoke-virtual {v4, v5}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->getMatrixForRepeater(F)Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v3, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->path:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_26

    :cond_3f
    iget-object p0, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->path:Landroid/graphics/Path;

    return-object p0
.end method

.method public onValueChanged()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->invalidateSelf()V

    return-void
.end method

.method public resolveKeyPath(Lcom/oplus/anim/model/KeyPath;ILjava/util/List;Lcom/oplus/anim/model/KeyPath;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/model/KeyPath;",
            "I",
            "Ljava/util/List<",
            "Lcom/oplus/anim/model/KeyPath;",
            ">;",
            "Lcom/oplus/anim/model/KeyPath;",
            ")V"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4, p0}, Lcom/oplus/anim/utils/MiscUtils;->resolveKeyPath(Lcom/oplus/anim/model/KeyPath;ILjava/util/List;Lcom/oplus/anim/model/KeyPath;Lcom/oplus/anim/animation/content/KeyPathElementContent;)V

    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/anim/animation/content/Content;",
            ">;",
            "Ljava/util/List<",
            "Lcom/oplus/anim/animation/content/Content;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/anim/animation/content/RepeaterContent;->contentGroup:Lcom/oplus/anim/animation/content/ContentGroup;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/anim/animation/content/ContentGroup;->setContents(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
