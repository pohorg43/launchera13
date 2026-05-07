.class public Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private anchorPoint:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private endOpacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final matrix:Landroid/graphics/Matrix;

.field private opacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private position:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private rotation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
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

.field private scale:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Lcom/oplus/anim/value/ScaleXY;",
            "Lcom/oplus/anim/value/ScaleXY;",
            ">;"
        }
    .end annotation
.end field

.field private skew:Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private skewAngle:Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final skewMatrix1:Landroid/graphics/Matrix;

.field private final skewMatrix2:Landroid/graphics/Matrix;

.field private final skewMatrix3:Landroid/graphics/Matrix;

.field private final skewValues:[F

.field private startOpacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oplus/anim/model/animatable/AnimatableTransform;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Lcom/oplus/anim/model/animatable/AnimatableTransform;->getAnchorPoint()Lcom/oplus/anim/model/animatable/AnimatablePathValue;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    move-object v0, v1

    goto :goto_1b

    :cond_13
    invoke-virtual {p1}, Lcom/oplus/anim/model/animatable/AnimatableTransform;->getAnchorPoint()Lcom/oplus/anim/model/animatable/AnimatablePathValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/model/animatable/AnimatablePathValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    :goto_1b
    iput-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->anchorPoint:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1}, Lcom/oplus/anim/model/animatable/AnimatableTransform;->getPosition()Lcom/oplus/anim/model/animatable/AnimatableValue;

    move-result-object v0

    if-nez v0, :cond_25

    move-object v0, v1

    goto :goto_2d

    :cond_25
    invoke-virtual {p1}, Lcom/oplus/anim/model/animatable/AnimatableTransform;->getPosition()Lcom/oplus/anim/model/animatable/AnimatableValue;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/anim/model/animatable/AnimatableValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    :goto_2d
    iput-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->position:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1}, Lcom/oplus/anim/model/animatable/AnimatableTransform;->getScale()Lcom/oplus/anim/model/animatable/AnimatableScaleValue;

    move-result-object v0

    if-nez v0, :cond_37

    move-object v0, v1

    goto :goto_3f

    :cond_37
    invoke-virtual {p1}, Lcom/oplus/anim/model/animatable/AnimatableTransform;->getScale()Lcom/oplus/anim/model/animatable/AnimatableScaleValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/model/animatable/AnimatableScaleValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    :goto_3f
    iput-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->scale:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1}, Lcom/oplus/anim/model/animatable/AnimatableTransform;->getRotation()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v0

    if-nez v0, :cond_49

    move-object v0, v1

    goto :goto_51

    :cond_49
    invoke-virtual {p1}, Lcom/oplus/anim/model/animatable/AnimatableTransform;->getRotation()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    :goto_51
    iput-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->rotation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1}, Lcom/oplus/anim/model/animatable/AnimatableTransform;->getSkew()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v0

    if-nez v0, :cond_5b

    move-object v0, v1

    goto :goto_65

    :cond_5b
    invoke-virtual {p1}, Lcom/oplus/anim/model/animatable/AnimatableTransform;->getSkew()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    check-cast v0, Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    :goto_65
    iput-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skew:Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    if-eqz v0, :cond_85

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewMatrix1:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewMatrix2:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewMatrix3:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewValues:[F

    goto :goto_8d

    :cond_85
    iput-object v1, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewMatrix1:Landroid/graphics/Matrix;

    iput-object v1, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewMatrix2:Landroid/graphics/Matrix;

    iput-object v1, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewMatrix3:Landroid/graphics/Matrix;

    iput-object v1, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewValues:[F

    :goto_8d
    invoke-virtual {p1}, Lcom/oplus/anim/model/animatable/AnimatableTransform;->getSkewAngle()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v0

    if-nez v0, :cond_95

    move-object v0, v1

    goto :goto_9f

    :cond_95
    invoke-virtual {p1}, Lcom/oplus/anim/model/animatable/AnimatableTransform;->getSkewAngle()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    check-cast v0, Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    :goto_9f
    iput-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewAngle:Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {p1}, Lcom/oplus/anim/model/animatable/AnimatableTransform;->getOpacity()Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;

    move-result-object v0

    if-eqz v0, :cond_b1

    invoke-virtual {p1}, Lcom/oplus/anim/model/animatable/AnimatableTransform;->getOpacity()Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->opacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    :cond_b1
    invoke-virtual {p1}, Lcom/oplus/anim/model/animatable/AnimatableTransform;->getStartOpacity()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v0

    if-eqz v0, :cond_c2

    invoke-virtual {p1}, Lcom/oplus/anim/model/animatable/AnimatableTransform;->getStartOpacity()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->startOpacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_c4

    :cond_c2
    iput-object v1, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->startOpacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    :goto_c4
    invoke-virtual {p1}, Lcom/oplus/anim/model/animatable/AnimatableTransform;->getEndOpacity()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v0

    if-eqz v0, :cond_d5

    invoke-virtual {p1}, Lcom/oplus/anim/model/animatable/AnimatableTransform;->getEndOpacity()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->endOpacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_d7

    :cond_d5
    iput-object v1, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->endOpacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    :goto_d7
    return-void
.end method

.method private clearSkewValues()V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x9

    if-ge v0, v1, :cond_d

    iget-object v1, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewValues:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_d
    return-void
.end method


# virtual methods
.method public addAnimationsToLayer(Lcom/oplus/anim/model/layer/BaseLayer;)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->opacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, v0}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->startOpacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, v0}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->endOpacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, v0}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->anchorPoint:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, v0}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->position:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, v0}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->scale:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, v0}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->rotation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, v0}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skew:Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {p1, v0}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    iget-object p0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewAngle:Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    return-void
.end method

