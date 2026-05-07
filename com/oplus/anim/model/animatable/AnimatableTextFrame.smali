.class public Lcom/oplus/anim/model/animatable/AnimatableTextFrame;
.super Lcom/oplus/anim/model/animatable/BaseAnimatableValue;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/anim/model/animatable/BaseAnimatableValue<",
        "Lcom/oplus/anim/model/DocumentData;",
        "Lcom/oplus/anim/model/DocumentData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/anim/value/Keyframe<",
            "Lcom/oplus/anim/model/DocumentData;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/oplus/anim/model/animatable/BaseAnimatableValue;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/anim/model/animatable/AnimatableTextFrame;->createAnimation()Lcom/oplus/anim/animation/keyframe/TextKeyframeAnimation;

    move-result-object p0

    return-object p0
.end method

.method public createAnimation()Lcom/oplus/anim/animation/keyframe/TextKeyframeAnimation;
    .registers 2

    new-instance v0, Lcom/oplus/anim/animation/keyframe/TextKeyframeAnimation;

    iget-object p0, p0, Lcom/oplus/anim/model/animatable/BaseAnimatableValue;->keyframes:Ljava/util/List;

    invoke-direct {v0, p0}, Lcom/oplus/anim/animation/keyframe/TextKeyframeAnimation;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic getKeyframes()Ljava/util/List;
    .registers 1

    invoke-super {p0}, Lcom/oplus/anim/model/animatable/BaseAnimatableValue;->getKeyframes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic isStatic()Z
    .registers 1

    invoke-super {p0}, Lcom/oplus/anim/model/animatable/BaseAnimatableValue;->isStatic()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .registers 1

    invoke-super {p0}, Lcom/oplus/anim/model/animatable/BaseAnimatableValue;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
