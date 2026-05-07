.class public abstract Lcom/oplus/anim/animation/content/BaseStrokeContent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/oplus/anim/animation/content/KeyPathElementContent;
.implements Lcom/oplus/anim/animation/content/DrawingContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;
    }
.end annotation


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

.field private final dashPatternAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final dashPatternOffsetAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
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

.field private final dashPatternValues:[F

.field private dropShadowAnimation:Lcom/oplus/anim/animation/keyframe/DropShadowKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

.field public final layer:Lcom/oplus/anim/model/layer/BaseLayer;

.field private final opacityAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final paint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private final pathGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final pm:Landroid/graphics/PathMeasure;

.field private final rect:Landroid/graphics/RectF;

.field private final trimPathPath:Landroid/graphics/Path;

.field private final widthAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
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
.method public constructor <init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLcom/oplus/anim/model/animatable/AnimatableIntegerValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Ljava/util/List;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/EffectiveAnimationDrawable;",
            "Lcom/oplus/anim/model/layer/BaseLayer;",
            "Landroid/graphics/Paint$Cap;",
            "Landroid/graphics/Paint$Join;",
            "F",
            "Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;",
            "Lcom/oplus/anim/model/animatable/AnimatableFloatValue;",
            "Ljava/util/List<",
            "Lcom/oplus/anim/model/animatable/AnimatableFloatValue;",
            ">;",
            "Lcom/oplus/anim/model/animatable/AnimatableFloatValue;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    new-instance v0, Lcom/oplus/anim/animation/LPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oplus/anim/animation/LPaint;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    iput v1, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->blurMaskFilterRadius:F

    iput-object p1, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    iput-object p2, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->layer:Lcom/oplus/anim/model/layer/BaseLayer;

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    invoke-virtual {p6}, Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->opacityAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p7}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->widthAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-nez p9, :cond_55

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_5b

    :cond_55
    invoke-virtual {p9}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    :goto_5b
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->dashPatternValues:[F

    const/4 p1, 0x0

    move p3, p1

    :goto_70
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_88

    iget-object p4, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {p8, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    invoke-virtual {p5}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p5

    invoke-interface {p4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_70

    :cond_88
    iget-object p3, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->opacityAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, p3}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    iget-object p3, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->widthAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, p3}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    move p3, p1

    :goto_93
    iget-object p4, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_a9

    iget-object p4, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, p4}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_93

    :cond_a9
    iget-object p3, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz p3, :cond_b0

    invoke-virtual {p2, p3}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_b0
    iget-object p3, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->opacityAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p3, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    iget-object p3, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->widthAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p3, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    :goto_ba
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p3

    if-ge p1, p3, :cond_ce

    iget-object p3, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p3, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_ba

    :cond_ce
    iget-object p1, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz p1, :cond_d5

    invoke-virtual {p1, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    :cond_d5
    invoke-virtual {p2}, Lcom/oplus/anim/model/layer/BaseLayer;->getBlurEffect()Lcom/oplus/anim/model/content/BlurEffect;

    move-result-object p1

    if-eqz p1, :cond_f1

    invoke-virtual {p2}, Lcom/oplus/anim/model/layer/BaseLayer;->getBlurEffect()Lcom/oplus/anim/model/content/BlurEffect;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/anim/model/content/BlurEffect;->getBlurriness()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->blurAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    iget-object p1, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->blurAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, p1}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_f1
    invoke-virtual {p2}, Lcom/oplus/anim/model/layer/BaseLayer;->getDropShadowEffect()Lcom/oplus/anim/parser/DropShadowEffect;

    move-result-object p1

    if-eqz p1, :cond_102

    new-instance p1, Lcom/oplus/anim/animation/keyframe/DropShadowKeyframeAnimation;

    invoke-virtual {p2}, Lcom/oplus/anim/model/layer/BaseLayer;->getDropShadowEffect()Lcom/oplus/anim/parser/DropShadowEffect;

    move-result-object p3

    invoke-direct {p1, p0, p2, p3}, Lcom/oplus/anim/animation/keyframe/DropShadowKeyframeAnimation;-><init>(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;Lcom/oplus/anim/model/layer/BaseLayer;Lcom/oplus/anim/parser/DropShadowEffect;)V

    iput-object p1, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->dropShadowAnimation:Lcom/oplus/anim/animation/keyframe/DropShadowKeyframeAnimation;

    :cond_102
    return-void
.end method

