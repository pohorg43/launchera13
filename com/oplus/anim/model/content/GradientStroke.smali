.class public Lcom/oplus/anim/model/content/GradientStroke;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/anim/model/content/ContentModel;


# instance fields
.field private final capType:Lcom/oplus/anim/model/content/ShapeStroke$LineCapType;

.field private final dashOffset:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final endPoint:Lcom/oplus/anim/model/animatable/AnimatablePointValue;

.field private final gradientColor:Lcom/oplus/anim/model/animatable/AnimatableGradientColorValue;

.field private final gradientType:Lcom/oplus/anim/model/content/GradientType;

.field private final hidden:Z

.field private final joinType:Lcom/oplus/anim/model/content/ShapeStroke$LineJoinType;

.field private final lineDashPattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/anim/model/animatable/AnimatableFloatValue;",
            ">;"
        }
    .end annotation
.end field

.field private final miterLimit:F

.field private final name:Ljava/lang/String;

.field private final opacity:Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;

.field private final startPoint:Lcom/oplus/anim/model/animatable/AnimatablePointValue;

.field private final width:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/oplus/anim/model/content/GradientType;Lcom/oplus/anim/model/animatable/AnimatableGradientColorValue;Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;Lcom/oplus/anim/model/animatable/AnimatablePointValue;Lcom/oplus/anim/model/animatable/AnimatablePointValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Lcom/oplus/anim/model/content/ShapeStroke$LineCapType;Lcom/oplus/anim/model/content/ShapeStroke$LineJoinType;FLjava/util/List;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Z)V
    .registers 14
    .param p12  # Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oplus/anim/model/content/GradientType;",
            "Lcom/oplus/anim/model/animatable/AnimatableGradientColorValue;",
            "Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;",
            "Lcom/oplus/anim/model/animatable/AnimatablePointValue;",
            "Lcom/oplus/anim/model/animatable/AnimatablePointValue;",
            "Lcom/oplus/anim/model/animatable/AnimatableFloatValue;",
            "Lcom/oplus/anim/model/content/ShapeStroke$LineCapType;",
            "Lcom/oplus/anim/model/content/ShapeStroke$LineJoinType;",
            "F",
            "Ljava/util/List<",
            "Lcom/oplus/anim/model/animatable/AnimatableFloatValue;",
            ">;",
            "Lcom/oplus/anim/model/animatable/AnimatableFloatValue;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/anim/model/content/GradientStroke;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/anim/model/content/GradientStroke;->gradientType:Lcom/oplus/anim/model/content/GradientType;

    iput-object p3, p0, Lcom/oplus/anim/model/content/GradientStroke;->gradientColor:Lcom/oplus/anim/model/animatable/AnimatableGradientColorValue;

    iput-object p4, p0, Lcom/oplus/anim/model/content/GradientStroke;->opacity:Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;

    iput-object p5, p0, Lcom/oplus/anim/model/content/GradientStroke;->startPoint:Lcom/oplus/anim/model/animatable/AnimatablePointValue;

    iput-object p6, p0, Lcom/oplus/anim/model/content/GradientStroke;->endPoint:Lcom/oplus/anim/model/animatable/AnimatablePointValue;

    iput-object p7, p0, Lcom/oplus/anim/model/content/GradientStroke;->width:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    iput-object p8, p0, Lcom/oplus/anim/model/content/GradientStroke;->capType:Lcom/oplus/anim/model/content/ShapeStroke$LineCapType;

    iput-object p9, p0, Lcom/oplus/anim/model/content/GradientStroke;->joinType:Lcom/oplus/anim/model/content/ShapeStroke$LineJoinType;

    iput p10, p0, Lcom/oplus/anim/model/content/GradientStroke;->miterLimit:F

    iput-object p11, p0, Lcom/oplus/anim/model/content/GradientStroke;->lineDashPattern:Ljava/util/List;

    iput-object p12, p0, Lcom/oplus/anim/model/content/GradientStroke;->dashOffset:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    iput-boolean p13, p0, Lcom/oplus/anim/model/content/GradientStroke;->hidden:Z

    return-void
.end method


# virtual methods
.method public getCapType()Lcom/oplus/anim/model/content/ShapeStroke$LineCapType;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/model/content/GradientStroke;->capType:Lcom/oplus/anim/model/content/ShapeStroke$LineCapType;

    return-object p0
.end method

.method public getDashOffset()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/oplus/anim/model/content/GradientStroke;->dashOffset:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    return-object p0
.end method

.method public getEndPoint()Lcom/oplus/anim/model/animatable/AnimatablePointValue;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/model/content/GradientStroke;->endPoint:Lcom/oplus/anim/model/animatable/AnimatablePointValue;

    return-object p0
.end method

.method public getGradientColor()Lcom/oplus/anim/model/animatable/AnimatableGradientColorValue;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/model/content/GradientStroke;->gradientColor:Lcom/oplus/anim/model/animatable/AnimatableGradientColorValue;

    return-object p0
.end method

.method public getGradientType()Lcom/oplus/anim/model/content/GradientType;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/model/content/GradientStroke;->gradientType:Lcom/oplus/anim/model/content/GradientType;

    return-object p0
.end method

.method public getJoinType()Lcom/oplus/anim/model/content/ShapeStroke$LineJoinType;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/model/content/GradientStroke;->joinType:Lcom/oplus/anim/model/content/ShapeStroke$LineJoinType;

    return-object p0
.end method

.method public getLineDashPattern()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/anim/model/animatable/AnimatableFloatValue;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/anim/model/content/GradientStroke;->lineDashPattern:Ljava/util/List;

    return-object p0
.end method

.method public getMiterLimit()F
    .registers 1

    iget p0, p0, Lcom/oplus/anim/model/content/GradientStroke;->miterLimit:F

    return p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/model/content/GradientStroke;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getOpacity()Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/model/content/GradientStroke;->opacity:Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;

    return-object p0
.end method

.method public getStartPoint()Lcom/oplus/anim/model/animatable/AnimatablePointValue;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/model/content/GradientStroke;->startPoint:Lcom/oplus/anim/model/animatable/AnimatablePointValue;

    return-object p0
.end method

.method public getWidth()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/model/content/GradientStroke;->width:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    return-object p0
.end method

.method public isHidden()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/anim/model/content/GradientStroke;->hidden:Z

    return p0
.end method

.method public toContent(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;)Lcom/oplus/anim/animation/content/Content;
    .registers 4

    new-instance v0, Lcom/oplus/anim/animation/content/GradientStrokeContent;

    invoke-direct {v0, p1, p2, p0}, Lcom/oplus/anim/animation/content/GradientStrokeContent;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;Lcom/oplus/anim/model/content/GradientStroke;)V

    return-object v0
.end method
