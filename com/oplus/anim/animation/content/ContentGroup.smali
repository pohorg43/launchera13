.class public Lcom/oplus/anim/animation/content/ContentGroup;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/anim/animation/content/DrawingContent;
.implements Lcom/oplus/anim/animation/content/PathContent;
.implements Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/oplus/anim/model/KeyPathElement;


# instance fields
.field private final contents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/anim/animation/content/Content;",
            ">;"
        }
    .end annotation
.end field

.field private final effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

.field private final hidden:Z

.field private final matrix:Landroid/graphics/Matrix;

.field private final name:Ljava/lang/String;

.field private final offScreenPaint:Landroid/graphics/Paint;

.field private final offScreenRectF:Landroid/graphics/RectF;

.field private final path:Landroid/graphics/Path;

.field private pathContents:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/anim/animation/content/PathContent;",
            ">;"
        }
    .end annotation
.end field

.field private final rect:Landroid/graphics/RectF;

.field private transformAnimation:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;Lcom/oplus/anim/model/content/ShapeGroup;)V
    .registers 11

    invoke-virtual {p3}, Lcom/oplus/anim/model/content/ShapeGroup;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcom/oplus/anim/model/content/ShapeGroup;->isHidden()Z

    move-result v4

    invoke-virtual {p3}, Lcom/oplus/anim/model/content/ShapeGroup;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/oplus/anim/animation/content/ContentGroup;->contentsFromModels(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {p3}, Lcom/oplus/anim/model/content/ShapeGroup;->getItems()Ljava/util/List;

    move-result-object p3

    invoke-static {p3}, Lcom/oplus/anim/animation/content/ContentGroup;->findTransform(Ljava/util/List;)Lcom/oplus/anim/model/animatable/AnimatableTransform;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/oplus/anim/animation/content/ContentGroup;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;Ljava/lang/String;ZLjava/util/List;Lcom/oplus/anim/model/animatable/AnimatableTransform;)V

    return-void
.end method

