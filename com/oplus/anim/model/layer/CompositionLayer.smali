.class public Lcom/oplus/anim/model/layer/CompositionLayer;
.super Lcom/oplus/anim/model/layer/BaseLayer;
.source ""


# instance fields
.field private hasMasks:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private hasMatte:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final layerPaint:Landroid/graphics/Paint;

.field private final layers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/anim/model/layer/BaseLayer;",
            ">;"
        }
    .end annotation
.end field

.field private final newClipRect:Landroid/graphics/RectF;

.field private final rect:Landroid/graphics/RectF;

.field private timeRemapping:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/Layer;Ljava/util/List;Lcom/oplus/anim/EffectiveAnimationComposition;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/EffectiveAnimationDrawable;",
            "Lcom/oplus/anim/model/layer/Layer;",
            "Ljava/util/List<",
            "Lcom/oplus/anim/model/layer/Layer;",
            ">;",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/oplus/anim/model/layer/BaseLayer;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/Layer;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->layers:Ljava/util/List;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->rect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->newClipRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->layerPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/oplus/anim/model/layer/Layer;->getTimeRemapping()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_35

    invoke-virtual {p2}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->timeRemapping:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, p2}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    iget-object p2, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->timeRemapping:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    goto :goto_37

    :cond_35
    iput-object v0, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->timeRemapping:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    :goto_37
    new-instance p2, Landroidx/collection/LongSparseArray;

    invoke-virtual {p4}, Lcom/oplus/anim/EffectiveAnimationComposition;->getLayers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p2, v1}, Landroidx/collection/LongSparseArray;-><init>(I)V

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    move-object v3, v0

    :goto_4b
    const/4 v4, 0x0

    if-ltz v1, :cond_88

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/anim/model/layer/Layer;

    invoke-static {p0, v5, p1, p4}, Lcom/oplus/anim/model/layer/BaseLayer;->forModel(Lcom/oplus/anim/model/layer/CompositionLayer;Lcom/oplus/anim/model/layer/Layer;Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/layer/BaseLayer;

    move-result-object v6

    if-nez v6, :cond_5b

    goto :goto_85

    :cond_5b
    invoke-virtual {v6}, Lcom/oplus/anim/model/layer/BaseLayer;->getLayerModel()Lcom/oplus/anim/model/layer/Layer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oplus/anim/model/layer/Layer;->getId()J

    move-result-wide v7

    invoke-virtual {p2, v7, v8, v6}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    if-eqz v3, :cond_6d

    invoke-virtual {v3, v6}, Lcom/oplus/anim/model/layer/BaseLayer;->setMatteLayer(Lcom/oplus/anim/model/layer/BaseLayer;)V

    move-object v3, v0

    goto :goto_85

    :cond_6d
    iget-object v7, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v7, v4, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v4, Lcom/oplus/anim/model/layer/CompositionLayer$1;->$SwitchMap$com$oplus$anim$model$layer$Layer$MatteType:[I

    invoke-virtual {v5}, Lcom/oplus/anim/model/layer/Layer;->getMatteType()Lcom/oplus/anim/model/layer/Layer$MatteType;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v2, :cond_84

    const/4 v5, 0x2

    if-eq v4, v5, :cond_84

    goto :goto_85

    :cond_84
    move-object v3, v6

    :goto_85
    add-int/lit8 v1, v1, -0x1

    goto :goto_4b

    :cond_88
    :goto_88
    invoke-virtual {p2}, Landroidx/collection/LongSparseArray;->size()I

    move-result p0

    if-ge v4, p0, :cond_b1

    invoke-virtual {p2, v4}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide p0

    invoke-virtual {p2, p0, p1}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/anim/model/layer/BaseLayer;

    if-nez p0, :cond_9b

    goto :goto_ae

    :cond_9b
    invoke-virtual {p0}, Lcom/oplus/anim/model/layer/BaseLayer;->getLayerModel()Lcom/oplus/anim/model/layer/Layer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/anim/model/layer/Layer;->getParentId()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/anim/model/layer/BaseLayer;

    if-eqz p1, :cond_ae

    invoke-virtual {p0, p1}, Lcom/oplus/anim/model/layer/BaseLayer;->setParentLayer(Lcom/oplus/anim/model/layer/BaseLayer;)V

    :cond_ae
    :goto_ae
    add-int/lit8 v4, v4, 0x1

    goto :goto_88

    :cond_b1
    return-void
.end method


# virtual methods
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

    invoke-super {p0, p1, p2}, Lcom/oplus/anim/model/layer/BaseLayer;->addValueCallback(Ljava/lang/Object;Lcom/oplus/anim/value/EffectiveValueCallback;)V

    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->TIME_REMAP:Ljava/lang/Float;

    if-ne p1, v0, :cond_21

    if-nez p2, :cond_12

    iget-object p0, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->timeRemapping:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz p0, :cond_21

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto :goto_21

    :cond_12
    new-instance p1, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {p1, p2}, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    iput-object p1, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->timeRemapping:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    iget-object p1, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->timeRemapping:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_21
    :goto_21
    return-void
.end method

.method public drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .registers 10

    const-string v0, "CompositionLayer#draw"

    invoke-static {v0}, Lcom/oplus/anim/L;->beginSection(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->newClipRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->layerModel:Lcom/oplus/anim/model/layer/Layer;

    invoke-virtual {v2}, Lcom/oplus/anim/model/layer/Layer;->getPreCompWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oplus/anim/model/layer/BaseLayer;->layerModel:Lcom/oplus/anim/model/layer/Layer;

    invoke-virtual {v3}, Lcom/oplus/anim/model/layer/Layer;->getPreCompHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->newClipRect:Landroid/graphics/RectF;

    invoke-virtual {p2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->isApplyingOpacityToLayersEnabled()Z

    move-result v1

    const/16 v2, 0xff

    const/4 v3, 0x1

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_35

    if-eq p3, v2, :cond_35

    move v1, v3

    goto :goto_36

    :cond_35
    const/4 v1, 0x0

    :goto_36
    if-eqz v1, :cond_45

    iget-object v4, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->layerPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->newClipRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->layerPaint:Landroid/graphics/Paint;

    invoke-static {p1, v4, v5}, Lcom/oplus/anim/utils/Utils;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_48

    :cond_45
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    :goto_48
    if-eqz v1, :cond_4b

    move p3, v2

    :cond_4b
    iget-object v1, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_52
    if-ltz v1, :cond_74

    iget-object v2, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->newClipRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_63

    iget-object v2, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->newClipRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    move-result v2

    goto :goto_64

    :cond_63
    move v2, v3

    :goto_64
    if-eqz v2, :cond_71

    iget-object v2, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/anim/model/layer/BaseLayer;

    invoke-virtual {v2, p1, p2, p3}, Lcom/oplus/anim/model/layer/BaseLayer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    :cond_71
    add-int/lit8 v1, v1, -0x1

    goto :goto_52

    :cond_74
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-static {v0}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .registers 7

    invoke-super {p0, p1, p2, p3}, Lcom/oplus/anim/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p2, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    :goto_b
    if-ltz p2, :cond_2a

    iget-object v0, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->rect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/anim/model/layer/BaseLayer;

    iget-object v1, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->rect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v2, p3}, Lcom/oplus/anim/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object v0, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_b

    :cond_2a
    return-void
.end method

.method public hasMasks()Z
    .registers 5

    iget-object v0, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->hasMasks:Ljava/lang/Boolean;

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_c
    if-ltz v0, :cond_39

    iget-object v2, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/anim/model/layer/BaseLayer;

    instance-of v3, v2, Lcom/oplus/anim/model/layer/ShapeLayer;

    if-eqz v3, :cond_25

    invoke-virtual {v2}, Lcom/oplus/anim/model/layer/BaseLayer;->hasMasksOnThisLayer()Z

    move-result v2

    if-eqz v2, :cond_36

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->hasMasks:Ljava/lang/Boolean;

    return v1

    :cond_25
    instance-of v3, v2, Lcom/oplus/anim/model/layer/CompositionLayer;

    if-eqz v3, :cond_36

    check-cast v2, Lcom/oplus/anim/model/layer/CompositionLayer;

    invoke-virtual {v2}, Lcom/oplus/anim/model/layer/CompositionLayer;->hasMasks()Z

    move-result v2

    if-eqz v2, :cond_36

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->hasMasks:Ljava/lang/Boolean;

    return v1

    :cond_36
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_39
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->hasMasks:Ljava/lang/Boolean;

    :cond_3d
    iget-object p0, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->hasMasks:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public hasMatte()Z
    .registers 4

    iget-object v0, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->hasMatte:Ljava/lang/Boolean;

    if-nez v0, :cond_33

    invoke-virtual {p0}, Lcom/oplus/anim/model/layer/BaseLayer;->hasMatteOnThisLayer()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->hasMatte:Ljava/lang/Boolean;

    return v1

    :cond_10
    iget-object v0, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_17
    if-ltz v0, :cond_2f

    iget-object v2, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/anim/model/layer/BaseLayer;

    invoke-virtual {v2}, Lcom/oplus/anim/model/layer/BaseLayer;->hasMatteOnThisLayer()Z

    move-result v2

    if-eqz v2, :cond_2c

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->hasMatte:Ljava/lang/Boolean;

    return v1

    :cond_2c
    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    :cond_2f
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->hasMatte:Ljava/lang/Boolean;

    :cond_33
    iget-object p0, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->hasMatte:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public resolveChildKeyPath(Lcom/oplus/anim/model/KeyPath;ILjava/util/List;Lcom/oplus/anim/model/KeyPath;)V
    .registers 7
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

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/anim/model/layer/BaseLayer;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/oplus/anim/model/layer/BaseLayer;->resolveKeyPath(Lcom/oplus/anim/model/KeyPath;ILjava/util/List;Lcom/oplus/anim/model/KeyPath;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public setOutlineMasksAndMattes(Z)V
    .registers 3

    invoke-super {p0, p1}, Lcom/oplus/anim/model/layer/BaseLayer;->setOutlineMasksAndMattes(Z)V

    iget-object p0, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/anim/model/layer/BaseLayer;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/model/layer/BaseLayer;->setOutlineMasksAndMattes(Z)V

    goto :goto_9

    :cond_19
    return-void
.end method

.method public setProgress(F)V
    .registers 5
    .param p1  # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/oplus/anim/model/layer/BaseLayer;->setProgress(F)V

    iget-object v0, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->timeRemapping:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_39

    iget-object p1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getComposition()Lcom/oplus/anim/EffectiveAnimationComposition;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/anim/EffectiveAnimationComposition;->getDurationFrames()F

    move-result p1

    const v0, 0x3c23d70a  # 0.01f

    add-float/2addr p1, v0

    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->layerModel:Lcom/oplus/anim/model/layer/Layer;

    invoke-virtual {v0}, Lcom/oplus/anim/model/layer/Layer;->getComposition()Lcom/oplus/anim/EffectiveAnimationComposition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationComposition;->getStartFrame()F

    move-result v0

    iget-object v1, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->timeRemapping:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->layerModel:Lcom/oplus/anim/model/layer/Layer;

    invoke-virtual {v2}, Lcom/oplus/anim/model/layer/Layer;->getComposition()Lcom/oplus/anim/EffectiveAnimationComposition;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/anim/EffectiveAnimationComposition;->getFrameRate()F

    move-result v2

    mul-float/2addr v2, v1

    sub-float/2addr v2, v0

    div-float p1, v2, p1

    :cond_39
    iget-object v0, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->timeRemapping:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->layerModel:Lcom/oplus/anim/model/layer/Layer;

    invoke-virtual {v0}, Lcom/oplus/anim/model/layer/Layer;->getStartProgress()F

    move-result v0

    sub-float/2addr p1, v0

    :cond_44
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->layerModel:Lcom/oplus/anim/model/layer/Layer;

    invoke-virtual {v0}, Lcom/oplus/anim/model/layer/Layer;->getTimeStretch()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->layerModel:Lcom/oplus/anim/model/layer/Layer;

    invoke-virtual {v0}, Lcom/oplus/anim/model/layer/Layer;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "__container"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64

    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->layerModel:Lcom/oplus/anim/model/layer/Layer;

    invoke-virtual {v0}, Lcom/oplus/anim/model/layer/Layer;->getTimeStretch()F

    move-result v0

    div-float/2addr p1, v0

    :cond_64
    iget-object v0, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6c
    if-ltz v0, :cond_7c

    iget-object v1, p0, Lcom/oplus/anim/model/layer/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/anim/model/layer/BaseLayer;

    invoke-virtual {v1, p1}, Lcom/oplus/anim/model/layer/BaseLayer;->setProgress(F)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_6c

    :cond_7c
    return-void
.end method
