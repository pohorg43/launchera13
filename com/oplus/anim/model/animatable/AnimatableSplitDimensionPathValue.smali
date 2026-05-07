.class public Lcom/oplus/anim/model/animatable/AnimatableSplitDimensionPathValue;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/anim/model/animatable/AnimatableValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oplus/anim/model/animatable/AnimatableValue<",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private final animatableXDimension:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

.field private final animatableYDimension:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;


# direct methods
.method public constructor <init>(Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/anim/model/animatable/AnimatableSplitDimensionPathValue;->animatableXDimension:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    iput-object p2, p0, Lcom/oplus/anim/model/animatable/AnimatableSplitDimensionPathValue;->animatableYDimension:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    return-void
.end method


# virtual methods
.method public createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/oplus/anim/animation/keyframe/SplitDimensionPathKeyframeAnimation;

    iget-object v1, p0, Lcom/oplus/anim/model/animatable/AnimatableSplitDimensionPathValue;->animatableXDimension:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    invoke-virtual {v1}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v1

    iget-object p0, p0, Lcom/oplus/anim/model/animatable/AnimatableSplitDimensionPathValue;->animatableYDimension:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    invoke-virtual {p0}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/oplus/anim/animation/keyframe/SplitDimensionPathKeyframeAnimation;-><init>(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    return-object v0
.end method

.method public getKeyframes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/anim/value/Keyframe<",
            "Landroid/graphics/PointF;",
            ">;>;"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cannot call getKeyframes on AnimatableSplitDimensionPathValue."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isStatic()Z
    .registers 2

    iget-object v0, p0, Lcom/oplus/anim/model/animatable/AnimatableSplitDimensionPathValue;->animatableXDimension:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    invoke-virtual {v0}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/oplus/anim/model/animatable/AnimatableSplitDimensionPathValue;->animatableYDimension:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    invoke-virtual {p0}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->isStatic()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method
