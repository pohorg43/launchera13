.class public Lcom/oplus/anim/model/animatable/AnimatablePathValue;
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
.field private final keyframes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/anim/value/Keyframe<",
            "Landroid/graphics/PointF;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/anim/value/Keyframe<",
            "Landroid/graphics/PointF;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/anim/model/animatable/AnimatablePathValue;->keyframes:Ljava/util/List;

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

    iget-object v0, p0, Lcom/oplus/anim/model/animatable/AnimatablePathValue;->keyframes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/anim/value/Keyframe;

    invoke-virtual {v0}, Lcom/oplus/anim/value/Keyframe;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_17

    new-instance v0, Lcom/oplus/anim/animation/keyframe/PointKeyframeAnimation;

    iget-object p0, p0, Lcom/oplus/anim/model/animatable/AnimatablePathValue;->keyframes:Ljava/util/List;

    invoke-direct {v0, p0}, Lcom/oplus/anim/animation/keyframe/PointKeyframeAnimation;-><init>(Ljava/util/List;)V

    return-object v0

    :cond_17
    new-instance v0, Lcom/oplus/anim/animation/keyframe/PathKeyframeAnimation;

    iget-object p0, p0, Lcom/oplus/anim/model/animatable/AnimatablePathValue;->keyframes:Ljava/util/List;

    invoke-direct {v0, p0}, Lcom/oplus/anim/animation/keyframe/PathKeyframeAnimation;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getKeyframes()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/anim/value/Keyframe<",
            "Landroid/graphics/PointF;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/anim/model/animatable/AnimatablePathValue;->keyframes:Ljava/util/List;

    return-object p0
.end method

.method public isStatic()Z
    .registers 4

    iget-object v0, p0, Lcom/oplus/anim/model/animatable/AnimatablePathValue;->keyframes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_19

    iget-object p0, p0, Lcom/oplus/anim/model/animatable/AnimatablePathValue;->keyframes:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/anim/value/Keyframe;

    invoke-virtual {p0}, Lcom/oplus/anim/value/Keyframe;->isStatic()Z

    move-result p0

    if-eqz p0, :cond_19

    move v1, v2

    :cond_19
    return v1
.end method
