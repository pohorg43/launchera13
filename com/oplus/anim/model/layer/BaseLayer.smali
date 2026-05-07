.class public abstract Lcom/oplus/anim/model/layer/BaseLayer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/anim/animation/content/DrawingContent;
.implements Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/oplus/anim/model/KeyPathElement;


# static fields
.field private static final CLIP_SAVE_FLAG:I = 0x2

.field private static final CLIP_TO_LAYER_SAVE_FLAG:I = 0x10

.field private static final MATRIX_SAVE_FLAG:I = 0x1

.field private static final SAVE_FLAGS:I = 0x13


# instance fields
.field private final animations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "**>;>;"
        }
    .end annotation
.end field

.field public blurMaskFilter:Landroid/graphics/BlurMaskFilter;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public blurMaskFilterRadius:F

.field public final boundsMatrix:Landroid/graphics/Matrix;

.field private final clearPaint:Landroid/graphics/Paint;

.field private final contentPaint:Landroid/graphics/Paint;

.field private final drawTraceName:Ljava/lang/String;

.field private final dstInPaint:Landroid/graphics/Paint;

.field private final dstOutPaint:Landroid/graphics/Paint;

.field public final effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

.field private inOutAnimation:Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final layerModel:Lcom/oplus/anim/model/layer/Layer;

.field private mask:Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final maskBoundsRect:Landroid/graphics/RectF;

.field private final matrix:Landroid/graphics/Matrix;

.field private final matteBoundsRect:Landroid/graphics/RectF;

.field private matteLayer:Lcom/oplus/anim/model/layer/BaseLayer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mattePaint:Landroid/graphics/Paint;

.field private outlineMasksAndMattes:Z

.field private outlineMasksAndMattesPaint:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private parentLayer:Lcom/oplus/anim/model/layer/BaseLayer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private parentLayers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/anim/model/layer/BaseLayer;",
            ">;"
        }
    .end annotation
.end field

.field private final path:Landroid/graphics/Path;

.field private final rect:Landroid/graphics/RectF;

.field private final tempMaskBoundsRect:Landroid/graphics/RectF;

.field public final transform:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

.field private visible:Z