.method private applyDashPatternIfNeeded(Landroid/graphics/Matrix;)V
    .registers 7

    const-string v0, "StrokeContent#applyDashPattern"

    invoke-static {v0}, Lcom/oplus/anim/L;->beginSection(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-static {v0}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    return-void

    :cond_11
    invoke-static {p1}, Lcom/oplus/anim/utils/Utils;->getScale(Landroid/graphics/Matrix;)F

    move-result p1

    const/4 v1, 0x0

    :goto_16
    iget-object v2, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5c

    iget-object v2, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->dashPatternValues:[F

    iget-object v3, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v3}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v2, v1

    rem-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_45

    iget-object v2, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->dashPatternValues:[F

    aget v3, v2, v1

    const/high16 v4, 0x3f800000  # 1.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_52

    aput v4, v2, v1

    goto :goto_52

    :cond_45
    iget-object v2, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->dashPatternValues:[F

    aget v3, v2, v1

    const v4, 0x3dcccccd  # 0.1f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_52

    aput v4, v2, v1

    :cond_52
    :goto_52
    iget-object v2, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->dashPatternValues:[F

    aget v3, v2, v1

    mul-float/2addr v3, p1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_5c
    iget-object v1, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-nez v1, :cond_62

    const/4 p1, 0x0

    goto :goto_6d

    :cond_62
    invoke-virtual {v1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr p1, v1

    :goto_6d
    iget-object v1, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/DashPathEffect;

    iget-object p0, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->dashPatternValues:[F

    invoke-direct {v2, p0, p1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    invoke-static {v0}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    return-void
.end method

.method private applyTrimPath(Landroid/graphics/Canvas;Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;Landroid/graphics/Matrix;)V
    .registers 16

    const-string v0, "StrokeContent#applyTrimPath"

    invoke-static {v0}, Lcom/oplus/anim/L;->beginSection(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;->access$200(Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;)Lcom/oplus/anim/animation/content/TrimPathContent;

    move-result-object v1

    if-nez v1, :cond_f

    invoke-static {v0}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    return-void

    :cond_f
    iget-object v1, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    invoke-static {p2}, Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1e
    if-ltz v1, :cond_36

    iget-object v2, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-static {p2}, Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/anim/animation/content/PathContent;

    invoke-interface {v3}, Lcom/oplus/anim/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1e

    :cond_36
    iget-object v1, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    iget-object v2, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    iget-object v1, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v1

    :goto_44
    iget-object v2, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v2

    if-eqz v2, :cond_54

    iget-object v2, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v2

    add-float/2addr v1, v2

    goto :goto_44

    :cond_54
    invoke-static {p2}, Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;->access$200(Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;)Lcom/oplus/anim/animation/content/TrimPathContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/anim/animation/content/TrimPathContent;->getOffset()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float/2addr v2, v1

    const/high16 v4, 0x43b40000  # 360.0f

    div-float/2addr v2, v4

    invoke-static {p2}, Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;->access$200(Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;)Lcom/oplus/anim/animation/content/TrimPathContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/anim/animation/content/TrimPathContent;->getStart()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/high16 v5, 0x42c80000  # 100.0f

    div-float/2addr v4, v5

    mul-float/2addr v4, v1

    add-float/2addr v4, v2

    invoke-static {p2}, Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;->access$200(Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;)Lcom/oplus/anim/animation/content/TrimPathContent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oplus/anim/animation/content/TrimPathContent;->getEnd()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    div-float/2addr v6, v5

    mul-float/2addr v6, v1

    add-float/2addr v6, v2

    invoke-static {p2}, Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v5, 0x0

    move v7, v5

    :goto_a2
    if-ltz v2, :cond_134

    iget-object v8, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    invoke-static {p2}, Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oplus/anim/animation/content/PathContent;

    invoke-interface {v9}, Lcom/oplus/anim/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object v8, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    invoke-virtual {v8, p3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v8, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    iget-object v9, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    invoke-virtual {v8, v9, v3}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    iget-object v8, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    invoke-virtual {v8}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v8

    cmpl-float v9, v6, v1

    const/high16 v10, 0x3f800000  # 1.0f

    if-lez v9, :cond_f6

    sub-float v9, v6, v1

    add-float v11, v7, v8

    cmpg-float v11, v9, v11

    if-gez v11, :cond_f6

    cmpg-float v11, v7, v9

    if-gez v11, :cond_f6

    cmpl-float v11, v4, v1

    if-lez v11, :cond_e3

    sub-float v11, v4, v1

    div-float/2addr v11, v8

    goto :goto_e4

    :cond_e3
    move v11, v5

    :goto_e4
    div-float/2addr v9, v8

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    iget-object v10, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    invoke-static {v10, v11, v9, v5}, Lcom/oplus/anim/utils/Utils;->applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V

    iget-object v9, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    iget-object v10, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_12f

    :cond_f6
    add-float v9, v7, v8

    cmpg-float v11, v9, v4

    if-ltz v11, :cond_12f

    cmpl-float v11, v7, v6

    if-lez v11, :cond_101

    goto :goto_12f

    :cond_101
    cmpg-float v11, v9, v6

    if-gtz v11, :cond_111

    cmpg-float v11, v4, v7

    if-gez v11, :cond_111

    iget-object v9, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    iget-object v10, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_12f

    :cond_111
    cmpg-float v11, v4, v7

    if-gez v11, :cond_117

    move v11, v5

    goto :goto_11a

    :cond_117
    sub-float v11, v4, v7

    div-float/2addr v11, v8

    :goto_11a
    cmpl-float v9, v6, v9

    if-lez v9, :cond_11f

    goto :goto_123

    :cond_11f
    sub-float v9, v6, v7

    div-float v10, v9, v8

    :goto_123
    iget-object v9, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    invoke-static {v9, v11, v10, v5}, Lcom/oplus/anim/utils/Utils;->applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V

    iget-object v9, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    iget-object v10, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_12f
    :goto_12f
    add-float/2addr v7, v8

    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_a2

    :cond_134
    invoke-static {v0}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    return-void
.end method


# virtual methods
.method public addValueCallback(Ljava/lang/Object;Lcom/oplus/anim/value/EffectiveValueCallback;)V
    .registers 4
    .param p2  # Lcom/oplus/anim/value/EffectiveValueCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

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

    iget-object p0, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->opacityAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, p2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto/16 :goto_95

    :cond_b
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->STROKE_WIDTH:Ljava/lang/Float;

    if-ne p1, v0, :cond_16

    iget-object p0, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->widthAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, p2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto/16 :goto_95

    :cond_16
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_3c

    iget-object p1, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->colorFilterAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz p1, :cond_23

    iget-object v0, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->layer:Lcom/oplus/anim/model/layer/BaseLayer;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/model/layer/BaseLayer;->removeAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_23
    if-nez p2, :cond_2a

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->colorFilterAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    goto/16 :goto_95

    :cond_2a
    new-instance p1, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {p1, p2}, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    iput-object p1, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->colorFilterAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    iget-object p1, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->layer:Lcom/oplus/anim/model/layer/BaseLayer;

    iget-object p0, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->colorFilterAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    goto :goto_95

    :cond_3c
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->BLUR_RADIUS:Ljava/lang/Float;

    if-ne p1, v0, :cond_5a

    iget-object p1, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->blurAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz p1, :cond_48

    invoke-virtual {p1, p2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto :goto_95

    :cond_48
    new-instance p1, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {p1, p2}, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    iput-object p1, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->blurAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    iget-object p1, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->layer:Lcom/oplus/anim/model/layer/BaseLayer;

    iget-object p0, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->blurAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    goto :goto_95

    :cond_5a
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->DROP_SHADOW_COLOR:Ljava/lang/Integer;

    if-ne p1, v0, :cond_66

    iget-object v0, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->dropShadowAnimation:Lcom/oplus/anim/animation/keyframe/DropShadowKeyframeAnimation;

    if-eqz v0, :cond_66

    invoke-virtual {v0, p2}, Lcom/oplus/anim/animation/keyframe/DropShadowKeyframeAnimation;->setColorCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto :goto_95

    :cond_66
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->DROP_SHADOW_OPACITY:Ljava/lang/Float;

    if-ne p1, v0, :cond_72

    iget-object v0, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->dropShadowAnimation:Lcom/oplus/anim/animation/keyframe/DropShadowKeyframeAnimation;

    if-eqz v0, :cond_72

    invoke-virtual {v0, p2}, Lcom/oplus/anim/animation/keyframe/DropShadowKeyframeAnimation;->setOpacityCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto :goto_95

    :cond_72
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->DROP_SHADOW_DIRECTION:Ljava/lang/Float;

    if-ne p1, v0, :cond_7e

    iget-object v0, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->dropShadowAnimation:Lcom/oplus/anim/animation/keyframe/DropShadowKeyframeAnimation;

    if-eqz v0, :cond_7e

    invoke-virtual {v0, p2}, Lcom/oplus/anim/animation/keyframe/DropShadowKeyframeAnimation;->setDirectionCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto :goto_95

    :cond_7e
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->DROP_SHADOW_DISTANCE:Ljava/lang/Float;

    if-ne p1, v0, :cond_8a

    iget-object v0, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->dropShadowAnimation:Lcom/oplus/anim/animation/keyframe/DropShadowKeyframeAnimation;

    if-eqz v0, :cond_8a

    invoke-virtual {v0, p2}, Lcom/oplus/anim/animation/keyframe/DropShadowKeyframeAnimation;->setDistanceCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto :goto_95

    :cond_8a
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->DROP_SHADOW_RADIUS:Ljava/lang/Float;

    if-ne p1, v0, :cond_95

    iget-object p0, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->dropShadowAnimation:Lcom/oplus/anim/animation/keyframe/DropShadowKeyframeAnimation;

    if-eqz p0, :cond_95

    invoke-virtual {p0, p2}, Lcom/oplus/anim/animation/keyframe/DropShadowKeyframeAnimation;->setRadiusCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    :cond_95
    :goto_95
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .registers 10

    const-string v0, "StrokeContent#draw"

    invoke-static {v0}, Lcom/oplus/anim/L;->beginSection(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/oplus/anim/utils/Utils;->hasZeroScaleAxis(Landroid/graphics/Matrix;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {v0}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    return-void

    :cond_f
    int-to-float p3, p3

    const/high16 v1, 0x437f0000  # 255.0f

    div-float/2addr p3, v1

    iget-object v2, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->opacityAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    check-cast v2, Lcom/oplus/anim/animation/keyframe/IntegerKeyframeAnimation;

    invoke-virtual {v2}, Lcom/oplus/anim/animation/keyframe/IntegerKeyframeAnimation;->getIntValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr p3, v2

    const/high16 v2, 0x42c80000  # 100.0f

    div-float/2addr p3, v2

    mul-float/2addr p3, v1

    float-to-int p3, p3

    iget-object v1, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    const/4 v3, 0x0

    invoke-static {p3, v3, v2}, Lcom/oplus/anim/utils/MiscUtils;->clamp(III)I

    move-result p3

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p3, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->widthAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    check-cast v1, Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v1}, Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result v1

    invoke-static {p2}, Lcom/oplus/anim/utils/Utils;->getScale(Landroid/graphics/Matrix;)F

    move-result v2

    mul-float/2addr v2, v1

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p3, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p3

    const/4 v1, 0x0

    cmpg-float p3, p3, v1

    if-gtz p3, :cond_4f

    invoke-static {v0}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    return-void

    :cond_4f
    invoke-direct {p0, p2}, Lcom/oplus/anim/animation/content/BaseStrokeContent;->applyDashPatternIfNeeded(Landroid/graphics/Matrix;)V

    iget-object p3, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->colorFilterAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz p3, :cond_61

    iget-object v2, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p3}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/ColorFilter;

    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_61
    iget-object p3, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->blurAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz p3, :cond_8d

    invoke-virtual {p3}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    cmpl-float v1, p3, v1

    if-nez v1, :cond_7a

    iget-object v1, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_8b

    :cond_7a
    iget v1, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->blurMaskFilterRadius:F

    cmpl-float v1, p3, v1

    if-eqz v1, :cond_8b

    iget-object v1, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->layer:Lcom/oplus/anim/model/layer/BaseLayer;

    invoke-virtual {v1, p3}, Lcom/oplus/anim/model/layer/BaseLayer;->getBlurMaskFilter(F)Landroid/graphics/BlurMaskFilter;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    :cond_8b
    :goto_8b
    iput p3, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->blurMaskFilterRadius:F

    :cond_8d
    iget-object p3, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->dropShadowAnimation:Lcom/oplus/anim/animation/keyframe/DropShadowKeyframeAnimation;

    if-eqz p3, :cond_96

    iget-object v1, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p3, v1}, Lcom/oplus/anim/animation/keyframe/DropShadowKeyframeAnimation;->applyTo(Landroid/graphics/Paint;)V

    :cond_96
    :goto_96
    iget-object p3, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge v3, p3, :cond_f1

    iget-object p3, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;

    invoke-static {p3}, Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;->access$200(Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;)Lcom/oplus/anim/animation/content/TrimPathContent;

    move-result-object v1

    if-eqz v1, :cond_b0

    invoke-direct {p0, p1, p3, p2}, Lcom/oplus/anim/animation/content/BaseStrokeContent;->applyTrimPath(Landroid/graphics/Canvas;Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;Landroid/graphics/Matrix;)V

    goto :goto_ee

    :cond_b0
    const-string v1, "StrokeContent#buildPath"

    invoke-static {v1}, Lcom/oplus/anim/L;->beginSection(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    invoke-static {p3}, Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_c4
    if-ltz v2, :cond_dc

    iget-object v4, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-static {p3}, Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/anim/animation/content/PathContent;

    invoke-interface {v5}, Lcom/oplus/anim/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_c4

    :cond_dc
    invoke-static {v1}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    const-string p3, "StrokeContent#drawPath"

    invoke-static {p3}, Lcom/oplus/anim/L;->beginSection(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-static {p3}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    :goto_ee
    add-int/lit8 v3, v3, 0x1

    goto :goto_96

    :cond_f1
    invoke-static {v0}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .registers 10

    const-string p3, "StrokeContent#getBounds"

    invoke-static {p3}, Lcom/oplus/anim/L;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    const/4 v0, 0x0

    move v1, v0

    :goto_c
    iget-object v2, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_40

    iget-object v2, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;

    move v3, v0

    :goto_1d
    invoke-static {v2}, Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3d

    iget-object v4, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-static {v2}, Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/anim/animation/content/PathContent;

    invoke-interface {v5}, Lcom/oplus/anim/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_40
    iget-object p2, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object p2, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->widthAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    check-cast p2, Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {p2}, Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result p2

    iget-object v0, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr p2, v2

    sub-float/2addr v1, p2

    iget v2, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, p2

    iget v3, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, p2

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p0, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget p0, p1, Landroid/graphics/RectF;->left:F

    const/high16 p2, 0x3f800000  # 1.0f

    sub-float/2addr p0, p2

    iget v0, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p2

    iget v1, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p2

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, p2

    invoke-virtual {p1, p0, v0, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-static {p3}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    return-void
.end method

.method public onValueChanged()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

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
    .registers 10
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

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move-object v2, v1

    :goto_8
    if-ltz v0, :cond_22

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/anim/animation/content/Content;

    instance-of v4, v3, Lcom/oplus/anim/animation/content/TrimPathContent;

    if-eqz v4, :cond_1f

    check-cast v3, Lcom/oplus/anim/animation/content/TrimPathContent;

    invoke-virtual {v3}, Lcom/oplus/anim/animation/content/TrimPathContent;->getType()Lcom/oplus/anim/model/content/ShapeTrimPath$Type;

    move-result-object v4

    sget-object v5, Lcom/oplus/anim/model/content/ShapeTrimPath$Type;->INDIVIDUALLY:Lcom/oplus/anim/model/content/ShapeTrimPath$Type;

    if-ne v4, v5, :cond_1f

    move-object v2, v3

    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_22
    if-eqz v2, :cond_27

    invoke-virtual {v2, p0}, Lcom/oplus/anim/animation/content/TrimPathContent;->addListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    :cond_27
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    move-object v0, v1

    :goto_2e
    if-ltz p1, :cond_6c

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/anim/animation/content/Content;

    instance-of v4, v3, Lcom/oplus/anim/animation/content/TrimPathContent;

    if-eqz v4, :cond_55

    move-object v4, v3

    check-cast v4, Lcom/oplus/anim/animation/content/TrimPathContent;

    invoke-virtual {v4}, Lcom/oplus/anim/animation/content/TrimPathContent;->getType()Lcom/oplus/anim/model/content/ShapeTrimPath$Type;

    move-result-object v5

    sget-object v6, Lcom/oplus/anim/model/content/ShapeTrimPath$Type;->INDIVIDUALLY:Lcom/oplus/anim/model/content/ShapeTrimPath$Type;

    if-ne v5, v6, :cond_55

    if-eqz v0, :cond_4c

    iget-object v3, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4c
    new-instance v0, Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;

    invoke-direct {v0, v4, v1}, Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;-><init>(Lcom/oplus/anim/animation/content/TrimPathContent;Lcom/oplus/anim/animation/content/BaseStrokeContent$1;)V

    invoke-virtual {v4, p0}, Lcom/oplus/anim/animation/content/TrimPathContent;->addListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    goto :goto_69

    :cond_55
    instance-of v4, v3, Lcom/oplus/anim/animation/content/PathContent;

    if-eqz v4, :cond_69

    if-nez v0, :cond_60

    new-instance v0, Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;

    invoke-direct {v0, v2, v1}, Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;-><init>(Lcom/oplus/anim/animation/content/TrimPathContent;Lcom/oplus/anim/animation/content/BaseStrokeContent$1;)V

    :cond_60
    invoke-static {v0}, Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v4

    check-cast v3, Lcom/oplus/anim/animation/content/PathContent;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_69
    :goto_69
    add-int/lit8 p1, p1, -0x1

    goto :goto_2e

    :cond_6c
    if-eqz v0, :cond_73

    iget-object p0, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_73
    return-void
.end method
