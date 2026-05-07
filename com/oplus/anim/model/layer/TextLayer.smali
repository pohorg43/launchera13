.class public Lcom/oplus/anim/model/layer/TextLayer;
.super Lcom/oplus/anim/model/layer/BaseLayer;
.source ""


# instance fields
.field private final codePointCache:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private colorAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
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

.field private colorCallbackAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
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

.field private final composition:Lcom/oplus/anim/EffectiveAnimationComposition;

.field private final contentsForCharacter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/oplus/anim/model/FontCharacter;",
            "Ljava/util/List<",
            "Lcom/oplus/anim/animation/content/ContentGroup;",
            ">;>;"
        }
    .end annotation
.end field

.field private final effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

.field private final fillPaint:Landroid/graphics/Paint;

.field private final matrix:Landroid/graphics/Matrix;

.field private final rectF:Landroid/graphics/RectF;

.field private final stringBuilder:Ljava/lang/StringBuilder;

.field private strokeColorAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
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

.field private strokeColorCallbackAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
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

.field private final strokePaint:Landroid/graphics/Paint;

.field private strokeWidthAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
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

.field private strokeWidthCallbackAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
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

.field private final textAnimation:Lcom/oplus/anim/animation/keyframe/TextKeyframeAnimation;

.field private textSizeCallbackAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
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

.field private trackingAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
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

.field private trackingCallbackAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
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

.field private typefaceCallbackAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Landroid/graphics/Typeface;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/Layer;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/oplus/anim/model/layer/BaseLayer;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/Layer;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/anim/model/layer/TextLayer;->stringBuilder:Ljava/lang/StringBuilder;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/model/layer/TextLayer;->rectF:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    new-instance v0, Lcom/oplus/anim/model/layer/TextLayer$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/oplus/anim/model/layer/TextLayer$1;-><init>(Lcom/oplus/anim/model/layer/TextLayer;I)V

    iput-object v0, p0, Lcom/oplus/anim/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    new-instance v0, Lcom/oplus/anim/model/layer/TextLayer$2;

    invoke-direct {v0, p0, v1}, Lcom/oplus/anim/model/layer/TextLayer$2;-><init>(Lcom/oplus/anim/model/layer/TextLayer;I)V

    iput-object v0, p0, Lcom/oplus/anim/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/model/layer/TextLayer;->contentsForCharacter:Ljava/util/Map;

    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/model/layer/TextLayer;->codePointCache:Landroidx/collection/LongSparseArray;

    iput-object p1, p0, Lcom/oplus/anim/model/layer/TextLayer;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p2}, Lcom/oplus/anim/model/layer/Layer;->getComposition()Lcom/oplus/anim/EffectiveAnimationComposition;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/anim/model/layer/TextLayer;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {p2}, Lcom/oplus/anim/model/layer/Layer;->getText()Lcom/oplus/anim/model/animatable/AnimatableTextFrame;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/anim/model/animatable/AnimatableTextFrame;->createAnimation()Lcom/oplus/anim/animation/keyframe/TextKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/anim/model/layer/TextLayer;->textAnimation:Lcom/oplus/anim/animation/keyframe/TextKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    invoke-virtual {p0, p1}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    invoke-virtual {p2}, Lcom/oplus/anim/model/layer/Layer;->getTextProperties()Lcom/oplus/anim/model/animatable/AnimatableTextProperties;

    move-result-object p1

    if-eqz p1, :cond_66

    iget-object p2, p1, Lcom/oplus/anim/model/animatable/AnimatableTextProperties;->color:Lcom/oplus/anim/model/animatable/AnimatableColorValue;

    if-eqz p2, :cond_66

    invoke-virtual {p2}, Lcom/oplus/anim/model/animatable/AnimatableColorValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/anim/model/layer/TextLayer;->colorAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    iget-object p2, p0, Lcom/oplus/anim/model/layer/TextLayer;->colorAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, p2}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_66
    if-eqz p1, :cond_7a

    iget-object p2, p1, Lcom/oplus/anim/model/animatable/AnimatableTextProperties;->stroke:Lcom/oplus/anim/model/animatable/AnimatableColorValue;

    if-eqz p2, :cond_7a

    invoke-virtual {p2}, Lcom/oplus/anim/model/animatable/AnimatableColorValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/anim/model/layer/TextLayer;->strokeColorAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    iget-object p2, p0, Lcom/oplus/anim/model/layer/TextLayer;->strokeColorAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, p2}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_7a
    if-eqz p1, :cond_8e

    iget-object p2, p1, Lcom/oplus/anim/model/animatable/AnimatableTextProperties;->strokeWidth:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    if-eqz p2, :cond_8e

    invoke-virtual {p2}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/anim/model/layer/TextLayer;->strokeWidthAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    iget-object p2, p0, Lcom/oplus/anim/model/layer/TextLayer;->strokeWidthAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, p2}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_8e
    if-eqz p1, :cond_a2

    iget-object p1, p1, Lcom/oplus/anim/model/animatable/AnimatableTextProperties;->tracking:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    if-eqz p1, :cond_a2

    invoke-virtual {p1}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/anim/model/layer/TextLayer;->trackingAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    iget-object p1, p0, Lcom/oplus/anim/model/layer/TextLayer;->trackingAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_a2
    return-void