.method public addListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->opacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    :cond_7
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->startOpacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_e

    invoke-virtual {v0, p1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    :cond_e
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->endOpacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_15

    invoke-virtual {v0, p1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    :cond_15
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->anchorPoint:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_1c

    invoke-virtual {v0, p1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    :cond_1c
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->position:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_23

    invoke-virtual {v0, p1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    :cond_23
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->scale:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_2a

    invoke-virtual {v0, p1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    :cond_2a
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->rotation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_31

    invoke-virtual {v0, p1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    :cond_31
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skew:Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    if-eqz v0, :cond_38

    invoke-virtual {v0, p1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    :cond_38
    iget-object p0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewAngle:Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    if-eqz p0, :cond_3f

    invoke-virtual {p0, p1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    :cond_3f
    return-void
.end method

.method public applyValueCallback(Ljava/lang/Object;Lcom/oplus/anim/value/EffectiveValueCallback;)Z
    .registers 6
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
            "TT;>;)Z"
        }
    .end annotation

    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->TRANSFORM_ANCHOR_POINT:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_1b

    iget-object p1, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->anchorPoint:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-nez p1, :cond_16

    new-instance p1, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-direct {p1, p2, v0}, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/oplus/anim/value/EffectiveValueCallback;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->anchorPoint:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    goto/16 :goto_11f

    :cond_16
    invoke-virtual {p1, p2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto/16 :goto_11f

    :cond_1b
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->TRANSFORM_POSITION:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_36

    iget-object p1, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->position:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-nez p1, :cond_31

    new-instance p1, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-direct {p1, p2, v0}, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/oplus/anim/value/EffectiveValueCallback;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->position:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    goto/16 :goto_11f

    :cond_31
    invoke-virtual {p1, p2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto/16 :goto_11f

    :cond_36
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->TRANSFORM_POSITION_X:Ljava/lang/Float;

    if-ne p1, v0, :cond_47

    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->position:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    instance-of v1, v0, Lcom/oplus/anim/animation/keyframe/SplitDimensionPathKeyframeAnimation;

    if-eqz v1, :cond_47

    check-cast v0, Lcom/oplus/anim/animation/keyframe/SplitDimensionPathKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/oplus/anim/animation/keyframe/SplitDimensionPathKeyframeAnimation;->setXValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto/16 :goto_11f

    :cond_47
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->TRANSFORM_POSITION_Y:Ljava/lang/Float;

    if-ne p1, v0, :cond_58

    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->position:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    instance-of v1, v0, Lcom/oplus/anim/animation/keyframe/SplitDimensionPathKeyframeAnimation;

    if-eqz v1, :cond_58

    check-cast v0, Lcom/oplus/anim/animation/keyframe/SplitDimensionPathKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/oplus/anim/animation/keyframe/SplitDimensionPathKeyframeAnimation;->setYValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto/16 :goto_11f

    :cond_58
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->TRANSFORM_SCALE:Lcom/oplus/anim/value/ScaleXY;

    if-ne p1, v0, :cond_73

    iget-object p1, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->scale:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-nez p1, :cond_6e

    new-instance p1, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;

    new-instance v0, Lcom/oplus/anim/value/ScaleXY;

    invoke-direct {v0}, Lcom/oplus/anim/value/ScaleXY;-><init>()V

    invoke-direct {p1, p2, v0}, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/oplus/anim/value/EffectiveValueCallback;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->scale:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    goto/16 :goto_11f

    :cond_6e
    invoke-virtual {p1, p2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto/16 :goto_11f

    :cond_73
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->TRANSFORM_ROTATION:Ljava/lang/Float;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_8e

    iget-object p1, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->rotation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-nez p1, :cond_89

    new-instance p1, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/oplus/anim/value/EffectiveValueCallback;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->rotation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    goto/16 :goto_11f

    :cond_89
    invoke-virtual {p1, p2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto/16 :goto_11f

    :cond_8e
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->TRANSFORM_OPACITY:Ljava/lang/Integer;

    if-ne p1, v0, :cond_aa

    iget-object p1, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->opacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-nez p1, :cond_a5

    new-instance p1, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;

    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/oplus/anim/value/EffectiveValueCallback;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->opacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    goto/16 :goto_11f

    :cond_a5
    invoke-virtual {p1, p2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto/16 :goto_11f

    :cond_aa
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->TRANSFORM_START_OPACITY:Ljava/lang/Float;

    const/high16 v2, 0x42c80000  # 100.0f

    if-ne p1, v0, :cond_c4

    iget-object p1, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->startOpacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-nez p1, :cond_c0

    new-instance p1, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/oplus/anim/value/EffectiveValueCallback;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->startOpacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_11f

    :cond_c0
    invoke-virtual {p1, p2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto :goto_11f

    :cond_c4
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->TRANSFORM_END_OPACITY:Ljava/lang/Float;

    if-ne p1, v0, :cond_dc

    iget-object p1, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->endOpacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-nez p1, :cond_d8

    new-instance p1, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/oplus/anim/value/EffectiveValueCallback;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->endOpacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_11f

    :cond_d8
    invoke-virtual {p1, p2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto :goto_11f

    :cond_dc
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->TRANSFORM_SKEW:Ljava/lang/Float;

    if-ne p1, v0, :cond_fe

    iget-object p1, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skew:Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    if-nez p1, :cond_f8

    new-instance p1, Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    new-instance v0, Lcom/oplus/anim/value/Keyframe;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/anim/value/Keyframe;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skew:Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    :cond_f8
    iget-object p0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skew:Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {p0, p2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto :goto_11f

    :cond_fe
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->TRANSFORM_SKEW_ANGLE:Ljava/lang/Float;

    if-ne p1, v0, :cond_121

    iget-object p1, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewAngle:Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    if-nez p1, :cond_11a

    new-instance p1, Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    new-instance v0, Lcom/oplus/anim/value/Keyframe;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/anim/value/Keyframe;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewAngle:Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    :cond_11a
    iget-object p0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewAngle:Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {p0, p2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    :goto_11f
    const/4 p0, 0x1

    return p0

    :cond_121
    const/4 p0, 0x0

    return p0
.end method

.method public getEndOpacity()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->endOpacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    return-object p0
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .registers 14

    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->position:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v3, v2, v1

    if-nez v3, :cond_1c

    iget v3, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_23

    :cond_1c
    iget-object v3, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v2, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_23
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->rotation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_45

    instance-of v2, v0, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;

    if-eqz v2, :cond_36

    invoke-virtual {v0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_3c

    :cond_36
    check-cast v0, Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v0}, Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result v0

    :goto_3c
    cmpl-float v2, v0, v1

    if-eqz v2, :cond_45

    iget-object v2, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    :cond_45
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skew:Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    const/high16 v2, 0x3f800000  # 1.0f

    if-eqz v0, :cond_dd

    iget-object v3, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewAngle:Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    const/high16 v4, 0x42b40000  # 90.0f

    if-nez v3, :cond_53

    move v3, v1

    goto :goto_63

    :cond_53
    invoke-virtual {v3}, Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result v3

    neg-float v3, v3

    add-float/2addr v3, v4

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v3, v5

    :goto_63
    iget-object v5, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewAngle:Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    if-nez v5, :cond_69

    move v4, v2

    goto :goto_79

    :cond_69
    invoke-virtual {v5}, Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result v5

    neg-float v5, v5

    add-float/2addr v5, v4

    float-to-double v4, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    :goto_79
    invoke-virtual {v0}, Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result v0

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v5

    double-to-float v0, v5

    invoke-direct {p0}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->clearSkewValues()V

    iget-object v5, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewValues:[F

    const/4 v6, 0x0

    aput v3, v5, v6

    const/4 v7, 0x1

    aput v4, v5, v7

    neg-float v8, v4

    const/4 v9, 0x3

    aput v8, v5, v9

    const/4 v10, 0x4

    aput v3, v5, v10

    const/16 v11, 0x8

    aput v2, v5, v11

    iget-object v12, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewMatrix1:Landroid/graphics/Matrix;

    invoke-virtual {v12, v5}, Landroid/graphics/Matrix;->setValues([F)V

    invoke-direct {p0}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->clearSkewValues()V

    iget-object v5, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewValues:[F

    aput v2, v5, v6

    aput v0, v5, v9

    aput v2, v5, v10

    aput v2, v5, v11

    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewMatrix2:Landroid/graphics/Matrix;

    invoke-virtual {v0, v5}, Landroid/graphics/Matrix;->setValues([F)V

    invoke-direct {p0}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->clearSkewValues()V

    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewValues:[F

    aput v3, v0, v6

    aput v8, v0, v7

    aput v4, v0, v9

    aput v3, v0, v10

    aput v2, v0, v11

    iget-object v3, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewMatrix3:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->setValues([F)V

    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewMatrix2:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewMatrix1:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewMatrix3:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewMatrix2:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewMatrix3:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_dd
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->scale:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_104

    invoke-virtual {v0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/anim/value/ScaleXY;

    invoke-virtual {v0}, Lcom/oplus/anim/value/ScaleXY;->getScaleX()F

    move-result v3

    cmpl-float v3, v3, v2

    if-nez v3, :cond_f7

    invoke-virtual {v0}, Lcom/oplus/anim/value/ScaleXY;->getScaleY()F

    move-result v3

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_104

    :cond_f7
    iget-object v2, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Lcom/oplus/anim/value/ScaleXY;->getScaleX()F

    move-result v3

    invoke-virtual {v0}, Lcom/oplus/anim/value/ScaleXY;->getScaleY()F

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_104
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->anchorPoint:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_123

    invoke-virtual {v0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v3, v2, v1

    if-nez v3, :cond_11a

    iget v3, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v3, v1

    if-eqz v1, :cond_123

    :cond_11a
    iget-object v1, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    neg-float v2, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    neg-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_123
    iget-object p0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public getMatrixForRepeater(F)Landroid/graphics/Matrix;
    .registers 11

    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->position:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move-object v0, v1

    goto :goto_d

    :cond_7
    invoke-virtual {v0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    :goto_d
    iget-object v2, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->scale:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-nez v2, :cond_13

    move-object v2, v1

    goto :goto_19

    :cond_13
    invoke-virtual {v2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/anim/value/ScaleXY;

    :goto_19
    iget-object v3, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    if-eqz v0, :cond_2b

    iget-object v3, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v4, p1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, p1

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_2b
    if-eqz v2, :cond_47

    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Lcom/oplus/anim/value/ScaleXY;->getScaleX()F

    move-result v3

    float-to-double v3, v3

    float-to-double v5, p1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v2}, Lcom/oplus/anim/value/ScaleXY;->getScaleY()F

    move-result v2

    float-to-double v7, v2

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v2, v4

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_47
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->rotation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_72

    invoke-virtual {v0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v2, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->anchorPoint:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-nez v2, :cond_5a

    goto :goto_60

    :cond_5a
    invoke-virtual {v2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    :goto_60
    iget-object v2, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    mul-float/2addr v0, p1

    const/4 p1, 0x0

    if-nez v1, :cond_68

    move v3, p1

    goto :goto_6a

    :cond_68
    iget v3, v1, Landroid/graphics/PointF;->x:F

    :goto_6a
    if-nez v1, :cond_6d

    goto :goto_6f

    :cond_6d
    iget p1, v1, Landroid/graphics/PointF;->y:F

    :goto_6f
    invoke-virtual {v2, v0, v3, p1}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    :cond_72
    iget-object p0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public getOpacity()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->opacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    return-object p0
.end method

.method public getStartOpacity()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->startOpacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    return-object p0
.end method

.method public setProgress(F)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->opacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    :cond_7
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->startOpacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_e

    invoke-virtual {v0, p1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    :cond_e
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->endOpacity:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_15

    invoke-virtual {v0, p1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    :cond_15
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->anchorPoint:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_1c

    invoke-virtual {v0, p1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    :cond_1c
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->position:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_23

    invoke-virtual {v0, p1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    :cond_23
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->scale:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_2a

    invoke-virtual {v0, p1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    :cond_2a
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->rotation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_31

    invoke-virtual {v0, p1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    :cond_31
    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skew:Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    if-eqz v0, :cond_38

    invoke-virtual {v0, p1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    :cond_38
    iget-object p0, p0, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->skewAngle:Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    if-eqz p0, :cond_3f

    invoke-virtual {p0, p1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    :cond_3f
    return-void
.end method
