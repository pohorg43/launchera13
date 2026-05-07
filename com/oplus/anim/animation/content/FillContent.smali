.class public Lcom/oplus/anim/animation/content/FillContent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/anim/animation/content/DrawingContent;
.implements Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/oplus/anim/animation/content/KeyPathElementContent;


# instance fields
.field private blurAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
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

.field public blurMaskFilterRadius:F

.field private final colorAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private colorFilterAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field private dropShadowAnimation:Lcom/oplus/anim/animation/keyframe/DropShadowKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

.field private final hidden:Z

.field private final layer:Lcom/oplus/anim/model/layer/BaseLayer;

.field private final name:Ljava/lang/String;

.field private final opacityAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final paint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private final paths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/anim/animation/content/PathContent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;Lcom/oplus/anim/model/content/ShapeFill;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/animation/content/FillContent;->path:Landroid/graphics/Path;

    new-instance v1, Lcom/oplus/anim/animation/LPaint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/oplus/anim/animation/LPaint;-><init>(I)V

    iput-object v1, p0, Lcom/oplus/anim/animation/content/FillContent;->paint:Landroid/graphics/Paint;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oplus/anim/animation/content/FillContent;->paths:Ljava/util/List;

    iput-object p2, p0, Lcom/oplus/anim/animation/content/FillContent;->layer:Lcom/oplus/anim/model/layer/BaseLayer;

    invoke-virtual {p3}, Lcom/oplus/anim/model/content/ShapeFill;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/anim/animation/content/FillContent;->name:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/oplus/anim/model/content/ShapeFill;->isHidden()Z

    move-result v1

    iput-boolean v1, p0, Lcom/oplus/anim/animation/content/FillContent;->hidden:Z

    iput-object p1, p0, Lcom/oplus/anim/animation/content/FillContent;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p2}, Lcom/oplus/anim/model/layer/BaseLayer;->getBlurEffect()Lcom/oplus/anim/model/content/BlurEffect;

    move-result-object p1

    if-eqz p1, :cond_45

    invoke-virtual {p2}, Lcom/oplus/anim/model/layer/BaseLayer;->getBlurEffect()Lcom/oplus/anim/model/content/BlurEffect;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/anim/model/content/BlurEffect;->getBlurriness()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/anim/animation/content/FillContent;->blurAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    iget-object p1, p0, Lcom/oplus/anim/animation/content/FillContent;->blurAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, p1}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_45
    invoke-virtual {p2}, Lcom/oplus/anim/model/layer/BaseLayer;->getDropShadowEffect()Lcom/oplus/anim/parser/DropShadowEffect;

    move-result-object p1

    if-eqz p1, :cond_56

    new-instance p1, Lcom/oplus/anim/animation/keyframe/DropShadowKeyframeAnimation;

    invoke-virtual {p2}, Lcom/oplus/anim/model/layer/BaseLayer;->getDropShadowEffect()Lcom/oplus/anim/parser/DropShadowEffect;

    move-result-object v1

    invoke-direct {p1, p0, p2, v1}, Lcom/oplus/anim/animation/keyframe/DropShadowKeyframeAnimation;-><init>(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;Lcom/oplus/anim/model/layer/BaseLayer;Lcom/oplus/anim/parser/DropShadowEffect;)V

    iput-object p1, p0, Lcom/oplus/anim/animation/content/FillContent;->dropShadowAnimation:Lcom/oplus/anim/animation/keyframe/DropShadowKeyframeAnimation;

    :cond_56
    invoke-virtual {p3}, Lcom/oplus/anim/model/content/ShapeFill;->getColor()Lcom/oplus/anim/model/animatable/AnimatableColorValue;

    move-result-object p1

    if-eqz p1, :cond_8b

    invoke-virtual {p3}, Lcom/oplus/anim/model/content/ShapeFill;->getOpacity()Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;

    move-result-object p1

    if-nez p1, :cond_63

    goto :goto_8b

    :cond_63
    invoke-virtual {p3}, Lcom/oplus/anim/model/content/ShapeFill;->getFillType()Landroid/graphics/Path$FillType;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    invoke-virtual {p3}, Lcom/oplus/anim/model/content/ShapeFill;->getColor()Lcom/oplus/anim/model/animatable/AnimatableColorValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/anim/model/animatable/AnimatableColorValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/anim/animation/content/FillContent;->colorAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    invoke-virtual {p2, p1}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    invoke-virtual {p3}, Lcom/oplus/anim/model/content/ShapeFill;->getOpacity()Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/anim/animation/content/FillContent;->opacityAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    invoke-virtual {p2, p1}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    return-void

    :cond_8b
    :goto_8b
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oplus/anim/animation/content/FillContent;->colorAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    iput-object p1, p0, Lcom/oplus/anim/animation/content/FillContent;->opacityAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

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

    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->COLOR:Ljava/lang/Integer;

    if-ne p1, v0, :cond_b

    iget-object p0, p0, Lcom/oplus/anim/animation/content/FillContent;->colorAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, p2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto/16 :goto_95

    :cond_b
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->OPACITY:Ljava/lang/Integer;

    if-ne p1, v0, :cond_16

    iget-object p0, p0, Lcom/oplus/anim/animation/content/FillContent;->opacityAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, p2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto/16 :goto_95

    :cond_16
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_3c

    iget-object p1, p0, Lcom/oplus/anim/animation/content/FillContent;->colorFilterAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz p1, :cond_23

    iget-object v0, p0, Lcom/oplus/anim/animation/content/FillContent;->layer:Lcom/oplus/anim/model/layer/BaseLayer;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/model/layer/BaseLayer;->removeAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_23
    if-nez p2, :cond_2a

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oplus/anim/animation/content/FillContent;->colorFilterAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    goto/16 :goto_95

    :cond_2a
    new-instance p1, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {p1, p2}, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    iput-object p1, p0, Lcom/oplus/anim/animation/content/FillContent;->colorFilterAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    iget-object p1, p0, Lcom/oplus/anim/animation/content/FillContent;->layer:Lcom/oplus/anim/model/layer/BaseLayer;

    iget-object p0, p0, Lcom/oplus/anim/animation/content/FillContent;->colorFilterAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    goto :goto_95

    :cond_3c
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->BLUR_RADIUS:Ljava/lang/Float;

    if-ne p1, v0, :cond_5a

    iget-object p1, p0, Lcom/oplus/anim/animation/content/FillContent;->blurAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz p1, :cond_48

    invoke-virtual {p1, p2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto :goto_95

    :cond_48
    new-instance p1, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {p1, p2}, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    iput-object p1, p0, Lcom/oplus/anim/animation/content/FillContent;->blurAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    iget-object p1, p0, Lcom/oplus/anim/animation/content/FillContent;->layer:Lcom/oplus/anim/model/layer/BaseLayer;

    iget-object p0, p0, Lcom/oplus/anim/animation/content/FillContent;->blurAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    goto :goto_95

    :cond_5a
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->DROP_SHADOW_COLOR:Ljava/lang/Integer;

    if-ne p1, v0, :cond_66

    iget-object v0, p0, Lcom/oplus/anim/animation/content/FillContent;->dropShadowAnimation:Lcom/oplus/anim/animation/keyframe/DropShadowKeyframeAnimation;

    if-eqz v0, :cond_66

    invoke-virtual {v0, p2}, Lcom/oplus/anim/animation/keyframe/DropShadowKeyframeAnimation;->setColorCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto :goto_95

    :cond_66
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->DROP_SHADOW_OPACITY:Ljava/lang/Float;

    if-ne p1, v0, :cond_72

    iget-object v0, p0, Lcom/oplus/anim/animation/content/FillContent;->dropShadowAnimation:Lcom/oplus/anim/animation/keyframe/DropShadowKeyframeAnimation;

    if-eqz v0, :cond_72

    invoke-virtual {v0, p2}, Lcom/oplus/anim/animation/keyframe/DropShadowKeyframeAnimation;->setOpacityCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto :goto_95

    :cond_72
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->DROP_SHADOW_DIRECTION:Ljava/lang/Float;

    if-ne p1, v0, :cond_7e

    iget-object v0, p0, Lcom/oplus/anim/animation/content/FillContent;->dropShadowAnimation:Lcom/oplus/anim/animation/keyframe/DropShadowKeyframeAnimation;

    if-eqz v0, :cond_7e

    invoke-virtual {v0, p2}, Lcom/oplus/anim/animation/keyframe/DropShadowKeyframeAnimation;->setDirectionCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto :goto_95

    :cond_7e
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->DROP_SHADOW_DISTANCE:Ljava/lang/Float;

    if-ne p1, v0, :cond_8a

    iget-object v0, p0, Lcom/oplus/anim/animation/content/FillContent;->dropShadowAnimation:Lcom/oplus/anim/animation/keyframe/DropShadowKeyframeAnimation;

    if-eqz v0, :cond_8a

    invoke-virtual {v0, p2}, Lcom/oplus/anim/animation/keyframe/DropShadowKeyframeAnimation;->setDistanceCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto :goto_95

    :cond_8a
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->DROP_SHADOW_RADIUS:Ljava/lang/Float;

    if-ne p1, v0, :cond_95

    iget-object p0, p0, Lcom/oplus/anim/animation/content/FillContent;->dropShadowAnimation:Lcom/oplus/anim/animation/keyframe/DropShadowKeyframeAnimation;

    if-eqz p0, :cond_95

    invoke-virtual {p0, p2}, Lcom/oplus/anim/animation/keyframe/DropShadowKeyframeAnimation;->setRadiusCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    :cond_95
    :goto_95
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .registers 8

    iget-boolean v0, p0, Lcom/oplus/anim/animation/content/FillContent;->hidden:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const-string v0, "FillContent#draw"

    invoke-static {v0}, Lcom/oplus/anim/L;->beginSection(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/anim/animation/content/FillContent;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/oplus/anim/animation/content/FillContent;->colorAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    check-cast v2, Lcom/oplus/anim/animation/keyframe/ColorKeyframeAnimation;

    invoke-virtual {v2}, Lcom/oplus/anim/animation/keyframe/ColorKeyframeAnimation;->getIntValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p3, p3

    const/high16 v1, 0x437f0000  # 255.0f

    div-float/2addr p3, v1

    iget-object v2, p0, Lcom/oplus/anim/animation/content/FillContent;->opacityAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr p3, v2

    const/high16 v2, 0x42c80000  # 100.0f

    div-float/2addr p3, v2

    mul-float/2addr p3, v1

    float-to-int p3, p3

    iget-object v1, p0, Lcom/oplus/anim/animation/content/FillContent;->paint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    const/4 v3, 0x0

    invoke-static {p3, v3, v2}, Lcom/oplus/anim/utils/MiscUtils;->clamp(III)I

    move-result p3

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p3, p0, Lcom/oplus/anim/animation/content/FillContent;->colorFilterAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz p3, :cond_49

    iget-object v1, p0, Lcom/oplus/anim/animation/content/FillContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p3}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/ColorFilter;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_49
    iget-object p3, p0, Lcom/oplus/anim/animation/content/FillContent;->blurAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz p3, :cond_76

    invoke-virtual {p3}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-nez v1, :cond_63

    iget-object v1, p0, Lcom/oplus/anim/animation/content/FillContent;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_74

    :cond_63
    iget v1, p0, Lcom/oplus/anim/animation/content/FillContent;->blurMaskFilterRadius:F

    cmpl-float v1, p3, v1

    if-eqz v1, :cond_74

    iget-object v1, p0, Lcom/oplus/anim/animation/content/FillContent;->layer:Lcom/oplus/anim/model/layer/BaseLayer;

    invoke-virtual {v1, p3}, Lcom/oplus/anim/model/layer/BaseLayer;->getBlurMaskFilter(F)Landroid/graphics/BlurMaskFilter;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/anim/animation/content/FillContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    :cond_74
    :goto_74
    iput p3, p0, Lcom/oplus/anim/animation/content/FillContent;->blurMaskFilterRadius:F

    :cond_76
    iget-object p3, p0, Lcom/oplus/anim/animation/content/FillContent;->dropShadowAnimation:Lcom/oplus/anim/animation/keyframe/DropShadowKeyframeAnimation;

    if-eqz p3, :cond_7f

    iget-object v1, p0, Lcom/oplus/anim/animation/content/FillContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p3, v1}, Lcom/oplus/anim/animation/keyframe/DropShadowKeyframeAnimation;->applyTo(Landroid/graphics/Paint;)V

    :cond_7f
    iget-object p3, p0, Lcom/oplus/anim/animation/content/FillContent;->path:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    :goto_84
    iget-object p3, p0, Lcom/oplus/anim/animation/content/FillContent;->paths:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge v3, p3, :cond_a0

    iget-object p3, p0, Lcom/oplus/anim/animation/content/FillContent;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/oplus/anim/animation/content/FillContent;->paths:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/anim/animation/content/PathContent;

    invoke-interface {v1}, Lcom/oplus/anim/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {p3, v1, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_84

    :cond_a0
    iget-object p2, p0, Lcom/oplus/anim/animation/content/FillContent;->path:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/oplus/anim/animation/content/FillContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-static {v0}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .registers 7

    iget-object p3, p0, Lcom/oplus/anim/animation/content/FillContent;->path:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    const/4 p3, 0x0

    move v0, p3

    :goto_7
    iget-object v1, p0, Lcom/oplus/anim/animation/content/FillContent;->paths:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    iget-object v1, p0, Lcom/oplus/anim/animation/content/FillContent;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/oplus/anim/animation/content/FillContent;->paths:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/anim/animation/content/PathContent;

    invoke-interface {v2}, Lcom/oplus/anim/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_23
    iget-object p0, p0, Lcom/oplus/anim/animation/content/FillContent;->path:Landroid/graphics/Path;

    invoke-virtual {p0, p1, p3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget p0, p1, Landroid/graphics/RectF;->left:F

    const/high16 p2, 0x3f800000  # 1.0f

    sub-float/2addr p0, p2

    iget p3, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p3, p2

    iget v0, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p2

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, p2

    invoke-virtual {p1, p0, p3, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/animation/content/FillContent;->name:Ljava/lang/String;

    return-object p0
.end method

.method public onValueChanged()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/animation/content/FillContent;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

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
    .registers 5
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

    const/4 p1, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1b

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/anim/animation/content/Content;

    instance-of v1, v0, Lcom/oplus/anim/animation/content/PathContent;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/oplus/anim/animation/content/FillContent;->paths:Ljava/util/List;

    check-cast v0, Lcom/oplus/anim/animation/content/PathContent;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_18
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1b
    return-void
.end method
