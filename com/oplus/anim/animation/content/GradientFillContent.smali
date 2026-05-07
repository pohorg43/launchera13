.class public Lcom/oplus/anim/animation/content/GradientFillContent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/anim/animation/content/DrawingContent;
.implements Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/oplus/anim/animation/content/KeyPathElementContent;


# static fields
.field private static final CACHE_STEPS_MS:I = 0x20


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

.field private final boundsRect:Landroid/graphics/RectF;

.field private final cacheSteps:I

.field private final colorAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Lcom/oplus/anim/model/content/GradientColor;",
            "Lcom/oplus/anim/model/content/GradientColor;",
            ">;"
        }
    .end annotation
.end field

.field private colorCallbackAnimation:Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
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

.field private final endPointAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final hidden:Z

.field private final layer:Lcom/oplus/anim/model/layer/BaseLayer;

.field private final linearGradientCache:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Landroid/graphics/LinearGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

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

.field private final radialGradientCache:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Landroid/graphics/RadialGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final startPointAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Lcom/oplus/anim/model/content/GradientType;


# direct methods
.method public constructor <init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;Lcom/oplus/anim/model/content/GradientFill;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->linearGradientCache:Landroidx/collection/LongSparseArray;

    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->radialGradientCache:Landroidx/collection/LongSparseArray;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->path:Landroid/graphics/Path;

    new-instance v1, Lcom/oplus/anim/animation/LPaint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/oplus/anim/animation/LPaint;-><init>(I)V

    iput-object v1, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->paint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->boundsRect:Landroid/graphics/RectF;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->paths:Ljava/util/List;

    const/4 v1, 0x0

    iput v1, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->blurMaskFilterRadius:F

    iput-object p2, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->layer:Lcom/oplus/anim/model/layer/BaseLayer;

    invoke-virtual {p3}, Lcom/oplus/anim/model/content/GradientFill;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->name:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/oplus/anim/model/content/GradientFill;->isHidden()Z

    move-result v1

    iput-boolean v1, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->hidden:Z

    iput-object p1, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p3}, Lcom/oplus/anim/model/content/GradientFill;->getGradientType()Lcom/oplus/anim/model/content/GradientType;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->type:Lcom/oplus/anim/model/content/GradientType;

    invoke-virtual {p3}, Lcom/oplus/anim/model/content/GradientFill;->getFillType()Landroid/graphics/Path$FillType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    invoke-virtual {p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getComposition()Lcom/oplus/anim/EffectiveAnimationComposition;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/anim/EffectiveAnimationComposition;->getDuration()F

    move-result p1

    const/high16 v0, 0x42000000  # 32.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->cacheSteps:I

    invoke-virtual {p3}, Lcom/oplus/anim/model/content/GradientFill;->getGradientColor()Lcom/oplus/anim/model/animatable/AnimatableGradientColorValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/anim/model/animatable/AnimatableGradientColorValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->colorAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    invoke-virtual {p2, p1}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    invoke-virtual {p3}, Lcom/oplus/anim/model/content/GradientFill;->getOpacity()Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->opacityAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    invoke-virtual {p2, p1}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    invoke-virtual {p3}, Lcom/oplus/anim/model/content/GradientFill;->getStartPoint()Lcom/oplus/anim/model/animatable/AnimatablePointValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/anim/model/animatable/AnimatablePointValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->startPointAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    invoke-virtual {p2, p1}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    invoke-virtual {p3}, Lcom/oplus/anim/model/content/GradientFill;->getEndPoint()Lcom/oplus/anim/model/animatable/AnimatablePointValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/anim/model/animatable/AnimatablePointValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->endPointAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    invoke-virtual {p2, p1}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    invoke-virtual {p2}, Lcom/oplus/anim/model/layer/BaseLayer;->getBlurEffect()Lcom/oplus/anim/model/content/BlurEffect;

    move-result-object p1

    if-eqz p1, :cond_b8

    invoke-virtual {p2}, Lcom/oplus/anim/model/layer/BaseLayer;->getBlurEffect()Lcom/oplus/anim/model/content/BlurEffect;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/anim/model/content/BlurEffect;->getBlurriness()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->blurAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    iget-object p1, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->blurAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, p1}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_b8
    invoke-virtual {p2}, Lcom/oplus/anim/model/layer/BaseLayer;->getDropShadowEffect()Lcom/oplus/anim/parser/DropShadowEffect;

    move-result-object p1

    if-eqz p1, :cond_c9

    new-instance p1, Lcom/oplus/anim/animation/keyframe/DropShadowKeyframeAnimation;

    invoke-virtual {p2}, Lcom/oplus/anim/model/layer/BaseLayer;->getDropShadowEffect()Lcom/oplus/anim/parser/DropShadowEffect;

    move-result-object p3

    invoke-direct {p1, p0, p2, p3}, Lcom/oplus/anim/animation/keyframe/DropShadowKeyframeAnimation;-><init>(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;Lcom/oplus/anim/model/layer/BaseLayer;Lcom/oplus/anim/parser/DropShadowEffect;)V

    iput-object p1, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->dropShadowAnimation:Lcom/oplus/anim/animation/keyframe/DropShadowKeyframeAnimation;

    :cond_c9
    return-void