.end method

.method private applyJustification(Lcom/oplus/anim/model/DocumentData$Justification;Landroid/graphics/Canvas;F)V
    .registers 5

    sget-object p0, Lcom/oplus/anim/model/layer/TextLayer$3;->$SwitchMap$com$oplus$anim$model$DocumentData$Justification:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x2

    const/4 v0, 0x0

    if-eq p0, p1, :cond_18

    const/4 p1, 0x3

    if-eq p0, p1, :cond_10

    goto :goto_1c

    :cond_10
    neg-float p0, p3

    const/high16 p1, 0x40000000  # 2.0f

    div-float/2addr p0, p1

    invoke-virtual {p2, p0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1c

    :cond_18
    neg-float p0, p3

    invoke-virtual {p2, p0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_1c
    return-void
.end method

.method private codePointToString(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8

    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v1, p2

    :goto_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_23

    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/oplus/anim/model/layer/TextLayer;->isModifier(I)Z

    move-result v3

    if-nez v3, :cond_1a

    goto :goto_23

    :cond_1a
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    goto :goto_9

    :cond_23
    :goto_23
    iget-object v2, p0, Lcom/oplus/anim/model/layer/TextLayer;->codePointCache:Landroidx/collection/LongSparseArray;

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Landroidx/collection/LongSparseArray;->containsKey(J)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object p0, p0, Lcom/oplus/anim/model/layer/TextLayer;->codePointCache:Landroidx/collection/LongSparseArray;

    invoke-virtual {p0, v3, v4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_35
    iget-object v0, p0, Lcom/oplus/anim/model/layer/TextLayer;->stringBuilder:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_3b
    if-ge p2, v1, :cond_4c

    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    iget-object v2, p0, Lcom/oplus/anim/model/layer/TextLayer;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_3b

    :cond_4c
    iget-object p1, p0, Lcom/oplus/anim/model/layer/TextLayer;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/anim/model/layer/TextLayer;->codePointCache:Landroidx/collection/LongSparseArray;

    invoke-virtual {p0, v3, v4, p1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    return-object p1
.end method

.method private drawCharacter(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .registers 11

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object p0

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne p0, v0, :cond_19

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_19

    return-void

    :cond_19
    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p3

    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawCharacterAsGlyph(Lcom/oplus/anim/model/FontCharacter;Landroid/graphics/Matrix;FLcom/oplus/anim/model/DocumentData;Landroid/graphics/Canvas;)V
    .registers 13

    invoke-direct {p0, p1}, Lcom/oplus/anim/model/layer/TextLayer;->getContentsForCharacter(Lcom/oplus/anim/model/FontCharacter;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_54

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/anim/animation/content/ContentGroup;

    invoke-virtual {v2}, Lcom/oplus/anim/animation/content/ContentGroup;->getPath()Landroid/graphics/Path;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/anim/model/layer/TextLayer;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v3, p0, Lcom/oplus/anim/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v3, p0, Lcom/oplus/anim/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    const/4 v4, 0x0

    iget v5, p4, Lcom/oplus/anim/model/DocumentData;->baselineShift:F

    neg-float v5, v5

    invoke-static {}, Lcom/oplus/anim/utils/Utils;->dpScale()F

    move-result v6

    mul-float/2addr v6, v5

    invoke-virtual {v3, v4, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v3, p0, Lcom/oplus/anim/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, p3, p3}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v3, p0, Lcom/oplus/anim/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-boolean v3, p4, Lcom/oplus/anim/model/DocumentData;->strokeOverFill:Z

    if-eqz v3, :cond_47

    iget-object v3, p0, Lcom/oplus/anim/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, p5}, Lcom/oplus/anim/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    iget-object v3, p0, Lcom/oplus/anim/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, p5}, Lcom/oplus/anim/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_51

    :cond_47
    iget-object v3, p0, Lcom/oplus/anim/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, p5}, Lcom/oplus/anim/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    iget-object v3, p0, Lcom/oplus/anim/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, p5}, Lcom/oplus/anim/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    :goto_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_54
    return-void
.end method

.method private drawCharacterFromFont(Ljava/lang/String;Lcom/oplus/anim/model/DocumentData;Landroid/graphics/Canvas;)V
    .registers 4

    iget-boolean p2, p2, Lcom/oplus/anim/model/DocumentData;->strokeOverFill:Z

    if-eqz p2, :cond_f

    iget-object p2, p0, Lcom/oplus/anim/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/anim/model/layer/TextLayer;->drawCharacter(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    iget-object p2, p0, Lcom/oplus/anim/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/anim/model/layer/TextLayer;->drawCharacter(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_19

    :cond_f
    iget-object p2, p0, Lcom/oplus/anim/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/anim/model/layer/TextLayer;->drawCharacter(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    iget-object p2, p0, Lcom/oplus/anim/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/anim/model/layer/TextLayer;->drawCharacter(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    :goto_19
    return-void
.end method

.method private drawFontTextLine(Ljava/lang/String;Lcom/oplus/anim/model/DocumentData;Landroid/graphics/Canvas;F)V
    .registers 8

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1f

    invoke-direct {p0, p1, v0}, Lcom/oplus/anim/model/layer/TextLayer;->codePointToString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    invoke-direct {p0, v1, p2, p3}, Lcom/oplus/anim/model/layer/TextLayer;->drawCharacterFromFont(Ljava/lang/String;Lcom/oplus/anim/model/DocumentData;Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/oplus/anim/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    add-float/2addr v1, p4

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    :cond_1f
    return-void
.end method

.method private drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .registers 5

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object p0

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne p0, v0, :cond_19

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_19

    return-void

    :cond_19
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawGlyphTextLine(Ljava/lang/String;Lcom/oplus/anim/model/DocumentData;Landroid/graphics/Matrix;Lcom/oplus/anim/model/Font;Landroid/graphics/Canvas;FF)V
    .registers 16

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_69

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p4}, Lcom/oplus/anim/model/Font;->getFamily()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4}, Lcom/oplus/anim/model/Font;->getStyle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oplus/anim/model/FontCharacter;->hashFor(CLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/oplus/anim/model/layer/TextLayer;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v2}, Lcom/oplus/anim/EffectiveAnimationComposition;->getCharacters()Landroidx/collection/SparseArrayCompat;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/anim/model/FontCharacter;

    if-nez v1, :cond_26

    goto :goto_66

    :cond_26
    move-object v2, p0

    move-object v3, v1

    move-object v4, p3

    move v5, p7

    move-object v6, p2

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/oplus/anim/model/layer/TextLayer;->drawCharacterAsGlyph(Lcom/oplus/anim/model/FontCharacter;Landroid/graphics/Matrix;FLcom/oplus/anim/model/DocumentData;Landroid/graphics/Canvas;)V

    invoke-virtual {v1}, Lcom/oplus/anim/model/FontCharacter;->getWidth()D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v1, p7

    invoke-static {}, Lcom/oplus/anim/utils/Utils;->dpScale()F

    move-result v2

    mul-float/2addr v2, v1

    mul-float/2addr v2, p6

    iget v1, p2, Lcom/oplus/anim/model/DocumentData;->tracking:I

    int-to-float v1, v1

    const/high16 v3, 0x41200000  # 10.0f

    div-float/2addr v1, v3

    iget-object v3, p0, Lcom/oplus/anim/model/layer/TextLayer;->trackingCallbackAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v3, :cond_51

    invoke-virtual {v3}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    :goto_4f
    add-float/2addr v1, v3

    goto :goto_60

    :cond_51
    iget-object v3, p0, Lcom/oplus/anim/model/layer/TextLayer;->trackingAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v3, :cond_60

    invoke-virtual {v3}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_4f

    :cond_60
    :goto_60
    mul-float/2addr v1, p6

    add-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p5, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_66
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_69
    return-void
.end method

.method private drawTextGlyphs(Lcom/oplus/anim/model/DocumentData;Landroid/graphics/Matrix;Lcom/oplus/anim/model/Font;Landroid/graphics/Canvas;)V
    .registers 22

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    iget-object v0, v8, Lcom/oplus/anim/model/layer/TextLayer;->textSizeCallbackAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_17

    :cond_15
    iget v0, v9, Lcom/oplus/anim/model/DocumentData;->size:F

    :goto_17
    const/high16 v1, 0x42c80000  # 100.0f

    div-float v11, v0, v1

    invoke-static/range {p2 .. p2}, Lcom/oplus/anim/utils/Utils;->getScale(Landroid/graphics/Matrix;)F

    move-result v12

    iget-object v0, v9, Lcom/oplus/anim/model/DocumentData;->text:Ljava/lang/String;

    iget v1, v9, Lcom/oplus/anim/model/DocumentData;->lineHeight:F

    invoke-static {}, Lcom/oplus/anim/utils/Utils;->dpScale()F

    move-result v2

    mul-float v13, v2, v1

    invoke-direct {v8, v0}, Lcom/oplus/anim/model/layer/TextLayer;->getTextLines(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    const/4 v0, 0x0

    move v7, v0

    :goto_33
    if-ge v7, v15, :cond_6f

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    move-object/from16 v6, p3

    invoke-direct {v8, v1, v6, v11, v12}, Lcom/oplus/anim/model/layer/TextLayer;->getTextLineWidthForGlyphs(Ljava/lang/String;Lcom/oplus/anim/model/Font;FF)F

    move-result v0

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Canvas;->save()I

    iget-object v2, v9, Lcom/oplus/anim/model/DocumentData;->justification:Lcom/oplus/anim/model/DocumentData$Justification;

    invoke-direct {v8, v2, v10, v0}, Lcom/oplus/anim/model/layer/TextLayer;->applyJustification(Lcom/oplus/anim/model/DocumentData$Justification;Landroid/graphics/Canvas;F)V

    add-int/lit8 v0, v15, -0x1

    int-to-float v0, v0

    mul-float/2addr v0, v13

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v0, v2

    int-to-float v2, v7

    mul-float/2addr v2, v13

    sub-float/2addr v2, v0

    const/4 v0, 0x0

    invoke-virtual {v10, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move v6, v12

    move/from16 v16, v7

    move v7, v11

    invoke-direct/range {v0 .. v7}, Lcom/oplus/anim/model/layer/TextLayer;->drawGlyphTextLine(Ljava/lang/String;Lcom/oplus/anim/model/DocumentData;Landroid/graphics/Matrix;Lcom/oplus/anim/model/Font;Landroid/graphics/Canvas;FF)V

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v7, v16, 0x1

    goto :goto_33

    :cond_6f
    return-void
.end method

.method private drawTextWithFont(Lcom/oplus/anim/model/DocumentData;Lcom/oplus/anim/model/Font;Landroid/graphics/Canvas;)V
    .registers 11

    invoke-virtual {p2}, Lcom/oplus/anim/model/Font;->getFamily()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_26

    invoke-virtual {p2}, Lcom/oplus/anim/model/Font;->getFamily()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ColorFont"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2}, Lcom/oplus/anim/model/Font;->getStyle()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/oplus/anim/utils/Utils;->createTypefaceForStyle(Landroid/graphics/Typeface;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    goto :goto_2a

    :cond_26
    invoke-direct {p0, p2}, Lcom/oplus/anim/model/layer/TextLayer;->getTypeface(Lcom/oplus/anim/model/Font;)Landroid/graphics/Typeface;

    move-result-object p2

    :goto_2a
    if-nez p2, :cond_2d

    return-void

    :cond_2d
    iget-object v0, p1, Lcom/oplus/anim/model/DocumentData;->text:Ljava/lang/String;

    iget-object v2, p0, Lcom/oplus/anim/model/layer/TextLayer;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v2}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getTextDelegate()Lcom/oplus/anim/TextDelegate;

    move-result-object v2

    if-eqz v2, :cond_3f

    invoke-virtual {p0}, Lcom/oplus/anim/model/layer/BaseLayer;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/oplus/anim/TextDelegate;->getTextInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3f
    iget-object v2, p0, Lcom/oplus/anim/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p2, p0, Lcom/oplus/anim/model/layer/TextLayer;->textSizeCallbackAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz p2, :cond_53

    invoke-virtual {p2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    goto :goto_55

    :cond_53
    iget p2, p1, Lcom/oplus/anim/model/DocumentData;->size:F

    :goto_55
    iget-object v2, p0, Lcom/oplus/anim/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/oplus/anim/utils/Utils;->dpScale()F

    move-result v3

    mul-float/2addr v3, p2

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, p0, Lcom/oplus/anim/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/oplus/anim/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v2, p0, Lcom/oplus/anim/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/oplus/anim/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v2, p1, Lcom/oplus/anim/model/DocumentData;->lineHeight:F

    invoke-static {}, Lcom/oplus/anim/utils/Utils;->dpScale()F

    move-result v3

    mul-float/2addr v3, v2

    iget v2, p1, Lcom/oplus/anim/model/DocumentData;->tracking:I

    int-to-float v2, v2

    const/high16 v4, 0x41200000  # 10.0f

    div-float/2addr v2, v4

    iget-object v4, p0, Lcom/oplus/anim/model/layer/TextLayer;->trackingCallbackAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v4, :cond_92

    invoke-virtual {v4}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    :goto_90
    add-float/2addr v2, v4

    goto :goto_a1

    :cond_92
    iget-object v4, p0, Lcom/oplus/anim/model/layer/TextLayer;->trackingAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v4, :cond_a1

    invoke-virtual {v4}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    goto :goto_90

    :cond_a1
    :goto_a1
    invoke-static {}, Lcom/oplus/anim/utils/Utils;->dpScale()F

    move-result v4

    mul-float/2addr v4, v2

    mul-float/2addr v4, p2

    const/high16 p2, 0x42c80000  # 100.0f

    div-float/2addr v4, p2

    invoke-direct {p0, v0}, Lcom/oplus/anim/model/layer/TextLayer;->getTextLines(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    :goto_b2
    if-ge v1, v0, :cond_e8

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v5, p0, Lcom/oplus/anim/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    mul-float/2addr v6, v4

    add-float/2addr v6, v5

    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    iget-object v5, p1, Lcom/oplus/anim/model/DocumentData;->justification:Lcom/oplus/anim/model/DocumentData$Justification;

    invoke-direct {p0, v5, p3, v6}, Lcom/oplus/anim/model/layer/TextLayer;->applyJustification(Lcom/oplus/anim/model/DocumentData$Justification;Landroid/graphics/Canvas;F)V

    add-int/lit8 v5, v0, -0x1

    int-to-float v5, v5

    mul-float/2addr v5, v3

    const/high16 v6, 0x40000000  # 2.0f

    div-float/2addr v5, v6

    int-to-float v6, v1

    mul-float/2addr v6, v3

    sub-float/2addr v6, v5

    const/4 v5, 0x0

    invoke-virtual {p3, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct {p0, v2, p1, p3, v4}, Lcom/oplus/anim/model/layer/TextLayer;->drawFontTextLine(Ljava/lang/String;Lcom/oplus/anim/model/DocumentData;Landroid/graphics/Canvas;F)V

    invoke-virtual {p3}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b2

    :cond_e8
    return-void
.end method

.method private getContentsForCharacter(Lcom/oplus/anim/model/FontCharacter;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/model/FontCharacter;",
            ")",
            "Ljava/util/List<",
            "Lcom/oplus/anim/animation/content/ContentGroup;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/anim/model/layer/TextLayer;->contentsForCharacter:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object p0, p0, Lcom/oplus/anim/model/layer/TextLayer;->contentsForCharacter:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_11
    invoke-virtual {p1}, Lcom/oplus/anim/model/FontCharacter;->getShapes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_1f
    if-ge v3, v1, :cond_34

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/anim/model/content/ShapeGroup;

    new-instance v5, Lcom/oplus/anim/animation/content/ContentGroup;

    iget-object v6, p0, Lcom/oplus/anim/model/layer/TextLayer;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-direct {v5, v6, p0, v4}, Lcom/oplus/anim/animation/content/ContentGroup;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;Lcom/oplus/anim/model/content/ShapeGroup;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_34
    iget-object p0, p0, Lcom/oplus/anim/model/layer/TextLayer;->contentsForCharacter:Ljava/util/Map;

    invoke-interface {p0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method private getTextLineWidthForGlyphs(Ljava/lang/String;Lcom/oplus/anim/model/Font;FF)F
    .registers 14

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3b

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p2}, Lcom/oplus/anim/model/Font;->getFamily()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/oplus/anim/model/Font;->getStyle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oplus/anim/model/FontCharacter;->hashFor(CLjava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/oplus/anim/model/layer/TextLayer;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v3}, Lcom/oplus/anim/EffectiveAnimationComposition;->getCharacters()Landroidx/collection/SparseArrayCompat;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/anim/model/FontCharacter;

    if-nez v2, :cond_27

    goto :goto_38

    :cond_27
    float-to-double v3, v0

    invoke-virtual {v2}, Lcom/oplus/anim/model/FontCharacter;->getWidth()D

    move-result-wide v5

    float-to-double v7, p3

    mul-double/2addr v5, v7

    invoke-static {}, Lcom/oplus/anim/utils/Utils;->dpScale()F

    move-result v0

    float-to-double v7, v0

    mul-double/2addr v5, v7

    float-to-double v7, p4

    mul-double/2addr v5, v7

    add-double/2addr v5, v3

    double-to-float v0, v5

    :goto_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3b
    return v0
.end method

.method private getTextLines(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p0, "\r\n"

    const-string v0, "\r"

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\n"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getTypeface(Lcom/oplus/anim/model/Font;)Landroid/graphics/Typeface;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/oplus/anim/model/layer/TextLayer;->typefaceCallbackAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-eqz v0, :cond_d

    return-object v0

    :cond_d
    iget-object p0, p0, Lcom/oplus/anim/model/layer/TextLayer;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p1}, Lcom/oplus/anim/model/Font;->getFamily()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oplus/anim/model/Font;->getStyle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getTypeface(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    if-eqz p0, :cond_1e

    return-object p0

    :cond_1e
    invoke-virtual {p1}, Lcom/oplus/anim/model/Font;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method private isModifier(I)Z
    .registers 3

    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result p0

    const/16 v0, 0x10

    if-eq p0, v0, :cond_2a

    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result p0

    const/16 v0, 0x1b

    if-eq p0, v0, :cond_2a

    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result p0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_2a

    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result p0

    const/16 v0, 0x1c

    if-eq p0, v0, :cond_2a

    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result p0

    const/16 p1, 0x13

    if-ne p0, p1, :cond_28

    goto :goto_2a

    :cond_28
    const/4 p0, 0x0

    goto :goto_2b

    :cond_2a
    :goto_2a
    const/4 p0, 0x1

    :goto_2b
    return p0
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

    invoke-super {p0, p1, p2}, Lcom/oplus/anim/model/layer/BaseLayer;->addValueCallback(Ljava/lang/Object;Lcom/oplus/anim/value/EffectiveValueCallback;)V

    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->COLOR:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_26

    iget-object p1, p0, Lcom/oplus/anim/model/layer/TextLayer;->colorCallbackAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz p1, :cond_f

    invoke-virtual {p0, p1}, Lcom/oplus/anim/model/layer/BaseLayer;->removeAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_f
    if-nez p2, :cond_15

    iput-object v1, p0, Lcom/oplus/anim/model/layer/TextLayer;->colorCallbackAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    goto/16 :goto_c8

    :cond_15
    new-instance p1, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {p1, p2}, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    iput-object p1, p0, Lcom/oplus/anim/model/layer/TextLayer;->colorCallbackAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    iget-object p1, p0, Lcom/oplus/anim/model/layer/TextLayer;->colorCallbackAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    goto/16 :goto_c8

    :cond_26
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->STROKE_COLOR:Ljava/lang/Integer;

    if-ne p1, v0, :cond_48

    iget-object p1, p0, Lcom/oplus/anim/model/layer/TextLayer;->strokeColorCallbackAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz p1, :cond_31

    invoke-virtual {p0, p1}, Lcom/oplus/anim/model/layer/BaseLayer;->removeAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_31
    if-nez p2, :cond_37

    iput-object v1, p0, Lcom/oplus/anim/model/layer/TextLayer;->strokeColorCallbackAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    goto/16 :goto_c8

    :cond_37
    new-instance p1, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {p1, p2}, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    iput-object p1, p0, Lcom/oplus/anim/model/layer/TextLayer;->strokeColorCallbackAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    iget-object p1, p0, Lcom/oplus/anim/model/layer/TextLayer;->strokeColorCallbackAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    goto/16 :goto_c8

    :cond_48
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->STROKE_WIDTH:Ljava/lang/Float;

    if-ne p1, v0, :cond_69

    iget-object p1, p0, Lcom/oplus/anim/model/layer/TextLayer;->strokeWidthCallbackAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz p1, :cond_53

    invoke-virtual {p0, p1}, Lcom/oplus/anim/model/layer/BaseLayer;->removeAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_53
    if-nez p2, :cond_59

    iput-object v1, p0, Lcom/oplus/anim/model/layer/TextLayer;->strokeWidthCallbackAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    goto/16 :goto_c8

    :cond_59
    new-instance p1, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {p1, p2}, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    iput-object p1, p0, Lcom/oplus/anim/model/layer/TextLayer;->strokeWidthCallbackAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    iget-object p1, p0, Lcom/oplus/anim/model/layer/TextLayer;->strokeWidthCallbackAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    goto :goto_c8

    :cond_69
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->TEXT_TRACKING:Ljava/lang/Float;

    if-ne p1, v0, :cond_89

    iget-object p1, p0, Lcom/oplus/anim/model/layer/TextLayer;->trackingCallbackAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz p1, :cond_74

    invoke-virtual {p0, p1}, Lcom/oplus/anim/model/layer/BaseLayer;->removeAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_74
    if-nez p2, :cond_79

    iput-object v1, p0, Lcom/oplus/anim/model/layer/TextLayer;->trackingCallbackAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_c8

    :cond_79
    new-instance p1, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {p1, p2}, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    iput-object p1, p0, Lcom/oplus/anim/model/layer/TextLayer;->trackingCallbackAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    iget-object p1, p0, Lcom/oplus/anim/model/layer/TextLayer;->trackingCallbackAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    goto :goto_c8

    :cond_89
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->TEXT_SIZE:Ljava/lang/Float;

    if-ne p1, v0, :cond_a9

    iget-object p1, p0, Lcom/oplus/anim/model/layer/TextLayer;->textSizeCallbackAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz p1, :cond_94

    invoke-virtual {p0, p1}, Lcom/oplus/anim/model/layer/BaseLayer;->removeAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_94
    if-nez p2, :cond_99

    iput-object v1, p0, Lcom/oplus/anim/model/layer/TextLayer;->textSizeCallbackAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_c8

    :cond_99
    new-instance p1, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {p1, p2}, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    iput-object p1, p0, Lcom/oplus/anim/model/layer/TextLayer;->textSizeCallbackAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    iget-object p1, p0, Lcom/oplus/anim/model/layer/TextLayer;->textSizeCallbackAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    goto :goto_c8

    :cond_a9
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->TYPEFACE:Landroid/graphics/Typeface;

    if-ne p1, v0, :cond_c8

    iget-object p1, p0, Lcom/oplus/anim/model/layer/TextLayer;->typefaceCallbackAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz p1, :cond_b4

    invoke-virtual {p0, p1}, Lcom/oplus/anim/model/layer/BaseLayer;->removeAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_b4
    if-nez p2, :cond_b9

    iput-object v1, p0, Lcom/oplus/anim/model/layer/TextLayer;->typefaceCallbackAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_c8

    :cond_b9
    new-instance p1, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {p1, p2}, Lcom/oplus/anim/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    iput-object p1, p0, Lcom/oplus/anim/model/layer/TextLayer;->typefaceCallbackAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    iget-object p1, p0, Lcom/oplus/anim/model/layer/TextLayer;->typefaceCallbackAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_c8
    :goto_c8
    return-void
.end method

.method public drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .registers 9

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object p3, p0, Lcom/oplus/anim/model/layer/TextLayer;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p3}, Lcom/oplus/anim/EffectiveAnimationDrawable;->useTextGlyphs()Z

    move-result p3

    if-nez p3, :cond_e

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_e
    iget-object p3, p0, Lcom/oplus/anim/model/layer/TextLayer;->textAnimation:Lcom/oplus/anim/animation/keyframe/TextKeyframeAnimation;

    invoke-virtual {p3}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oplus/anim/model/DocumentData;

    iget-object v0, p0, Lcom/oplus/anim/model/layer/TextLayer;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationComposition;->getFonts()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p3, Lcom/oplus/anim/model/DocumentData;->fontName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/anim/model/Font;

    if-nez v0, :cond_2a

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_2a
    iget-object v1, p0, Lcom/oplus/anim/model/layer/TextLayer;->colorCallbackAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v1, :cond_3e

    iget-object v2, p0, Lcom/oplus/anim/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_59

    :cond_3e
    iget-object v1, p0, Lcom/oplus/anim/model/layer/TextLayer;->colorAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v1, :cond_52

    iget-object v2, p0, Lcom/oplus/anim/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_59

    :cond_52
    iget-object v1, p0, Lcom/oplus/anim/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    iget v2, p3, Lcom/oplus/anim/model/DocumentData;->color:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :goto_59
    iget-object v1, p0, Lcom/oplus/anim/model/layer/TextLayer;->strokeColorCallbackAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v1, :cond_6d

    iget-object v2, p0, Lcom/oplus/anim/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_88

    :cond_6d
    iget-object v1, p0, Lcom/oplus/anim/model/layer/TextLayer;->strokeColorAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v1, :cond_81

    iget-object v2, p0, Lcom/oplus/anim/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_88

    :cond_81
    iget-object v1, p0, Lcom/oplus/anim/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    iget v2, p3, Lcom/oplus/anim/model/DocumentData;->strokeColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :goto_88
    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->transform:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v1}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v1

    const/16 v2, 0x64

    if-nez v1, :cond_94

    move v1, v2

    goto :goto_a4

    :cond_94
    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->transform:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v1}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_a4
    mul-int/lit16 v1, v1, 0xff

    div-int/2addr v1, v2

    iget-object v2, p0, Lcom/oplus/anim/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Lcom/oplus/anim/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lcom/oplus/anim/model/layer/TextLayer;->strokeWidthCallbackAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v1, :cond_c5

    iget-object v2, p0, Lcom/oplus/anim/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_ea

    :cond_c5
    iget-object v1, p0, Lcom/oplus/anim/model/layer/TextLayer;->strokeWidthAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v1, :cond_d9

    iget-object v2, p0, Lcom/oplus/anim/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_ea

    :cond_d9
    invoke-static {p2}, Lcom/oplus/anim/utils/Utils;->getScale(Landroid/graphics/Matrix;)F

    move-result v1

    iget-object v2, p0, Lcom/oplus/anim/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    iget v3, p3, Lcom/oplus/anim/model/DocumentData;->strokeWidth:F

    invoke-static {}, Lcom/oplus/anim/utils/Utils;->dpScale()F

    move-result v4

    mul-float/2addr v4, v3

    mul-float/2addr v4, v1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :goto_ea
    iget-object v1, p0, Lcom/oplus/anim/model/layer/TextLayer;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->useTextGlyphs()Z

    move-result v1

    if-eqz v1, :cond_f6

    invoke-direct {p0, p3, p2, v0, p1}, Lcom/oplus/anim/model/layer/TextLayer;->drawTextGlyphs(Lcom/oplus/anim/model/DocumentData;Landroid/graphics/Matrix;Lcom/oplus/anim/model/Font;Landroid/graphics/Canvas;)V

    goto :goto_f9

    :cond_f6
    invoke-direct {p0, p3, v0, p1}, Lcom/oplus/anim/model/layer/TextLayer;->drawTextWithFont(Lcom/oplus/anim/model/DocumentData;Lcom/oplus/anim/model/Font;Landroid/graphics/Canvas;)V

    :goto_f9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/oplus/anim/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p2, p0, Lcom/oplus/anim/model/layer/TextLayer;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {p2}, Lcom/oplus/anim/EffectiveAnimationComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    iget-object p0, p0, Lcom/oplus/anim/model/layer/TextLayer;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, p2, p0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method