.method public constructor <init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;Ljava/lang/String;ZLjava/util/List;Lcom/oplus/anim/model/animatable/AnimatableTransform;)V
    .registers 8
    .param p6  # Lcom/oplus/anim/model/animatable/AnimatableTransform;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/EffectiveAnimationDrawable;",
            "Lcom/oplus/anim/model/layer/BaseLayer;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Lcom/oplus/anim/animation/content/Content;",
            ">;",
            "Lcom/oplus/anim/model/animatable/AnimatableTransform;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oplus/anim/animation/LPaint;

    invoke-direct {v0}, Lcom/oplus/anim/animation/LPaint;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->offScreenPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->offScreenRectF:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->path:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->rect:Landroid/graphics/RectF;

    iput-object p3, p0, Lcom/oplus/anim/animation/content/ContentGroup;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/oplus/anim/animation/content/ContentGroup;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    iput-boolean p4, p0, Lcom/oplus/anim/animation/content/ContentGroup;->hidden:Z

    iput-object p5, p0, Lcom/oplus/anim/animation/content/ContentGroup;->contents:Ljava/util/List;

    if-eqz p6, :cond_3e

    invoke-virtual {p6}, Lcom/oplus/anim/model/animatable/AnimatableTransform;->createAnimation()Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/anim/animation/content/ContentGroup;->transformAnimation:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {p1, p2}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->addAnimationsToLayer(Lcom/oplus/anim/model/layer/BaseLayer;)V

    iget-object p1, p0, Lcom/oplus/anim/animation/content/ContentGroup;->transformAnimation:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->addListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    :cond_3e
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_49
    if-ltz p1, :cond_5d

    invoke-interface {p5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oplus/anim/animation/content/Content;

    instance-of p3, p2, Lcom/oplus/anim/animation/content/GreedyContent;

    if-eqz p3, :cond_5a

    check-cast p2, Lcom/oplus/anim/animation/content/GreedyContent;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5a
    add-int/lit8 p1, p1, -0x1

    goto :goto_49

    :cond_5d
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_63
    if-ltz p1, :cond_79

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oplus/anim/animation/content/GreedyContent;

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p3

    invoke-interface {p5, p3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/oplus/anim/animation/content/GreedyContent;->absorbContent(Ljava/util/ListIterator;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_63

    :cond_79
    return-void
.end method

.method private static contentsFromModels(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/EffectiveAnimationDrawable;",
            "Lcom/oplus/anim/model/layer/BaseLayer;",
            "Ljava/util/List<",
            "Lcom/oplus/anim/model/content/ContentModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/oplus/anim/animation/content/Content;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_a
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/anim/model/content/ContentModel;

    invoke-interface {v2, p0, p1}, Lcom/oplus/anim/model/content/ContentModel;->toContent(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;)Lcom/oplus/anim/animation/content/Content;

    move-result-object v2

    if-eqz v2, :cond_1f

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_22
    return-object v0
.end method

.method public static findTransform(Ljava/util/List;)Lcom/oplus/anim/model/animatable/AnimatableTransform;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/anim/model/content/ContentModel;",
            ">;)",
            "Lcom/oplus/anim/model/animatable/AnimatableTransform;"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/anim/model/content/ContentModel;

    instance-of v2, v1, Lcom/oplus/anim/model/animatable/AnimatableTransform;

    if-eqz v2, :cond_14

    check-cast v1, Lcom/oplus/anim/model/animatable/AnimatableTransform;

    return-object v1

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    const/4 p0, 0x0

    return-object p0
.end method

.method private hasTwoOrMoreDrawableContent()Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_3
    iget-object v3, p0, Lcom/oplus/anim/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1f

    iget-object v3, p0, Lcom/oplus/anim/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/oplus/anim/animation/content/DrawingContent;

    if-eqz v3, :cond_1c

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1f
    return v0
.end method


# virtual methods
.method public addValueCallback(Ljava/lang/Object;Lcom/oplus/anim/value/EffectiveValueCallback;)V
    .registers 3
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

    iget-object p0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->transformAnimation:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1, p2}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->applyValueCallback(Ljava/lang/Object;Lcom/oplus/anim/value/EffectiveValueCallback;)Z

    :cond_7
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .registers 8

    iget-boolean v0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->hidden:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lcom/oplus/anim/animation/content/ContentGroup;->transformAnimation:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    if-eqz p2, :cond_3d

    iget-object v0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    iget-object p2, p0, Lcom/oplus/anim/animation/content/ContentGroup;->transformAnimation:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {p2}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p2

    if-nez p2, :cond_22

    const/16 p2, 0x64

    goto :goto_32

    :cond_22
    iget-object p2, p0, Lcom/oplus/anim/animation/content/ContentGroup;->transformAnimation:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {p2}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_32
    int-to-float p2, p2

    const/high16 v0, 0x42c80000  # 100.0f

    div-float/2addr p2, v0

    int-to-float p3, p3

    mul-float/2addr p2, p3

    const/high16 p3, 0x437f0000  # 255.0f

    div-float/2addr p2, p3

    mul-float/2addr p2, p3

    float-to-int p3, p2

    :cond_3d
    iget-object p2, p0, Lcom/oplus/anim/animation/content/ContentGroup;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p2}, Lcom/oplus/anim/EffectiveAnimationDrawable;->isApplyingOpacityToLayersEnabled()Z

    move-result p2

    const/16 v0, 0xff

    const/4 v1, 0x1

    if-eqz p2, :cond_52

    invoke-direct {p0}, Lcom/oplus/anim/animation/content/ContentGroup;->hasTwoOrMoreDrawableContent()Z

    move-result p2

    if-eqz p2, :cond_52

    if-eq p3, v0, :cond_52

    move p2, v1

    goto :goto_53

    :cond_52
    const/4 p2, 0x0

    :goto_53
    if-eqz p2, :cond_6e

    iget-object v2, p0, Lcom/oplus/anim/animation/content/ContentGroup;->offScreenRectF:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Lcom/oplus/anim/animation/content/ContentGroup;->offScreenRectF:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/oplus/anim/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v2, v3, v1}, Lcom/oplus/anim/animation/content/ContentGroup;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object v2, p0, Lcom/oplus/anim/animation/content/ContentGroup;->offScreenPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Lcom/oplus/anim/animation/content/ContentGroup;->offScreenRectF:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/oplus/anim/animation/content/ContentGroup;->offScreenPaint:Landroid/graphics/Paint;

    invoke-static {p1, v2, v3}, Lcom/oplus/anim/utils/Utils;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_6e
    if-eqz p2, :cond_71

    move p3, v0

    :cond_71
    iget-object v0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_78
    if-ltz v0, :cond_8e

    iget-object v1, p0, Lcom/oplus/anim/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/oplus/anim/animation/content/DrawingContent;

    if-eqz v2, :cond_8b

    check-cast v1, Lcom/oplus/anim/animation/content/DrawingContent;

    iget-object v2, p0, Lcom/oplus/anim/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    invoke-interface {v1, p1, v2, p3}, Lcom/oplus/anim/animation/content/DrawingContent;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    :cond_8b
    add-int/lit8 v0, v0, -0x1

    goto :goto_78

    :cond_8e
    if-eqz p2, :cond_93

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_93
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .registers 7

    iget-object v0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lcom/oplus/anim/animation/content/ContentGroup;->transformAnimation:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    if-eqz p2, :cond_12

    iget-object v0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_12
    iget-object p2, p0, Lcom/oplus/anim/animation/content/ContentGroup;->rect:Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p2, p0, Lcom/oplus/anim/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_20
    if-ltz p2, :cond_3f

    iget-object v0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/anim/animation/content/Content;

    instance-of v1, v0, Lcom/oplus/anim/animation/content/DrawingContent;

    if-eqz v1, :cond_3c

    check-cast v0, Lcom/oplus/anim/animation/content/DrawingContent;

    iget-object v1, p0, Lcom/oplus/anim/animation/content/ContentGroup;->rect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/oplus/anim/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    invoke-interface {v0, v1, v2, p3}, Lcom/oplus/anim/animation/content/DrawingContent;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object v0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    :cond_3c
    add-int/lit8 p2, p2, -0x1

    goto :goto_20

    :cond_3f
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Landroid/graphics/Path;
    .registers 5

    iget-object v0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->transformAnimation:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/oplus/anim/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    :cond_12
    iget-object v0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-boolean v0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->hidden:Z

    if-eqz v0, :cond_1e

    iget-object p0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->path:Landroid/graphics/Path;

    return-object p0

    :cond_1e
    iget-object v0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_26
    if-ltz v0, :cond_44

    iget-object v1, p0, Lcom/oplus/anim/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/anim/animation/content/Content;

    instance-of v2, v1, Lcom/oplus/anim/animation/content/PathContent;

    if-eqz v2, :cond_41

    iget-object v2, p0, Lcom/oplus/anim/animation/content/ContentGroup;->path:Landroid/graphics/Path;

    check-cast v1, Lcom/oplus/anim/animation/content/PathContent;

    invoke-interface {v1}, Lcom/oplus/anim/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v1

    iget-object v3, p0, Lcom/oplus/anim/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    :cond_41
    add-int/lit8 v0, v0, -0x1

    goto :goto_26

    :cond_44
    iget-object p0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->path:Landroid/graphics/Path;

    return-object p0
.end method

.method public getPathList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/anim/animation/content/PathContent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->pathContents:Ljava/util/List;

    if-nez v0, :cond_2a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->pathContents:Ljava/util/List;

    const/4 v0, 0x0

    :goto_c
    iget-object v1, p0, Lcom/oplus/anim/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2a

    iget-object v1, p0, Lcom/oplus/anim/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/anim/animation/content/Content;

    instance-of v2, v1, Lcom/oplus/anim/animation/content/PathContent;

    if-eqz v2, :cond_27

    iget-object v2, p0, Lcom/oplus/anim/animation/content/ContentGroup;->pathContents:Ljava/util/List;

    check-cast v1, Lcom/oplus/anim/animation/content/PathContent;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_2a
    iget-object p0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->pathContents:Ljava/util/List;

    return-object p0
.end method

.method public getTransformationMatrix()Landroid/graphics/Matrix;
    .registers 2

    iget-object v0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->transformAnimation:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0

    :cond_9
    iget-object v0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object p0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public onValueChanged()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->invalidateSelf()V

    return-void
.end method

.method public resolveKeyPath(Lcom/oplus/anim/model/KeyPath;ILjava/util/List;Lcom/oplus/anim/model/KeyPath;)V
    .registers 8
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

    invoke-virtual {p0}, Lcom/oplus/anim/animation/content/ContentGroup;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/oplus/anim/model/KeyPath;->matches(Ljava/lang/String;I)Z

    move-result v0

    const-string v1, "__container"

    if-nez v0, :cond_17

    invoke-virtual {p0}, Lcom/oplus/anim/animation/content/ContentGroup;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    return-void

    :cond_17
    invoke-virtual {p0}, Lcom/oplus/anim/animation/content/ContentGroup;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    invoke-virtual {p0}, Lcom/oplus/anim/animation/content/ContentGroup;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/oplus/anim/model/KeyPath;->addKey(Ljava/lang/String;)Lcom/oplus/anim/model/KeyPath;

    move-result-object p4

    invoke-virtual {p0}, Lcom/oplus/anim/animation/content/ContentGroup;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/oplus/anim/model/KeyPath;->fullyResolvesTo(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-virtual {p4, p0}, Lcom/oplus/anim/model/KeyPath;->resolve(Lcom/oplus/anim/model/KeyPathElement;)Lcom/oplus/anim/model/KeyPath;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3a
    invoke-virtual {p0}, Lcom/oplus/anim/animation/content/ContentGroup;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/oplus/anim/model/KeyPath;->propagateToChildren(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-virtual {p0}, Lcom/oplus/anim/animation/content/ContentGroup;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/oplus/anim/model/KeyPath;->incrementDepthBy(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr v0, p2

    const/4 p2, 0x0

    :goto_4e
    iget-object v1, p0, Lcom/oplus/anim/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_6a

    iget-object v1, p0, Lcom/oplus/anim/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/anim/animation/content/Content;

    instance-of v2, v1, Lcom/oplus/anim/model/KeyPathElement;

    if-eqz v2, :cond_67

    check-cast v1, Lcom/oplus/anim/model/KeyPathElement;

    invoke-interface {v1, p1, v0, p3, p4}, Lcom/oplus/anim/model/KeyPathElement;->resolveKeyPath(Lcom/oplus/anim/model/KeyPath;ILjava/util/List;Lcom/oplus/anim/model/KeyPath;)V

    :cond_67
    add-int/lit8 p2, p2, 0x1

    goto :goto_4e

    :cond_6a
    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .registers 6
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

    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/oplus/anim/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/oplus/anim/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1b
    if-ltz p1, :cond_35

    iget-object v0, p0, Lcom/oplus/anim/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/anim/animation/content/Content;

    iget-object v1, p0, Lcom/oplus/anim/animation/content/ContentGroup;->contents:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lcom/oplus/anim/animation/content/Content;->setContents(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_1b

    :cond_35
    return-void
.end method