# direct methods
.method public constructor <init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/Layer;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    new-instance v0, Lcom/oplus/anim/animation/LPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oplus/anim/animation/LPaint;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    new-instance v0, Lcom/oplus/anim/animation/LPaint;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Lcom/oplus/anim/animation/LPaint;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->dstInPaint:Landroid/graphics/Paint;

    new-instance v0, Lcom/oplus/anim/animation/LPaint;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Lcom/oplus/anim/animation/LPaint;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->dstOutPaint:Landroid/graphics/Paint;

    new-instance v0, Lcom/oplus/anim/animation/LPaint;

    invoke-direct {v0, v1}, Lcom/oplus/anim/animation/LPaint;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->mattePaint:Landroid/graphics/Paint;

    new-instance v2, Lcom/oplus/anim/animation/LPaint;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Lcom/oplus/anim/animation/LPaint;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->clearPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->matteBoundsRect:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->animations:Ljava/util/List;

    iput-boolean v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->visible:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->blurMaskFilterRadius:F

    iput-object p1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    iput-object p2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->layerModel:Lcom/oplus/anim/model/layer/Layer;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/oplus/anim/model/layer/Layer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#draw"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->drawTraceName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/oplus/anim/model/layer/Layer;->getMatteType()Lcom/oplus/anim/model/layer/Layer$MatteType;

    move-result-object p1

    sget-object v1, Lcom/oplus/anim/model/layer/Layer$MatteType;->INVERT:Lcom/oplus/anim/model/layer/Layer$MatteType;

    if-ne p1, v1, :cond_98

    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_a2

    :cond_98
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :goto_a2
    invoke-virtual {p2}, Lcom/oplus/anim/model/layer/Layer;->getTransform()Lcom/oplus/anim/model/animatable/AnimatableTransform;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/anim/model/animatable/AnimatableTransform;->createAnimation()Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->transform:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->addListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    invoke-virtual {p2}, Lcom/oplus/anim/model/layer/Layer;->getMasks()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_ff

    invoke-virtual {p2}, Lcom/oplus/anim/model/layer/Layer;->getMasks()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_ff

    new-instance p1, Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {p2}, Lcom/oplus/anim/model/layer/Layer;->getMasks()Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->mask:Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {p1}, Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_e2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    goto :goto_d2

    :cond_e2
    iget-object p1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->mask:Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {p1}, Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;->getOpacityAnimations()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_ec
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_ff

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, p2}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    invoke-virtual {p2, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    goto :goto_ec

    :cond_ff
    invoke-direct {p0}, Lcom/oplus/anim/model/layer/BaseLayer;->setupInOutAnimations()V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/anim/model/layer/BaseLayer;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/anim/model/layer/BaseLayer;->lambda$setupInOutAnimations$0()V

    return-void
.end method

.method private applyAddMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Lcom/oplus/anim/model/content/ShapeData;",
            "Landroid/graphics/Path;",
            ">;",
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p3}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    invoke-virtual {v0, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object p3, p0, Lcom/oplus/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {p4}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-float p3, p3

    const p4, 0x40233333  # 2.55f

    mul-float/2addr p3, p4

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private applyIntersectMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Lcom/oplus/anim/model/content/ShapeData;",
            "Landroid/graphics/Path;",
            ">;",
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->dstInPaint:Landroid/graphics/Paint;

    invoke-static {p1, v0, v1}, Lcom/oplus/anim/utils/Utils;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p3}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    invoke-virtual {v0, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object p3, p0, Lcom/oplus/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {p4}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-float p3, p3

    const p4, 0x40233333  # 2.55f

    mul-float/2addr p3, p4

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private applyInvertedAddMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Lcom/oplus/anim/model/content/ShapeData;",
            "Landroid/graphics/Path;",
            ">;",
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    invoke-static {p1, v0, v1}, Lcom/oplus/anim/utils/Utils;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p3}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    invoke-virtual {v0, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object p3, p0, Lcom/oplus/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {p4}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-float p3, p3

    const p4, 0x40233333  # 2.55f

    mul-float/2addr p3, p4

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->dstOutPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private applyInvertedIntersectMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Lcom/oplus/anim/model/content/ShapeData;",
            "Landroid/graphics/Path;",
            ">;",
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->dstInPaint:Landroid/graphics/Paint;

    invoke-static {p1, v0, v1}, Lcom/oplus/anim/utils/Utils;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->dstOutPaint:Landroid/graphics/Paint;

    invoke-virtual {p4}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    int-to-float p4, p4

    const v1, 0x40233333  # 2.55f

    mul-float/2addr p4, v1

    float-to-int p4, p4

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p3}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    iget-object p4, p0, Lcom/oplus/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    invoke-virtual {p4, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object p3, p0, Lcom/oplus/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->dstOutPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private applyInvertedSubtractMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Lcom/oplus/anim/model/content/ShapeData;",
            "Landroid/graphics/Path;",
            ">;",
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->dstOutPaint:Landroid/graphics/Paint;

    invoke-static {p1, v0, v1}, Lcom/oplus/anim/utils/Utils;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->dstOutPaint:Landroid/graphics/Paint;

    invoke-virtual {p4}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    int-to-float p4, p4

    const v1, 0x40233333  # 2.55f

    mul-float/2addr p4, v1

    float-to-int p4, p4

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p3}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    iget-object p4, p0, Lcom/oplus/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    invoke-virtual {p4, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object p3, p0, Lcom/oplus/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->dstOutPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private applyMasks(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .registers 10

    const-string v0, "Layer#saveLayer"

    invoke-static {v0}, Lcom/oplus/anim/L;->beginSection(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->dstInPaint:Landroid/graphics/Paint;

    const/16 v3, 0x13

    invoke-static {p1, v1, v2, v3}, Lcom/oplus/anim/utils/Utils;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    invoke-static {v0}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    const/4 v0, 0x0

    :goto_12
    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->mask:Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {v1}, Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;->getMasks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_b2

    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->mask:Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {v1}, Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;->getMasks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/anim/model/content/Mask;

    iget-object v2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->mask:Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {v2}, Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    iget-object v3, p0, Lcom/oplus/anim/model/layer/BaseLayer;->mask:Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {v3}, Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;->getOpacityAnimations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    sget-object v4, Lcom/oplus/anim/model/layer/BaseLayer$1;->$SwitchMap$com$oplus$anim$model$content$Mask$MaskMode:[I

    invoke-virtual {v1}, Lcom/oplus/anim/model/content/Mask;->getMaskMode()Lcom/oplus/anim/model/content/Mask$MaskMode;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/16 v5, 0xff

    const/4 v6, 0x1

    if-eq v4, v6, :cond_9c

    const/4 v6, 0x2

    if-eq v4, v6, :cond_79

    const/4 v5, 0x3

    if-eq v4, v5, :cond_6b

    const/4 v5, 0x4

    if-eq v4, v5, :cond_5d

    goto :goto_ae

    :cond_5d
    invoke-virtual {v1}, Lcom/oplus/anim/model/content/Mask;->isInverted()Z

    move-result v1

    if-eqz v1, :cond_67

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/oplus/anim/model/layer/BaseLayer;->applyInvertedAddMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    goto :goto_ae

    :cond_67
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/oplus/anim/model/layer/BaseLayer;->applyAddMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    goto :goto_ae

    :cond_6b
    invoke-virtual {v1}, Lcom/oplus/anim/model/content/Mask;->isInverted()Z

    move-result v1

    if-eqz v1, :cond_75

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/oplus/anim/model/layer/BaseLayer;->applyInvertedIntersectMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    goto :goto_ae

    :cond_75
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/oplus/anim/model/layer/BaseLayer;->applyIntersectMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    goto :goto_ae

    :cond_79
    if-nez v0, :cond_8e

    iget-object v4, p0, Lcom/oplus/anim/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    const/high16 v6, -0x1000000

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p0, Lcom/oplus/anim/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, p0, Lcom/oplus/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/oplus/anim/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_8e
    invoke-virtual {v1}, Lcom/oplus/anim/model/content/Mask;->isInverted()Z

    move-result v1

    if-eqz v1, :cond_98

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/oplus/anim/model/layer/BaseLayer;->applyInvertedSubtractMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    goto :goto_ae

    :cond_98
    invoke-direct {p0, p1, p2, v2}, Lcom/oplus/anim/model/layer/BaseLayer;->applySubtractMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    goto :goto_ae

    :cond_9c
    invoke-direct {p0}, Lcom/oplus/anim/model/layer/BaseLayer;->areAllMasksNone()Z

    move-result v1

    if-eqz v1, :cond_ae

    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_ae
    :goto_ae
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_12

    :cond_b2
    const-string p0, "Layer#restoreLayer"

    invoke-static {p0}, Lcom/oplus/anim/L;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-static {p0}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    return-void
.end method

.method private applySubtractMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Lcom/oplus/anim/model/content/ShapeData;",
            "Landroid/graphics/Path;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p3}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    invoke-virtual {v0, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object p3, p0, Lcom/oplus/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->dstOutPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private areAllMasksNone()Z
    .registers 5

    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->mask:Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {v0}, Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    return v1

    :cond_e
    move v0, v1

    :goto_f
    iget-object v2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->mask:Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {v2}, Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;->getMasks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_33

    iget-object v2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->mask:Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {v2}, Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;->getMasks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/anim/model/content/Mask;

    invoke-virtual {v2}, Lcom/oplus/anim/model/content/Mask;->getMaskMode()Lcom/oplus/anim/model/content/Mask$MaskMode;

    move-result-object v2

    sget-object v3, Lcom/oplus/anim/model/content/Mask$MaskMode;->MASK_MODE_NONE:Lcom/oplus/anim/model/content/Mask$MaskMode;

    if-eq v2, v3, :cond_30

    return v1

    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_33
    const/4 p0, 0x1

    return p0
.end method

.method private buildParentLayerListIfNeeded()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->parentLayer:Lcom/oplus/anim/model/layer/BaseLayer;

    if-nez v0, :cond_10

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    return-void

    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->parentLayer:Lcom/oplus/anim/model/layer/BaseLayer;

    :goto_19
    if-eqz v0, :cond_23

    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/oplus/anim/model/layer/BaseLayer;->parentLayer:Lcom/oplus/anim/model/layer/BaseLayer;

    goto :goto_19

    :cond_23
    return-void
.end method

.method private clearCanvas(Landroid/graphics/Canvas;)V
    .registers 12

    const-string v0, "Layer#clearLayer"

    invoke-static {v0}, Lcom/oplus/anim/L;->beginSection(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    const/high16 v3, 0x3f800000  # 1.0f

    sub-float v5, v2, v3

    iget v2, v1, Landroid/graphics/RectF;->top:F

    sub-float v6, v2, v3

    iget v2, v1, Landroid/graphics/RectF;->right:F

    add-float v7, v2, v3

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float v8, v1, v3

    iget-object v9, p0, Lcom/oplus/anim/model/layer/BaseLayer;->clearPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-static {v0}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    return-void
.end method

.method public static forModel(Lcom/oplus/anim/model/layer/CompositionLayer;Lcom/oplus/anim/model/layer/Layer;Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/layer/BaseLayer;
    .registers 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget-object v0, Lcom/oplus/anim/model/layer/BaseLayer$1;->$SwitchMap$com$oplus$anim$model$layer$Layer$LayerType:[I

    invoke-virtual {p1}, Lcom/oplus/anim/model/layer/Layer;->getLayerType()Lcom/oplus/anim/model/layer/Layer$LayerType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_52

    const-string p0, "Unknown layer type "

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/oplus/anim/model/layer/Layer;->getLayerType()Lcom/oplus/anim/model/layer/Layer$LayerType;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/anim/utils/Logger;->warning(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :pswitch_25  #0x6
    new-instance p0, Lcom/oplus/anim/model/layer/TextLayer;

    invoke-direct {p0, p2, p1}, Lcom/oplus/anim/model/layer/TextLayer;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/Layer;)V

    return-object p0

    :pswitch_2b  #0x5
    new-instance p0, Lcom/oplus/anim/model/layer/NullLayer;

    invoke-direct {p0, p2, p1}, Lcom/oplus/anim/model/layer/NullLayer;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/Layer;)V

    return-object p0

    :pswitch_31  #0x4
    new-instance p0, Lcom/oplus/anim/model/layer/ImageLayer;

    invoke-direct {p0, p2, p1}, Lcom/oplus/anim/model/layer/ImageLayer;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/Layer;)V

    return-object p0

    :pswitch_37  #0x3
    new-instance p0, Lcom/oplus/anim/model/layer/SolidLayer;

    invoke-direct {p0, p2, p1}, Lcom/oplus/anim/model/layer/SolidLayer;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/Layer;)V

    return-object p0

    :pswitch_3d  #0x2
    new-instance p0, Lcom/oplus/anim/model/layer/CompositionLayer;

    invoke-virtual {p1}, Lcom/oplus/anim/model/layer/Layer;->getRefId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/oplus/anim/EffectiveAnimationComposition;->getPrecomps(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0, p3}, Lcom/oplus/anim/model/layer/CompositionLayer;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/Layer;Ljava/util/List;Lcom/oplus/anim/EffectiveAnimationComposition;)V

    return-object p0

    :pswitch_4b  #0x1
    new-instance p3, Lcom/oplus/anim/model/layer/ShapeLayer;

    invoke-direct {p3, p2, p1, p0}, Lcom/oplus/anim/model/layer/ShapeLayer;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/Layer;Lcom/oplus/anim/model/layer/CompositionLayer;)V

    return-object p3

    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_4b  #00000001
        :pswitch_3d  #00000002
        :pswitch_37  #00000003
        :pswitch_31  #00000004
        :pswitch_2b  #00000005
        :pswitch_25  #00000006
    .end packed-switch
.end method

.method private intersectBoundsWithMask(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .registers 13

    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, Lcom/oplus/anim/model/layer/BaseLayer;->hasMasksOnThisLayer()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->mask:Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {v0}, Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;->getMasks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_19
    if-ge v3, v0, :cond_f5

    iget-object v4, p0, Lcom/oplus/anim/model/layer/BaseLayer;->mask:Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {v4}, Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;->getMasks()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/anim/model/content/Mask;

    iget-object v5, p0, Lcom/oplus/anim/model/layer/BaseLayer;->mask:Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {v5}, Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v5}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Path;

    if-nez v5, :cond_3d

    goto/16 :goto_f0

    :cond_3d
    iget-object v6, p0, Lcom/oplus/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    invoke-virtual {v6, v5}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object v5, p0, Lcom/oplus/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    invoke-virtual {v5, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    sget-object v5, Lcom/oplus/anim/model/layer/BaseLayer$1;->$SwitchMap$com$oplus$anim$model$content$Mask$MaskMode:[I

    invoke-virtual {v4}, Lcom/oplus/anim/model/content/Mask;->getMaskMode()Lcom/oplus/anim/model/content/Mask$MaskMode;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x1

    if-eq v5, v6, :cond_f4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_f4

    const/4 v6, 0x3

    if-eq v5, v6, :cond_a5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_a5

    iget-object v4, p0, Lcom/oplus/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/oplus/anim/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v5, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    if-nez v3, :cond_71

    iget-object v4, p0, Lcom/oplus/anim/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/oplus/anim/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto/16 :goto_f0

    :cond_71
    iget-object v4, p0, Lcom/oplus/anim/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/oplus/anim/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget-object v6, p0, Lcom/oplus/anim/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lcom/oplus/anim/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iget-object v7, p0, Lcom/oplus/anim/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, Lcom/oplus/anim/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iget-object v8, p0, Lcom/oplus/anim/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    iget-object v9, p0, Lcom/oplus/anim/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_f0

    :cond_a5
    invoke-virtual {v4}, Lcom/oplus/anim/model/content/Mask;->isInverted()Z

    move-result v4

    if-eqz v4, :cond_ac

    return-void

    :cond_ac
    iget-object v4, p0, Lcom/oplus/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/oplus/anim/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v5, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    if-nez v3, :cond_bd

    iget-object v4, p0, Lcom/oplus/anim/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/oplus/anim/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_f0

    :cond_bd
    iget-object v4, p0, Lcom/oplus/anim/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/oplus/anim/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget-object v6, p0, Lcom/oplus/anim/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lcom/oplus/anim/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iget-object v7, p0, Lcom/oplus/anim/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, Lcom/oplus/anim/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iget-object v8, p0, Lcom/oplus/anim/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    iget-object v9, p0, Lcom/oplus/anim/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_f0
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_19

    :cond_f4
    return-void

    :cond_f5
    iget-object p0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    invoke-virtual {p1, p0}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result p0

    if-nez p0, :cond_100

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_100
    return-void
.end method

.method private intersectBoundsWithMatte(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .registers 7

    invoke-virtual {p0}, Lcom/oplus/anim/model/layer/BaseLayer;->hasMatteOnThisLayer()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->layerModel:Lcom/oplus/anim/model/layer/Layer;

    invoke-virtual {v0}, Lcom/oplus/anim/model/layer/Layer;->getMatteType()Lcom/oplus/anim/model/layer/Layer$MatteType;

    move-result-object v0

    sget-object v1, Lcom/oplus/anim/model/layer/Layer$MatteType;->INVERT:Lcom/oplus/anim/model/layer/Layer$MatteType;

    if-ne v0, v1, :cond_12

    return-void

    :cond_12
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->matteBoundsRect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->matteLayer:Lcom/oplus/anim/model/layer/BaseLayer;

    iget-object v2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->matteBoundsRect:Landroid/graphics/RectF;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p2, v3}, Lcom/oplus/anim/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->matteBoundsRect:Landroid/graphics/RectF;

    invoke-virtual {p1, p0}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result p0

    if-nez p0, :cond_2b

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_2b
    return-void
.end method

.method private invalidateSelf()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->invalidateSelf()V

    return-void
.end method

.method private synthetic lambda$setupInOutAnimations$0()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->inOutAnimation:Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v0}, Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-direct {p0, v0}, Lcom/oplus/anim/model/layer/BaseLayer;->setVisible(Z)V

    return-void
.end method

.method private recordRenderTime(F)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getComposition()Lcom/oplus/anim/EffectiveAnimationComposition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationComposition;->getPerformanceTracker()Lcom/oplus/anim/PerformanceTracker;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->layerModel:Lcom/oplus/anim/model/layer/Layer;

    invoke-virtual {p0}, Lcom/oplus/anim/model/layer/Layer;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/oplus/anim/PerformanceTracker;->recordRenderTime(Ljava/lang/String;F)V

    return-void
.end method

.method private setVisible(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->visible:Z

    if-eq p1, v0, :cond_9

    iput-boolean p1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->visible:Z

    invoke-direct {p0}, Lcom/oplus/anim/model/layer/BaseLayer;->invalidateSelf()V

    :cond_9
    return-void
.end method

.method private setupInOutAnimations()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->layerModel:Lcom/oplus/anim/model/layer/Layer;

    invoke-virtual {v0}, Lcom/oplus/anim/model/layer/Layer;->getInOutKeyframes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_44

    new-instance v0, Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    iget-object v2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->layerModel:Lcom/oplus/anim/model/layer/Layer;

    invoke-virtual {v2}, Lcom/oplus/anim/model/layer/Layer;->getInOutKeyframes()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->inOutAnimation:Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setIsDiscrete()V

    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->inOutAnimation:Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    new-instance v2, Lcom/oplus/anim/model/layer/a;

    invoke-direct {v2, p0}, Lcom/oplus/anim/model/layer/a;-><init>(Lcom/oplus/anim/model/layer/BaseLayer;)V

    invoke-virtual {v0, v2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->inOutAnimation:Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v2, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_3a

    goto :goto_3b

    :cond_3a
    const/4 v1, 0x0

    :goto_3b
    invoke-direct {p0, v1}, Lcom/oplus/anim/model/layer/BaseLayer;->setVisible(Z)V

    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->inOutAnimation:Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {p0, v0}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    goto :goto_47

    :cond_44
    invoke-direct {p0, v1}, Lcom/oplus/anim/model/layer/BaseLayer;->setVisible(Z)V

    :goto_47
    return-void
.end method


# virtual methods
.method public addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V
    .registers 2
    .param p1  # Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "**>;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object p0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->animations:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addValueCallback(Ljava/lang/Object;Lcom/oplus/anim/value/EffectiveValueCallback;)V
    .registers 3
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

    iget-object p0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->transform:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->applyValueCallback(Ljava/lang/Object;Lcom/oplus/anim/value/EffectiveValueCallback;)Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .registers 10

    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->drawTraceName:Ljava/lang/String;

    invoke-static {v0}, Lcom/oplus/anim/L;->beginSection(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->visible:Z

    if-eqz v0, :cond_19c

    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->layerModel:Lcom/oplus/anim/model/layer/Layer;

    invoke-virtual {v0}, Lcom/oplus/anim/model/layer/Layer;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_13

    goto/16 :goto_19c

    :cond_13
    invoke-direct {p0}, Lcom/oplus/anim/model/layer/BaseLayer;->buildParentLayerListIfNeeded()V

    const-string v0, "Layer#parentMatrix"

    invoke-static {v0}, Lcom/oplus/anim/L;->beginSection(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2d
    if-ltz v1, :cond_45

    iget-object v2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/oplus/anim/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/anim/model/layer/BaseLayer;

    iget-object v3, v3, Lcom/oplus/anim/model/layer/BaseLayer;->transform:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v3}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_2d

    :cond_45
    invoke-static {v0}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->transform:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v0}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    if-nez v0, :cond_53

    const/16 v0, 0x64

    goto :goto_63

    :cond_53
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->transform:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v0}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_63
    int-to-float p3, p3

    const/high16 v1, 0x437f0000  # 255.0f

    div-float/2addr p3, v1

    int-to-float v0, v0

    mul-float/2addr p3, v0

    const/high16 v0, 0x42c80000  # 100.0f

    div-float/2addr p3, v0

    mul-float/2addr p3, v1

    float-to-int p3, p3

    invoke-virtual {p0}, Lcom/oplus/anim/model/layer/BaseLayer;->hasMatteOnThisLayer()Z

    move-result v0

    const-string v1, "Layer#drawLayer"

    if-nez v0, :cond_9c

    invoke-virtual {p0}, Lcom/oplus/anim/model/layer/BaseLayer;->hasMasksOnThisLayer()Z

    move-result v0

    if-nez v0, :cond_9c

    iget-object p2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->transform:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v0}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    invoke-static {v1}, Lcom/oplus/anim/L;->beginSection(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/anim/model/layer/BaseLayer;->drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    invoke-static {v1}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    iget-object p1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->drawTraceName:Ljava/lang/String;

    invoke-static {p1}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/oplus/anim/model/layer/BaseLayer;->recordRenderTime(F)V

    return-void

    :cond_9c
    const-string v0, "Layer#computeBounds"

    invoke-static {v0}, Lcom/oplus/anim/L;->beginSection(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/oplus/anim/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/oplus/anim/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object v2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    invoke-direct {p0, v2, p2}, Lcom/oplus/anim/model/layer/BaseLayer;->intersectBoundsWithMatte(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    iget-object v2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/oplus/anim/model/layer/BaseLayer;->transform:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v3}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    iget-object v2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/oplus/anim/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v2, v3}, Lcom/oplus/anim/model/layer/BaseLayer;->intersectBoundsWithMask(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    iget-object v2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v2

    if-nez v2, :cond_d8

    iget-object v2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_d8
    invoke-static {v0}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v2, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_159

    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_159

    const-string v0, "Layer#saveLayer"

    invoke-static {v0}, Lcom/oplus/anim/L;->beginSection(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/oplus/anim/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    invoke-static {p1, v2, v3}, Lcom/oplus/anim/utils/Utils;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-static {v0}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    invoke-direct {p0, p1}, Lcom/oplus/anim/model/layer/BaseLayer;->clearCanvas(Landroid/graphics/Canvas;)V

    invoke-static {v1}, Lcom/oplus/anim/L;->beginSection(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, v2, p3}, Lcom/oplus/anim/model/layer/BaseLayer;->drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    invoke-static {v1}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    invoke-virtual {p0}, Lcom/oplus/anim/model/layer/BaseLayer;->hasMasksOnThisLayer()Z

    move-result v1

    if-eqz v1, :cond_120

    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v1}, Lcom/oplus/anim/model/layer/BaseLayer;->applyMasks(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    :cond_120
    invoke-virtual {p0}, Lcom/oplus/anim/model/layer/BaseLayer;->hasMatteOnThisLayer()Z

    move-result v1

    const-string v2, "Layer#restoreLayer"

    if-eqz v1, :cond_150

    const-string v1, "Layer#drawMatte"

    invoke-static {v1}, Lcom/oplus/anim/L;->beginSection(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/oplus/anim/L;->beginSection(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/oplus/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/oplus/anim/model/layer/BaseLayer;->mattePaint:Landroid/graphics/Paint;

    const/16 v5, 0x13

    invoke-static {p1, v3, v4, v5}, Lcom/oplus/anim/utils/Utils;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    invoke-static {v0}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    invoke-direct {p0, p1}, Lcom/oplus/anim/model/layer/BaseLayer;->clearCanvas(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->matteLayer:Lcom/oplus/anim/model/layer/BaseLayer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oplus/anim/model/layer/BaseLayer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    invoke-static {v2}, Lcom/oplus/anim/L;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-static {v2}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    invoke-static {v1}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    :cond_150
    invoke-static {v2}, Lcom/oplus/anim/L;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-static {v2}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    :cond_159
    iget-boolean p2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->outlineMasksAndMattes:Z

    if-eqz p2, :cond_192

    iget-object p2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->outlineMasksAndMattesPaint:Landroid/graphics/Paint;

    if-eqz p2, :cond_192

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->outlineMasksAndMattesPaint:Landroid/graphics/Paint;

    const p3, -0x3d7fd

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->outlineMasksAndMattesPaint:Landroid/graphics/Paint;

    const/high16 p3, 0x40800000  # 4.0f

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/oplus/anim/model/layer/BaseLayer;->outlineMasksAndMattesPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object p2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->outlineMasksAndMattesPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->outlineMasksAndMattesPaint:Landroid/graphics/Paint;

    const p3, 0x50ebebeb

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/oplus/anim/model/layer/BaseLayer;->outlineMasksAndMattesPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_192
    iget-object p1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->drawTraceName:Ljava/lang/String;

    invoke-static {p1}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/oplus/anim/model/layer/BaseLayer;->recordRenderTime(F)V

    return-void

    :cond_19c
    :goto_19c
    iget-object p0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->drawTraceName:Ljava/lang/String;

    invoke-static {p0}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    return-void
.end method

.method public abstract drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
.end method

.method public getBlurEffect()Lcom/oplus/anim/model/content/BlurEffect;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->layerModel:Lcom/oplus/anim/model/layer/Layer;

    invoke-virtual {p0}, Lcom/oplus/anim/model/layer/Layer;->getBlurEffect()Lcom/oplus/anim/model/content/BlurEffect;

    move-result-object p0

    return-object p0
.end method

.method public getBlurMaskFilter(F)Landroid/graphics/BlurMaskFilter;
    .registers 5

    iget v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->blurMaskFilterRadius:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_9

    iget-object p0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->blurMaskFilter:Landroid/graphics/BlurMaskFilter;

    return-object p0

    :cond_9
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    const/high16 v1, 0x40000000  # 2.0f

    div-float v1, p1, v1

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->blurMaskFilter:Landroid/graphics/BlurMaskFilter;

    iput p1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->blurMaskFilterRadius:F

    return-object v0
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .registers 5
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iget-object p1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-direct {p0}, Lcom/oplus/anim/model/layer/BaseLayer;->buildParentLayerListIfNeeded()V

    iget-object p1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    if-eqz p3, :cond_41

    iget-object p1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    if-eqz p1, :cond_32

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1a
    if-ltz p1, :cond_41

    iget-object p2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    iget-object p3, p0, Lcom/oplus/anim/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oplus/anim/model/layer/BaseLayer;

    iget-object p3, p3, Lcom/oplus/anim/model/layer/BaseLayer;->transform:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {p3}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_1a

    :cond_32
    iget-object p1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->parentLayer:Lcom/oplus/anim/model/layer/BaseLayer;

    if-eqz p1, :cond_41

    iget-object p2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    iget-object p1, p1, Lcom/oplus/anim/model/layer/BaseLayer;->transform:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {p1}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_41
    iget-object p1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    iget-object p0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->transform:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {p0}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    return-void
.end method

.method public getDropShadowEffect()Lcom/oplus/anim/parser/DropShadowEffect;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->layerModel:Lcom/oplus/anim/model/layer/Layer;

    invoke-virtual {p0}, Lcom/oplus/anim/model/layer/Layer;->getDropShadowEffect()Lcom/oplus/anim/parser/DropShadowEffect;

    move-result-object p0

    return-object p0
.end method

.method public getLayerModel()Lcom/oplus/anim/model/layer/Layer;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->layerModel:Lcom/oplus/anim/model/layer/Layer;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->layerModel:Lcom/oplus/anim/model/layer/Layer;

    invoke-virtual {p0}, Lcom/oplus/anim/model/layer/Layer;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasMasksOnThisLayer()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->mask:Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public hasMatteOnThisLayer()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->matteLayer:Lcom/oplus/anim/model/layer/BaseLayer;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public onValueChanged()V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/anim/model/layer/BaseLayer;->invalidateSelf()V

    return-void
.end method

.method public removeAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "**>;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->animations:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public resolveChildKeyPath(Lcom/oplus/anim/model/KeyPath;ILjava/util/List;Lcom/oplus/anim/model/KeyPath;)V
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

    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->matteLayer:Lcom/oplus/anim/model/layer/BaseLayer;

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Lcom/oplus/anim/model/layer/BaseLayer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/oplus/anim/model/KeyPath;->addKey(Ljava/lang/String;)Lcom/oplus/anim/model/KeyPath;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->matteLayer:Lcom/oplus/anim/model/layer/BaseLayer;

    invoke-virtual {v1}, Lcom/oplus/anim/model/layer/BaseLayer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/oplus/anim/model/KeyPath;->fullyResolvesTo(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->matteLayer:Lcom/oplus/anim/model/layer/BaseLayer;

    invoke-virtual {v0, v1}, Lcom/oplus/anim/model/KeyPath;->resolve(Lcom/oplus/anim/model/KeyPathElement;)Lcom/oplus/anim/model/KeyPath;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_21
    invoke-virtual {p0}, Lcom/oplus/anim/model/layer/BaseLayer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/oplus/anim/model/KeyPath;->propagateToChildren(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->matteLayer:Lcom/oplus/anim/model/layer/BaseLayer;

    invoke-virtual {v1}, Lcom/oplus/anim/model/layer/BaseLayer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/oplus/anim/model/KeyPath;->incrementDepthBy(Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v1, p2

    iget-object v2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->matteLayer:Lcom/oplus/anim/model/layer/BaseLayer;

    invoke-virtual {v2, p1, v1, p3, v0}, Lcom/oplus/anim/model/layer/BaseLayer;->resolveChildKeyPath(Lcom/oplus/anim/model/KeyPath;ILjava/util/List;Lcom/oplus/anim/model/KeyPath;)V

    :cond_3b
    invoke-virtual {p0}, Lcom/oplus/anim/model/layer/BaseLayer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/oplus/anim/model/KeyPath;->matches(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_46

    return-void

    :cond_46
    invoke-virtual {p0}, Lcom/oplus/anim/model/layer/BaseLayer;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "__container"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    invoke-virtual {p0}, Lcom/oplus/anim/model/layer/BaseLayer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/oplus/anim/model/KeyPath;->addKey(Ljava/lang/String;)Lcom/oplus/anim/model/KeyPath;

    move-result-object p4

    invoke-virtual {p0}, Lcom/oplus/anim/model/layer/BaseLayer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/oplus/anim/model/KeyPath;->fullyResolvesTo(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-virtual {p4, p0}, Lcom/oplus/anim/model/KeyPath;->resolve(Lcom/oplus/anim/model/KeyPathElement;)Lcom/oplus/anim/model/KeyPath;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6b
    invoke-virtual {p0}, Lcom/oplus/anim/model/layer/BaseLayer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/oplus/anim/model/KeyPath;->propagateToChildren(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_81

    invoke-virtual {p0}, Lcom/oplus/anim/model/layer/BaseLayer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/oplus/anim/model/KeyPath;->incrementDepthBy(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/oplus/anim/model/layer/BaseLayer;->resolveChildKeyPath(Lcom/oplus/anim/model/KeyPath;ILjava/util/List;Lcom/oplus/anim/model/KeyPath;)V

    :cond_81
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

    return-void
.end method

.method public setMatteLayer(Lcom/oplus/anim/model/layer/BaseLayer;)V
    .registers 2
    .param p1  # Lcom/oplus/anim/model/layer/BaseLayer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->matteLayer:Lcom/oplus/anim/model/layer/BaseLayer;

    return-void
.end method

.method public setOutlineMasksAndMattes(Z)V
    .registers 3

    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->outlineMasksAndMattesPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_d

    new-instance v0, Lcom/oplus/anim/animation/LPaint;

    invoke-direct {v0}, Lcom/oplus/anim/animation/LPaint;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->outlineMasksAndMattesPaint:Landroid/graphics/Paint;

    :cond_d
    iput-boolean p1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->outlineMasksAndMattes:Z

    return-void
.end method

.method public setParentLayer(Lcom/oplus/anim/model/layer/BaseLayer;)V
    .registers 2
    .param p1  # Lcom/oplus/anim/model/layer/BaseLayer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/oplus/anim/model/layer/BaseLayer;->parentLayer:Lcom/oplus/anim/model/layer/BaseLayer;

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

    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->transform:Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/animation/keyframe/TransformKeyframeAnimation;->setProgress(F)V

    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->mask:Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    move v0, v1

    :goto_b
    iget-object v2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->mask:Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {v2}, Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_29

    iget-object v2, p0, Lcom/oplus/anim/model/layer/BaseLayer;->mask:Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {v2}, Lcom/oplus/anim/animation/keyframe/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v2, p1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_29
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->inOutAnimation:Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    if-eqz v0, :cond_30

    invoke-virtual {v0, p1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    :cond_30
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->matteLayer:Lcom/oplus/anim/model/layer/BaseLayer;

    if-eqz v0, :cond_37

    invoke-virtual {v0, p1}, Lcom/oplus/anim/model/layer/BaseLayer;->setProgress(F)V

    :cond_37
    :goto_37
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->animations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4d

    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer;->animations:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    :cond_4d
    return-void
.end method