.end method

.method private applyDynamicColorsIfNeeded([I)[I
    .registers 5

    iget-object p0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->colorCallbackAnimation:Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;

    if-eqz p0, :cond_2e

    invoke-virtual {p0}, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Integer;

    array-length v0, p1

    array-length v1, p0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1d

    :goto_f
    array-length v0, p1

    if-ge v2, v0, :cond_2e

    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1d
    array-length p1, p0

    new-array p1, p1, [I

    :goto_20
    array-length v0, p0

    if-ge v2, v0, :cond_2e

    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_2e
    return-object p1
.end method

.method private getGradientHash()I
    .registers 4

    iget-object v0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->startPointAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getProgress()F

    move-result v0

    iget v1, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->cacheSteps:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->endPointAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getProgress()F

    move-result v1

    iget v2, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->cacheSteps:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->colorAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getProgress()F

    move-result v2

    iget p0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->cacheSteps:I

    int-to-float p0, p0

    mul-float/2addr v2, p0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p0

    if-eqz v0, :cond_30

    const/16 v2, 0x20f

    mul-int/2addr v2, v0

    goto :goto_32

    :cond_30
    const/16 v2, 0x11

    :goto_32
    if-eqz v1, :cond_37

    mul-int/lit8 v2, v2, 0x1f

    mul-int/2addr v2, v1

    :cond_37
    if-eqz p0, :cond_3c

    mul-int/lit8 v2, v2, 0x1f

    mul-int/2addr v2, p0

    :cond_3c
    return v2
.end method

.method private getLinearGradient()Landroid/graphics/LinearGradient;
    .registers 15

    invoke-direct {p0}, Lcom/oplus/anim/animation/content/GradientFillContent;->getGradientHash()I

    move-result v0

    iget-object v1, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->linearGradientCache:Landroidx/collection/LongSparseArray;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/LinearGradient;

    if-eqz v0, :cond_10

    return-object v0

    :cond_10
    iget-object v0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->startPointAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->endPointAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->colorAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v4}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/anim/model/content/GradientColor;

    invoke-virtual {v4}, Lcom/oplus/anim/model/content/GradientColor;->getColors()[I

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/oplus/anim/animation/content/GradientFillContent;->applyDynamicColorsIfNeeded([I)[I

    move-result-object v11

    invoke-virtual {v4}, Lcom/oplus/anim/model/content/GradientColor;->getPositions()[F

    move-result-object v12

    new-instance v4, Landroid/graphics/LinearGradient;

    iget v7, v0, Landroid/graphics/PointF;->x:F

    iget v8, v0, Landroid/graphics/PointF;->y:F

    iget v9, v1, Landroid/graphics/PointF;->x:F

    iget v10, v1, Landroid/graphics/PointF;->y:F

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v6, v4

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object p0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->linearGradientCache:Landroidx/collection/LongSparseArray;

    invoke-virtual {p0, v2, v3, v4}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    return-object v4
.end method

.method private getRadialGradient()Landroid/graphics/RadialGradient;
    .registers 14

    invoke-direct {p0}, Lcom/oplus/anim/animation/content/GradientFillContent;->getGradientHash()I

    move-result v0

    iget-object v1, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->radialGradientCache:Landroidx/collection/LongSparseArray;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RadialGradient;

    if-eqz v0, :cond_10

    return-object v0

    :cond_10
    iget-object v0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->startPointAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->endPointAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->colorAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v4}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/anim/model/content/GradientColor;

    invoke-virtual {v4}, Lcom/oplus/anim/model/content/GradientColor;->getColors()[I

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/oplus/anim/animation/content/GradientFillContent;->applyDynamicColorsIfNeeded([I)[I

    move-result-object v10

    invoke-virtual {v4}, Lcom/oplus/anim/model/content/GradientColor;->getPositions()[F

    move-result-object v11

    iget v7, v0, Landroid/graphics/PointF;->x:F

    iget v8, v0, Landroid/graphics/PointF;->y:F

    iget v0, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v7

    float-to-double v4, v0

    sub-float/2addr v1, v8

    float-to-double v0, v1

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_4d

    const v0, 0x3a83126f  # 0.001f

    :cond_4d
    move v9, v0

    new-instance v0, Landroid/graphics/RadialGradient;

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v6, v0

    invoke-direct/range {v6 .. v12}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object p0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->radialGradientCache:Landroidx/collection/LongSparseArray;

    invoke-virtual {p0, v2, v3, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public addValueCallback(Ljava/lang/Object;Lcom/oplus/anim/value/EffectiveValueCallback;)V
    .registers 5
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

    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->OPACITY:Ljava/lang/Integer;

    if-ne p1, v0, :cond_b

    iget-object p0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->opacityAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, p2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto/16 :goto_ba

    :cond_b
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_32

    iget-object p1, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->colorFilterAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz p1, :cond_19

    iget-object v0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->layer:Lcom/oplus/anim/model/layer/BaseLayer;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/model/layer/BaseLayer;->removeAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_19
    if-nez p2, :cond_1f

    iput-object v1, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->colorFilterAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    goto/16 :goto_ba

    :cond_1f
    new-instance p1, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {p1, p2}, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    iput-object p1, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->colorFilterAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    iget-object p1, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->layer:Lcom/oplus/anim/model/layer/BaseLayer;

    iget-object p0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->colorFilterAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    goto/16 :goto_ba

    :cond_32
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->GRADIENT_COLOR:[Ljava/lang/Integer;

    if-ne p1, v0, :cond_61

    iget-object p1, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->colorCallbackAnimation:Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;

    if-eqz p1, :cond_3f

    iget-object v0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->layer:Lcom/oplus/anim/model/layer/BaseLayer;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/model/layer/BaseLayer;->removeAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_3f
    if-nez p2, :cond_45

    iput-object v1, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->colorCallbackAnimation:Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;

    goto/16 :goto_ba

    :cond_45
    iget-object p1, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->linearGradientCache:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->clear()V

    iget-object p1, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->radialGradientCache:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->clear()V

    new-instance p1, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {p1, p2}, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    iput-object p1, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->colorCallbackAnimation:Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    iget-object p1, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->layer:Lcom/oplus/anim/model/layer/BaseLayer;

    iget-object p0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->colorCallbackAnimation:Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    goto :goto_ba

    :cond_61
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->BLUR_RADIUS:Ljava/lang/Float;

    if-ne p1, v0, :cond_7f

    iget-object p1, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->blurAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz p1, :cond_6d

    invoke-virtual {p1, p2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto :goto_ba

    :cond_6d
    new-instance p1, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {p1, p2}, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    iput-object p1, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->blurAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    iget-object p1, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->layer:Lcom/oplus/anim/model/layer/BaseLayer;

    iget-object p0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->blurAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    goto :goto_ba

    :cond_7f
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->DROP_SHADOW_COLOR:Ljava/lang/Integer;

    if-ne p1, v0, :cond_8b

    iget-object v0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->dropShadowAnimation:Lcom/oplus/anim/animation/keyframe/DropShadowKeyframeAnimation;

    if-eqz v0, :cond_8b

    invoke-virtual {v0, p2}, Lcom/oplus/anim/animation/keyframe/DropShadowKeyframeAnimation;->setColorCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto :goto_ba

    :cond_8b
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->DROP_SHADOW_OPACITY:Ljava/lang/Float;

    if-ne p1, v0, :cond_97

    iget-object v0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->dropShadowAnimation:Lcom/oplus/anim/animation/keyframe/DropShadowKeyframeAnimation;

    if-eqz v0, :cond_97

    invoke-virtual {v0, p2}, Lcom/oplus/anim/animation/keyframe/DropShadowKeyframeAnimation;->setOpacityCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto :goto_ba

    :cond_97
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->DROP_SHADOW_DIRECTION:Ljava/lang/Float;

    if-ne p1, v0, :cond_a3

    iget-object v0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->dropShadowAnimation:Lcom/oplus/anim/animation/keyframe/DropShadowKeyframeAnimation;

    if-eqz v0, :cond_a3

    invoke-virtual {v0, p2}, Lcom/oplus/anim/animation/keyframe/DropShadowKeyframeAnimation;->setDirectionCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto :goto_ba

    :cond_a3
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->DROP_SHADOW_DISTANCE:Ljava/lang/Float;

    if-ne p1, v0, :cond_af

    iget-object v0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->dropShadowAnimation:Lcom/oplus/anim/animation/keyframe/DropShadowKeyframeAnimation;

    if-eqz v0, :cond_af

    invoke-virtual {v0, p2}, Lcom/oplus/anim/animation/keyframe/DropShadowKeyframeAnimation;->setDistanceCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto :goto_ba

    :cond_af
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->DROP_SHADOW_RADIUS:Ljava/lang/Float;

    if-ne p1, v0, :cond_ba

    iget-object p0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->dropShadowAnimation:Lcom/oplus/anim/animation/keyframe/DropShadowKeyframeAnimation;

    if-eqz p0, :cond_ba

    invoke-virtual {p0, p2}, Lcom/oplus/anim/animation/keyframe/DropShadowKeyframeAnimation;->setRadiusCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    :cond_ba
    :goto_ba
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .registers 9

    iget-boolean v0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->hidden:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const-string v0, "GradientFillContent#draw"

    invoke-static {v0}, Lcom/oplus/anim/L;->beginSection(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    const/4 v1, 0x0

    move v2, v1

    :goto_11
    iget-object v3, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->paths:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2d

    iget-object v3, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->path:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->paths:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/anim/animation/content/PathContent;

    invoke-interface {v4}, Lcom/oplus/anim/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_2d
    iget-object v2, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->path:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v2, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->type:Lcom/oplus/anim/model/content/GradientType;

    sget-object v3, Lcom/oplus/anim/model/content/GradientType;->LINEAR:Lcom/oplus/anim/model/content/GradientType;

    if-ne v2, v3, :cond_3f

    invoke-direct {p0}, Lcom/oplus/anim/animation/content/GradientFillContent;->getLinearGradient()Landroid/graphics/LinearGradient;

    move-result-object v2

    goto :goto_43

    :cond_3f
    invoke-direct {p0}, Lcom/oplus/anim/animation/content/GradientFillContent;->getRadialGradient()Landroid/graphics/RadialGradient;

    move-result-object v2

    :goto_43
    invoke-virtual {v2, p2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object p2, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->colorFilterAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz p2, :cond_5a

    iget-object v2, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/ColorFilter;

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_5a
    iget-object p2, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->blurAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz p2, :cond_88

    invoke-virtual {p2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-nez v2, :cond_74

    iget-object v2, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_86

    :cond_74
    iget v2, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->blurMaskFilterRadius:F

    cmpl-float v2, p2, v2

    if-eqz v2, :cond_86

    new-instance v2, Landroid/graphics/BlurMaskFilter;

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, p2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iget-object v3, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    :cond_86
    :goto_86
    iput p2, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->blurMaskFilterRadius:F

    :cond_88
    iget-object p2, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->dropShadowAnimation:Lcom/oplus/anim/animation/keyframe/DropShadowKeyframeAnimation;

    if-eqz p2, :cond_91

    iget-object v2, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2, v2}, Lcom/oplus/anim/animation/keyframe/DropShadowKeyframeAnimation;->applyTo(Landroid/graphics/Paint;)V

    :cond_91
    int-to-float p2, p3

    const/high16 p3, 0x437f0000  # 255.0f

    div-float/2addr p2, p3

    iget-object v2, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->opacityAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr p2, v2

    const/high16 v2, 0x42c80000  # 100.0f

    div-float/2addr p2, v2

    mul-float/2addr p2, p3

    float-to-int p2, p2

    iget-object p3, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->paint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-static {p2, v1, v2}, Lcom/oplus/anim/utils/MiscUtils;->clamp(III)I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p2, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->path:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-static {v0}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .registers 7

    iget-object p3, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->path:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    const/4 p3, 0x0

    move v0, p3

    :goto_7
    iget-object v1, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->paths:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    iget-object v1, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->paths:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/anim/animation/content/PathContent;

    invoke-interface {v2}, Lcom/oplus/anim/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_23
    iget-object p0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->path:Landroid/graphics/Path;

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

    iget-object p0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->name:Ljava/lang/String;

    return-object p0
.end method

.method public onValueChanged()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

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

    iget-object v1, p0, Lcom/oplus/anim/animation/content/GradientFillContent;->paths:Ljava/util/List;

    check-cast v0, Lcom/oplus/anim/animation/content/PathContent;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_18
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1b
    return-void
.end method
