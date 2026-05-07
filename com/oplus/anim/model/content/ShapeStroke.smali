.class public Lcom/oplus/anim/model/content/ShapeStroke;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/anim/model/content/ContentModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/anim/model/content/ShapeStroke$LineJoinType;,
        Lcom/oplus/anim/model/content/ShapeStroke$LineCapType;
    }
.end annotation


# instance fields
.field private final capType:Lcom/oplus/anim/model/content/ShapeStroke$LineCapType;

.field private final color:Lcom/oplus/anim/model/animatable/AnimatableColorValue;

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

.field private final offset:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final opacity:Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;

.field private final width:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Ljava/util/List;Lcom/oplus/anim/model/animatable/AnimatableColorValue;Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Lcom/oplus/anim/model/content/ShapeStroke$LineCapType;Lcom/oplus/anim/model/content/ShapeStroke$LineJoinType;FZ)V
    .registers 11
    .param p2  # Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oplus/anim/model/animatable/AnimatableFloatValue;",
            "Ljava/util/List<",
            "Lcom/oplus/anim/model/animatable/AnimatableFloatValue;",
            ">;",
            "Lcom/oplus/anim/model/animatable/AnimatableColorValue;",
            "Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;",
            "Lcom/oplus/anim/model/animatable/AnimatableFloatValue;",
            "Lcom/oplus/anim/model/content/ShapeStroke$LineCapType;",
            "Lcom/oplus/anim/model/content/ShapeStroke$LineJoinType;",
            "FZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/anim/model/content/ShapeStroke;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/anim/model/content/ShapeStroke;->offset:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    iput-object p3, p0, Lcom/oplus/anim/model/content/ShapeStroke;->lineDashPattern:Ljava/util/List;

    iput-object p4, p0, Lcom/oplus/anim/model/content/ShapeStroke;->color:Lcom/oplus/anim/model/animatable/AnimatableColorValue;

    iput-object p5, p0, Lcom/oplus/anim/model/content/ShapeStroke;->opacity:Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;

    iput-object p6, p0, Lcom/oplus/anim/model/content/ShapeStroke;->width:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    iput-object p7, p0, Lcom/oplus/anim/model/content/ShapeStroke;->capType:Lcom/oplus/anim/model/content/ShapeStroke$LineCapType;

    iput-object p8, p0, Lcom/oplus/anim/model/content/ShapeStroke;->joinType:Lcom/oplus/anim/model/content/ShapeStroke$LineJoinType;

    iput p9, p0, Lcom/oplus/anim/model/content/ShapeStroke;->miterLimit:F

    iput-boolean p10, p0, Lcom/oplus/anim/model/content/ShapeStroke;->hidden:Z

    return-void
.end method


# virtual methods
.method public getCapType()Lcom/oplus/anim/model/content/ShapeStroke$LineCapType;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/model/content/ShapeStroke;->capType:Lcom/oplus/anim/model/content/ShapeStroke$LineCapType;

    return-object p0
.end method

.method public getColor()Lcom/oplus/anim/model/animatable/AnimatableColorValue;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/model/content/ShapeStroke;->color:Lcom/oplus/anim/model/animatable/AnimatableColorValue;

    return-object p0
.end method

.method public getDashOffset()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/model/content/ShapeStroke;->offset:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    return-object p0
.end method

.method public getJoinType()Lcom/oplus/anim/model/content/ShapeStroke$LineJoinType;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/model/content/ShapeStroke;->joinType:Lcom/oplus/anim/model/content/ShapeStroke$LineJoinType;

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

    iget-object p0, p0, Lcom/oplus/anim/model/content/ShapeStroke;->lineDashPattern:Ljava/util/List;

    return-object p0
.end method

.method public getMiterLimit()F
    .registers 1

    iget p0, p0, Lcom/oplus/anim/model/content/ShapeStroke;->miterLimit:F

    return p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/model/content/ShapeStroke;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getOpacity()Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/model/content/ShapeStroke;->opacity:Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;

    return-object p0
.end method

.method public getWidth()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/model/content/ShapeStroke;->width:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    return-object p0
.end method

.method public isHidden()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/anim/model/content/ShapeStroke;->hidden:Z

    return p0
.end method

.method public toContent(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;)Lcom/oplus/anim/animation/content/Content;
    .registers 4

    new-instance v0, Lcom/oplus/anim/animation/content/StrokeContent;

    invoke-direct {v0, p1, p2, p0}, Lcom/oplus/anim/animation/content/StrokeContent;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;Lcom/oplus/anim/model/content/ShapeStroke;)V

    return-object v0
.end method
