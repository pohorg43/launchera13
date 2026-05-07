.class public Lcom/oplus/anim/animation/content/PolystarContent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/anim/animation/content/PathContent;
.implements Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/oplus/anim/animation/content/KeyPathElementContent;


# static fields
.field private static final POLYGON_MAGIC_NUMBER:F = 0.25f

.field private static final POLYSTAR_MAGIC_NUMBER:F = 0.47829f


# instance fields
.field private final effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

.field private final hidden:Z

.field private final innerRadiusAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
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

.field private final innerRoundednessAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
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

.field private isPathValid:Z

.field private final name:Ljava/lang/String;

.field private final outerRadiusAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final outerRoundednessAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final path:Landroid/graphics/Path;

.field private final pointsAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final positionAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final rotationAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final trimPaths:Lcom/oplus/anim/animation/content/CompoundTrimPathContent;

.field private final type:Lcom/oplus/anim/model/content/PolystarShape$Type;


# direct methods
.method public constructor <init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;Lcom/oplus/anim/model/content/PolystarShape;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    new-instance v0, Lcom/oplus/anim/animation/content/CompoundTrimPathContent;

    invoke-direct {v0}, Lcom/oplus/anim/animation/content/CompoundTrimPathContent;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->trimPaths:Lcom/oplus/anim/animation/content/CompoundTrimPathContent;

    iput-object p1, p0, Lcom/oplus/anim/animation/content/PolystarContent;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p3}, Lcom/oplus/anim/model/content/PolystarShape;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/anim/animation/content/PolystarContent;->name:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/oplus/anim/model/content/PolystarShape;->getType()Lcom/oplus/anim/model/content/PolystarShape$Type;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/anim/animation/content/PolystarContent;->type:Lcom/oplus/anim/model/content/PolystarShape$Type;

    invoke-virtual {p3}, Lcom/oplus/anim/model/content/PolystarShape;->isHidden()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->hidden:Z

    invoke-virtual {p3}, Lcom/oplus/anim/model/content/PolystarShape;->getPoints()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->pointsAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p3}, Lcom/oplus/anim/model/content/PolystarShape;->getPosition()Lcom/oplus/anim/model/animatable/AnimatableValue;

    move-result-object v1

    invoke-interface {v1}, Lcom/oplus/anim/model/animatable/AnimatableValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/anim/animation/content/PolystarContent;->positionAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p3}, Lcom/oplus/anim/model/content/PolystarShape;->getRotation()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v2

    iput-object v2, p0, Lcom/oplus/anim/animation/content/PolystarContent;->rotationAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p3}, Lcom/oplus/anim/model/content/PolystarShape;->getOuterRadius()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v3

    iput-object v3, p0, Lcom/oplus/anim/animation/content/PolystarContent;->outerRadiusAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p3}, Lcom/oplus/anim/model/content/PolystarShape;->getOuterRoundedness()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v4

    iput-object v4, p0, Lcom/oplus/anim/animation/content/PolystarContent;->outerRoundednessAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    sget-object v5, Lcom/oplus/anim/model/content/PolystarShape$Type;->STAR:Lcom/oplus/anim/model/content/PolystarShape$Type;

    if-ne p1, v5, :cond_70

    invoke-virtual {p3}, Lcom/oplus/anim/model/content/PolystarShape;->getInnerRadius()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v6

    iput-object v6, p0, Lcom/oplus/anim/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p3}, Lcom/oplus/anim/model/content/PolystarShape;->getInnerRoundedness()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object p3

    invoke-virtual {p3}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p3

    iput-object p3, p0, Lcom/oplus/anim/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_75

    :cond_70
    const/4 p3, 0x0

    iput-object p3, p0, Lcom/oplus/anim/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    iput-object p3, p0, Lcom/oplus/anim/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    :goto_75
    invoke-virtual {p2, v0}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    invoke-virtual {p2, v1}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    invoke-virtual {p2, v2}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    invoke-virtual {p2, v3}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    invoke-virtual {p2, v4}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    if-ne p1, v5, :cond_90

    iget-object p3, p0, Lcom/oplus/anim/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, p3}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    iget-object p3, p0, Lcom/oplus/anim/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, p3}, Lcom/oplus/anim/model/layer/BaseLayer;->addAnimation(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_90
    invoke-virtual {v0, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    invoke-virtual {v1, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    invoke-virtual {v2, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    invoke-virtual {v3, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    invoke-virtual {v4, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    if-ne p1, v5, :cond_ab

    iget-object p1, p0, Lcom/oplus/anim/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    iget-object p1, p0, Lcom/oplus/anim/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    :cond_ab
    return-void
.end method

.method private createPolygonPath()V
    .registers 32

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oplus/anim/animation/content/PolystarContent;->pointsAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget-object v2, v0, Lcom/oplus/anim/animation/content/PolystarContent;->rotationAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-nez v2, :cond_1b

    const-wide/16 v2, 0x0

    goto :goto_26

    :cond_1b
    invoke-virtual {v2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    :goto_26
    const-wide v4, 0x4056800000000000L  # 90.0

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    const-wide v4, 0x401921fb54442d18L  # 6.283185307179586

    int-to-double v6, v1

    div-double/2addr v4, v6

    double-to-float v1, v4

    iget-object v4, v0, Lcom/oplus/anim/animation/content/PolystarContent;->outerRoundednessAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v4}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/high16 v5, 0x42c80000  # 100.0f

    div-float/2addr v4, v5

    iget-object v5, v0, Lcom/oplus/anim/animation/content/PolystarContent;->outerRadiusAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v5}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    float-to-double v8, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v10, v8

    double-to-float v10, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double/2addr v11, v8

    double-to-float v11, v11

    iget-object v12, v0, Lcom/oplus/anim/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v12, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    float-to-double v12, v1

    add-double/2addr v2, v12

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    const/4 v1, 0x0

    :goto_6c
    int-to-double v14, v1

    cmpg-double v14, v14, v6

    if-gez v14, :cond_f3

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v14, v8

    double-to-float v14, v14

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    move-wide/from16 v23, v6

    mul-double v6, v15, v8

    double-to-float v6, v6

    const/4 v7, 0x0

    cmpl-float v7, v4, v7

    if-eqz v7, :cond_d9

    move-wide/from16 v25, v8

    float-to-double v7, v11

    move v9, v1

    move-wide/from16 v27, v2

    float-to-double v1, v10

    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    const-wide v7, 0x3ff921fb54442d18L  # 1.5707963267948966

    sub-double/2addr v1, v7

    double-to-float v1, v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v3, v7

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    float-to-double v7, v6

    move-wide/from16 v29, v12

    float-to-double v12, v14

    invoke-static {v7, v8, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    const-wide v12, 0x3ff921fb54442d18L  # 1.5707963267948966

    sub-double/2addr v7, v12

    double-to-float v2, v7

    float-to-double v7, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v2, v12

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float v8, v5, v4

    const/high16 v12, 0x3e800000  # 0.25f

    mul-float/2addr v8, v12

    mul-float/2addr v3, v8

    mul-float/2addr v1, v8

    mul-float/2addr v2, v8

    mul-float/2addr v8, v7

    iget-object v7, v0, Lcom/oplus/anim/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    sub-float v17, v10, v3

    sub-float v18, v11, v1

    add-float v19, v14, v2

    add-float v20, v6, v8

    move-object/from16 v16, v7

    move/from16 v21, v14

    move/from16 v22, v6

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_e5

    :cond_d9
    move-wide/from16 v27, v2

    move-wide/from16 v25, v8

    move-wide/from16 v29, v12

    move v9, v1

    iget-object v1, v0, Lcom/oplus/anim/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v1, v14, v6}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_e5
    add-double v2, v27, v29

    add-int/lit8 v1, v9, 0x1

    move v11, v6

    move v10, v14

    move-wide/from16 v6, v23

    move-wide/from16 v8, v25

    move-wide/from16 v12, v29

    goto/16 :goto_6c

    :cond_f3
    iget-object v1, v0, Lcom/oplus/anim/animation/content/PolystarContent;->positionAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-object v2, v0, Lcom/oplus/anim/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->offset(FF)V

    iget-object v0, v0, Lcom/oplus/anim/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private createStarPath()V
    .registers 42

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oplus/anim/animation/content/PolystarContent;->pointsAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, v0, Lcom/oplus/anim/animation/content/PolystarContent;->rotationAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-nez v2, :cond_15

    const-wide/16 v2, 0x0

    goto :goto_20

    :cond_15
    invoke-virtual {v2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    :goto_20
    const-wide v4, 0x4056800000000000L  # 90.0

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    const-wide v4, 0x401921fb54442d18L  # 6.283185307179586

    float-to-double v6, v1

    div-double/2addr v4, v6

    double-to-float v4, v4

    const/high16 v5, 0x40000000  # 2.0f

    div-float v5, v4, v5

    float-to-int v8, v1

    int-to-float v8, v8

    sub-float/2addr v1, v8

    const/4 v8, 0x0

    cmpl-float v9, v1, v8

    if-eqz v9, :cond_44

    const/high16 v10, 0x3f800000  # 1.0f

    sub-float/2addr v10, v1

    mul-float/2addr v10, v5

    float-to-double v10, v10

    add-double/2addr v2, v10

    :cond_44
    iget-object v10, v0, Lcom/oplus/anim/animation/content/PolystarContent;->outerRadiusAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v10}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    iget-object v11, v0, Lcom/oplus/anim/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v11}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    iget-object v12, v0, Lcom/oplus/anim/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    const/high16 v13, 0x42c80000  # 100.0f

    if-eqz v12, :cond_6e

    invoke-virtual {v12}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    div-float/2addr v12, v13

    goto :goto_6f

    :cond_6e
    move v12, v8

    :goto_6f
    iget-object v14, v0, Lcom/oplus/anim/animation/content/PolystarContent;->outerRoundednessAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v14, :cond_7e

    invoke-virtual {v14}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    div-float/2addr v8, v13

    :cond_7e
    if-eqz v9, :cond_a4

    invoke-static {v10, v11, v1, v11}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result v13

    float-to-double v14, v13

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    move/from16 v19, v8

    move/from16 v18, v9

    mul-double v8, v16, v14

    double-to-float v8, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    double-to-float v9, v14

    iget-object v14, v0, Lcom/oplus/anim/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v14, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    mul-float v14, v4, v1

    const/high16 v15, 0x40000000  # 2.0f

    div-float/2addr v14, v15

    float-to-double v14, v14

    add-double/2addr v2, v14

    goto :goto_c2

    :cond_a4
    move/from16 v19, v8

    move/from16 v18, v9

    float-to-double v8, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v13, v8

    double-to-float v13, v13

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v14, v8

    double-to-float v9, v14

    iget-object v8, v0, Lcom/oplus/anim/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v8, v13, v9}, Landroid/graphics/Path;->moveTo(FF)V

    float-to-double v14, v5

    add-double/2addr v2, v14

    const/4 v8, 0x0

    move/from16 v40, v13

    move v13, v8

    move/from16 v8, v40

    :goto_c2
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    const-wide/high16 v14, 0x4000000000000000L  # 2.0

    mul-double/2addr v6, v14

    const/16 v16, 0x0

    move/from16 v20, v10

    move/from16 v21, v11

    move/from16 v14, v16

    move v15, v14

    :goto_d2
    int-to-double v10, v14

    cmpg-double v22, v10, v6

    if-gez v22, :cond_1dc

    if-eqz v15, :cond_dc

    move/from16 v22, v20

    goto :goto_de

    :cond_dc
    move/from16 v22, v21

    :goto_de
    const/16 v23, 0x0

    cmpl-float v23, v13, v23

    const-wide/high16 v16, 0x4000000000000000L  # 2.0

    if-eqz v23, :cond_f9

    sub-double v24, v6, v16

    cmpl-double v24, v10, v24

    if-nez v24, :cond_f9

    mul-float v24, v4, v1

    const/high16 v25, 0x40000000  # 2.0f

    div-float v24, v24, v25

    move/from16 v40, v24

    move/from16 v24, v4

    move/from16 v4, v40

    goto :goto_fc

    :cond_f9
    move/from16 v24, v4

    move v4, v5

    :goto_fc
    const-wide/high16 v25, 0x3ff0000000000000L  # 1.0

    if-eqz v23, :cond_10c

    sub-double v27, v6, v25

    cmpl-double v23, v10, v27

    if-nez v23, :cond_10c

    move/from16 v22, v4

    move/from16 v23, v5

    move v5, v13

    goto :goto_112

    :cond_10c
    move/from16 v23, v5

    move/from16 v5, v22

    move/from16 v22, v4

    :goto_112
    float-to-double v4, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v27

    move-wide/from16 v29, v10

    mul-double v10, v27, v4

    double-to-float v10, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v27

    mul-double v4, v4, v27

    double-to-float v4, v4

    const/4 v5, 0x0

    cmpl-float v11, v12, v5

    if-nez v11, :cond_13c

    cmpl-float v5, v19, v5

    if-nez v5, :cond_13c

    iget-object v5, v0, Lcom/oplus/anim/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v5, v10, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-wide/from16 v27, v2

    move/from16 v38, v4

    move v5, v12

    move/from16 v39, v13

    :goto_138
    move/from16 v2, v22

    goto/16 :goto_1c9

    :cond_13c
    move v5, v12

    float-to-double v11, v9

    move-wide/from16 v27, v2

    float-to-double v2, v8

    invoke-static {v11, v12, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    const-wide v11, 0x3ff921fb54442d18L  # 1.5707963267948966

    sub-double/2addr v2, v11

    double-to-float v2, v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v11, v11

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    move v3, v13

    float-to-double v12, v4

    move/from16 v39, v3

    move/from16 v38, v4

    float-to-double v3, v10

    invoke-static {v12, v13, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    const-wide v12, 0x3ff921fb54442d18L  # 1.5707963267948966

    sub-double/2addr v3, v12

    double-to-float v3, v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v12, v12

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    if-eqz v15, :cond_178

    move v4, v5

    goto :goto_17a

    :cond_178
    move/from16 v4, v19

    :goto_17a
    if-eqz v15, :cond_17f

    move/from16 v13, v19

    goto :goto_180

    :cond_17f
    move v13, v5

    :goto_180
    if-eqz v15, :cond_185

    move/from16 v31, v21

    goto :goto_187

    :cond_185
    move/from16 v31, v20

    :goto_187
    if-eqz v15, :cond_18c

    move/from16 v32, v20

    goto :goto_18e

    :cond_18c
    move/from16 v32, v21

    :goto_18e
    mul-float v31, v31, v4

    const v4, 0x3ef4e26d  # 0.47829f

    mul-float v31, v31, v4

    mul-float v11, v11, v31

    mul-float v31, v31, v2

    mul-float v32, v32, v13

    mul-float v32, v32, v4

    mul-float v12, v12, v32

    mul-float v32, v32, v3

    if-eqz v18, :cond_1b2

    if-nez v14, :cond_1a9

    mul-float/2addr v11, v1

    mul-float v31, v31, v1

    goto :goto_1b2

    :cond_1a9
    sub-double v2, v6, v25

    cmpl-double v2, v29, v2

    if-nez v2, :cond_1b2

    mul-float/2addr v12, v1

    mul-float v32, v32, v1

    :cond_1b2
    :goto_1b2
    iget-object v2, v0, Lcom/oplus/anim/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    sub-float v3, v8, v11

    sub-float v33, v9, v31

    add-float v34, v10, v12

    add-float v35, v38, v32

    move-object/from16 v31, v2

    move/from16 v32, v3

    move/from16 v36, v10

    move/from16 v37, v38

    invoke-virtual/range {v31 .. v37}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto/16 :goto_138

    :goto_1c9
    float-to-double v2, v2

    add-double v2, v27, v2

    xor-int/lit8 v15, v15, 0x1

    add-int/lit8 v14, v14, 0x1

    move v12, v5

    move v8, v10

    move/from16 v5, v23

    move/from16 v4, v24

    move/from16 v9, v38

    move/from16 v13, v39

    goto/16 :goto_d2

    :cond_1dc
    iget-object v1, v0, Lcom/oplus/anim/animation/content/PolystarContent;->positionAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-object v2, v0, Lcom/oplus/anim/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->offset(FF)V

    iget-object v0, v0, Lcom/oplus/anim/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private invalidate()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->isPathValid:Z

    iget-object p0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->effectiveDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->invalidateSelf()V

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

    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->POLYSTAR_POINTS:Ljava/lang/Float;

    if-ne p1, v0, :cond_a

    iget-object p0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->pointsAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, p2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto :goto_49

    :cond_a
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->POLYSTAR_ROTATION:Ljava/lang/Float;

    if-ne p1, v0, :cond_14

    iget-object p0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->rotationAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, p2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto :goto_49

    :cond_14
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->POSITION:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_1e

    iget-object p0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->positionAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, p2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto :goto_49

    :cond_1e
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->POLYSTAR_INNER_RADIUS:Ljava/lang/Float;

    if-ne p1, v0, :cond_2a

    iget-object v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_2a

    invoke-virtual {v0, p2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto :goto_49

    :cond_2a
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->POLYSTAR_OUTER_RADIUS:Ljava/lang/Float;

    if-ne p1, v0, :cond_34

    iget-object p0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->outerRadiusAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, p2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto :goto_49

    :cond_34
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->POLYSTAR_INNER_ROUNDEDNESS:Ljava/lang/Float;

    if-ne p1, v0, :cond_40

    iget-object v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_40

    invoke-virtual {v0, p2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    goto :goto_49

    :cond_40
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationProperty;->POLYSTAR_OUTER_ROUNDEDNESS:Ljava/lang/Float;

    if-ne p1, v0, :cond_49

    iget-object p0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->outerRoundednessAnimation:Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, p2}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V

    :cond_49
    :goto_49
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Landroid/graphics/Path;
    .registers 4

    iget-boolean v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->isPathValid:Z

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    return-object p0

    :cond_7
    iget-object v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-boolean v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->hidden:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    iput-boolean v1, p0, Lcom/oplus/anim/animation/content/PolystarContent;->isPathValid:Z

    iget-object p0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    return-object p0

    :cond_16
    sget-object v0, Lcom/oplus/anim/animation/content/PolystarContent$1;->$SwitchMap$com$oplus$anim$model$content$PolystarShape$Type:[I

    iget-object v2, p0, Lcom/oplus/anim/animation/content/PolystarContent;->type:Lcom/oplus/anim/model/content/PolystarShape$Type;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v1, :cond_2a

    const/4 v2, 0x2

    if-eq v0, v2, :cond_26

    goto :goto_2d

    :cond_26
    invoke-direct {p0}, Lcom/oplus/anim/animation/content/PolystarContent;->createPolygonPath()V

    goto :goto_2d

    :cond_2a
    invoke-direct {p0}, Lcom/oplus/anim/animation/content/PolystarContent;->createStarPath()V

    :goto_2d
    iget-object v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->trimPaths:Lcom/oplus/anim/animation/content/CompoundTrimPathContent;

    iget-object v2, p0, Lcom/oplus/anim/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v2}, Lcom/oplus/anim/animation/content/CompoundTrimPathContent;->apply(Landroid/graphics/Path;)V

    iput-boolean v1, p0, Lcom/oplus/anim/animation/content/PolystarContent;->isPathValid:Z

    iget-object p0, p0, Lcom/oplus/anim/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    return-object p0
.end method

.method public onValueChanged()V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/anim/animation/content/PolystarContent;->invalidate()V

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

    const/4 p2, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_26

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/anim/animation/content/Content;

    instance-of v1, v0, Lcom/oplus/anim/animation/content/TrimPathContent;

    if-eqz v1, :cond_23

    check-cast v0, Lcom/oplus/anim/animation/content/TrimPathContent;

    invoke-virtual {v0}, Lcom/oplus/anim/animation/content/TrimPathContent;->getType()Lcom/oplus/anim/model/content/ShapeTrimPath$Type;

    move-result-object v1

    sget-object v2, Lcom/oplus/anim/model/content/ShapeTrimPath$Type;->SIMULTANEOUSLY:Lcom/oplus/anim/model/content/ShapeTrimPath$Type;

    if-ne v1, v2, :cond_23

    iget-object v1, p0, Lcom/oplus/anim/animation/content/PolystarContent;->trimPaths:Lcom/oplus/anim/animation/content/CompoundTrimPathContent;

    invoke-virtual {v1, v0}, Lcom/oplus/anim/animation/content/CompoundTrimPathContent;->addTrimPath(Lcom/oplus/anim/animation/content/TrimPathContent;)V

    invoke-virtual {v0, p0}, Lcom/oplus/anim/animation/content/TrimPathContent;->addListener(Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    :cond_23
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_26
    return-void
.end method
