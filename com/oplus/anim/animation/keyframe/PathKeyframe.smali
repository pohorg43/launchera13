.class public Lcom/oplus/anim/animation/keyframe/PathKeyframe;
.super Lcom/oplus/anim/value/Keyframe;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/anim/value/Keyframe<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private path:Landroid/graphics/Path;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final pointKeyFrame:Lcom/oplus/anim/value/Keyframe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/value/Keyframe<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oplus/anim/EffectiveAnimationComposition;Lcom/oplus/anim/value/Keyframe;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            "Lcom/oplus/anim/value/Keyframe<",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    iget-object v2, p2, Lcom/oplus/anim/value/Keyframe;->startValue:Ljava/lang/Object;

    iget-object v3, p2, Lcom/oplus/anim/value/Keyframe;->endValue:Ljava/lang/Object;

    iget-object v4, p2, Lcom/oplus/anim/value/Keyframe;->interpolator:Landroid/view/animation/Interpolator;

    iget-object v5, p2, Lcom/oplus/anim/value/Keyframe;->xInterpolator:Landroid/view/animation/Interpolator;

    iget-object v6, p2, Lcom/oplus/anim/value/Keyframe;->yInterpolator:Landroid/view/animation/Interpolator;

    iget v7, p2, Lcom/oplus/anim/value/Keyframe;->startFrame:F

    iget-object v8, p2, Lcom/oplus/anim/value/Keyframe;->endFrame:Ljava/lang/Float;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/oplus/anim/value/Keyframe;-><init>(Lcom/oplus/anim/EffectiveAnimationComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    iput-object p2, p0, Lcom/oplus/anim/animation/keyframe/PathKeyframe;->pointKeyFrame:Lcom/oplus/anim/value/Keyframe;

    invoke-virtual {p0}, Lcom/oplus/anim/animation/keyframe/PathKeyframe;->createPath()V

    return-void
.end method


# virtual methods
.method public createPath()V
    .registers 5

    iget-object v0, p0, Lcom/oplus/anim/value/Keyframe;->endValue:Ljava/lang/Object;

    if-eqz v0, :cond_1b

    iget-object v1, p0, Lcom/oplus/anim/value/Keyframe;->startValue:Ljava/lang/Object;

    if-eqz v1, :cond_1b

    check-cast v1, Landroid/graphics/PointF;

    move-object v2, v0

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v0}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    iget-object v1, p0, Lcom/oplus/anim/value/Keyframe;->startValue:Ljava/lang/Object;

    if-eqz v1, :cond_36

    iget-object v2, p0, Lcom/oplus/anim/value/Keyframe;->endValue:Ljava/lang/Object;

    if-eqz v2, :cond_36

    if-nez v0, :cond_36

    check-cast v1, Landroid/graphics/PointF;

    check-cast v2, Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/oplus/anim/animation/keyframe/PathKeyframe;->pointKeyFrame:Lcom/oplus/anim/value/Keyframe;

    iget-object v3, v0, Lcom/oplus/anim/value/Keyframe;->pathCp1:Landroid/graphics/PointF;

    iget-object v0, v0, Lcom/oplus/anim/value/Keyframe;->pathCp2:Landroid/graphics/PointF;

    invoke-static {v1, v2, v3, v0}, Lcom/oplus/anim/utils/Utils;->createPath(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/animation/keyframe/PathKeyframe;->path:Landroid/graphics/Path;

    :cond_36
    return-void
.end method

.method public getPath()Landroid/graphics/Path;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/oplus/anim/animation/keyframe/PathKeyframe;->path:Landroid/graphics/Path;

    return-object p0
.end method
