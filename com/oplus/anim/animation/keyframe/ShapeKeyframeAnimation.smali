.class public Lcom/oplus/anim/animation/keyframe/ShapeKeyframeAnimation;
.super Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation<",
        "Lcom/oplus/anim/model/content/ShapeData;",
        "Landroid/graphics/Path;",
        ">;"
    }
.end annotation


# instance fields
.field private final tempPath:Landroid/graphics/Path;

.field private final tempShapeData:Lcom/oplus/anim/model/content/ShapeData;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/anim/value/Keyframe<",
            "Lcom/oplus/anim/model/content/ShapeData;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation;-><init>(Ljava/util/List;)V

    new-instance p1, Lcom/oplus/anim/model/content/ShapeData;

    invoke-direct {p1}, Lcom/oplus/anim/model/content/ShapeData;-><init>()V

    iput-object p1, p0, Lcom/oplus/anim/animation/keyframe/ShapeKeyframeAnimation;->tempShapeData:Lcom/oplus/anim/model/content/ShapeData;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/oplus/anim/animation/keyframe/ShapeKeyframeAnimation;->tempPath:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public getValue(Lcom/oplus/anim/value/Keyframe;F)Landroid/graphics/Path;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/value/Keyframe<",
            "Lcom/oplus/anim/model/content/ShapeData;",
            ">;F)",
            "Landroid/graphics/Path;"
        }
    .end annotation

    iget-object v0, p1, Lcom/oplus/anim/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/anim/model/content/ShapeData;

    iget-object p1, p1, Lcom/oplus/anim/value/Keyframe;->endValue:Ljava/lang/Object;

    check-cast p1, Lcom/oplus/anim/model/content/ShapeData;

    iget-object v1, p0, Lcom/oplus/anim/animation/keyframe/ShapeKeyframeAnimation;->tempShapeData:Lcom/oplus/anim/model/content/ShapeData;

    invoke-virtual {v1, v0, p1, p2}, Lcom/oplus/anim/model/content/ShapeData;->interpolateBetween(Lcom/oplus/anim/model/content/ShapeData;Lcom/oplus/anim/model/content/ShapeData;F)V

    iget-object p1, p0, Lcom/oplus/anim/animation/keyframe/ShapeKeyframeAnimation;->tempShapeData:Lcom/oplus/anim/model/content/ShapeData;

    iget-object p2, p0, Lcom/oplus/anim/animation/keyframe/ShapeKeyframeAnimation;->tempPath:Landroid/graphics/Path;

    invoke-static {p1, p2}, Lcom/oplus/anim/utils/MiscUtils;->getPathFromData(Lcom/oplus/anim/model/content/ShapeData;Landroid/graphics/Path;)V

    iget-object p0, p0, Lcom/oplus/anim/animation/keyframe/ShapeKeyframeAnimation;->tempPath:Landroid/graphics/Path;

    return-object p0
.end method

.method public bridge synthetic getValue(Lcom/oplus/anim/value/Keyframe;F)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/oplus/anim/animation/keyframe/ShapeKeyframeAnimation;->getValue(Lcom/oplus/anim/value/Keyframe;F)Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method
