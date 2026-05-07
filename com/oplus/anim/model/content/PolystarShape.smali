.class public Lcom/oplus/anim/model/content/PolystarShape;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/anim/model/content/ContentModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/anim/model/content/PolystarShape$Type;
    }
.end annotation


# instance fields
.field private final hidden:Z

.field private final innerRadius:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

.field private final innerRoundedness:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

.field private final name:Ljava/lang/String;

.field private final outerRadius:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

.field private final outerRoundedness:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

.field private final points:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

.field private final position:Lcom/oplus/anim/model/animatable/AnimatableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/model/animatable/AnimatableValue<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final rotation:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

.field private final type:Lcom/oplus/anim/model/content/PolystarShape$Type;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/oplus/anim/model/content/PolystarShape$Type;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Lcom/oplus/anim/model/animatable/AnimatableValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oplus/anim/model/content/PolystarShape$Type;",
            "Lcom/oplus/anim/model/animatable/AnimatableFloatValue;",
            "Lcom/oplus/anim/model/animatable/AnimatableValue<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/oplus/anim/model/animatable/AnimatableFloatValue;",
            "Lcom/oplus/anim/model/animatable/AnimatableFloatValue;",
            "Lcom/oplus/anim/model/animatable/AnimatableFloatValue;",
            "Lcom/oplus/anim/model/animatable/AnimatableFloatValue;",
            "Lcom/oplus/anim/model/animatable/AnimatableFloatValue;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/anim/model/content/PolystarShape;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/anim/model/content/PolystarShape;->type:Lcom/oplus/anim/model/content/PolystarShape$Type;

    iput-object p3, p0, Lcom/oplus/anim/model/content/PolystarShape;->points:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    iput-object p4, p0, Lcom/oplus/anim/model/content/PolystarShape;->position:Lcom/oplus/anim/model/animatable/AnimatableValue;

    iput-object p5, p0, Lcom/oplus/anim/model/content/PolystarShape;->rotation:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    iput-object p6, p0, Lcom/oplus/anim/model/content/PolystarShape;->innerRadius:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    iput-object p7, p0, Lcom/oplus/anim/model/content/PolystarShape;->outerRadius:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    iput-object p8, p0, Lcom/oplus/anim/model/content/PolystarShape;->innerRoundedness:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    iput-object p9, p0, Lcom/oplus/anim/model/content/PolystarShape;->outerRoundedness:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    iput-boolean p10, p0, Lcom/oplus/anim/model/content/PolystarShape;->hidden:Z

    return-void
.end method


# virtual methods
.method public getInnerRadius()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/model/content/PolystarShape;->innerRadius:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    return-object p0
.end method

.method public getInnerRoundedness()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/model/content/PolystarShape;->innerRoundedness:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/model/content/PolystarShape;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getOuterRadius()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/model/content/PolystarShape;->outerRadius:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    return-object p0
.end method

.method public getOuterRoundedness()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/model/content/PolystarShape;->outerRoundedness:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    return-object p0
.end method

.method public getPoints()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/model/content/PolystarShape;->points:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    return-object p0
.end method

.method public getPosition()Lcom/oplus/anim/model/animatable/AnimatableValue;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oplus/anim/model/animatable/AnimatableValue<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/anim/model/content/PolystarShape;->position:Lcom/oplus/anim/model/animatable/AnimatableValue;

    return-object p0
.end method

.method public getRotation()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/model/content/PolystarShape;->rotation:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    return-object p0
.end method

.method public getType()Lcom/oplus/anim/model/content/PolystarShape$Type;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/model/content/PolystarShape;->type:Lcom/oplus/anim/model/content/PolystarShape$Type;

    return-object p0
.end method

.method public isHidden()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/anim/model/content/PolystarShape;->hidden:Z

    return p0
.end method

.method public toContent(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;)Lcom/oplus/anim/animation/content/Content;
    .registers 4

    new-instance v0, Lcom/oplus/anim/animation/content/PolystarContent;

    invoke-direct {v0, p1, p2, p0}, Lcom/oplus/anim/animation/content/PolystarContent;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;Lcom/oplus/anim/model/content/PolystarShape;)V

    return-object v0
.end method
