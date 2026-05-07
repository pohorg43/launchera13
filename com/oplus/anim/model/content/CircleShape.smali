.class public Lcom/oplus/anim/model/content/CircleShape;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/anim/model/content/ContentModel;


# instance fields
.field private final hidden:Z

.field private final isReversed:Z

.field private final name:Ljava/lang/String;

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

.field private final size:Lcom/oplus/anim/model/animatable/AnimatablePointValue;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/oplus/anim/model/animatable/AnimatableValue;Lcom/oplus/anim/model/animatable/AnimatablePointValue;ZZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oplus/anim/model/animatable/AnimatableValue<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/oplus/anim/model/animatable/AnimatablePointValue;",
            "ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/anim/model/content/CircleShape;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/anim/model/content/CircleShape;->position:Lcom/oplus/anim/model/animatable/AnimatableValue;

    iput-object p3, p0, Lcom/oplus/anim/model/content/CircleShape;->size:Lcom/oplus/anim/model/animatable/AnimatablePointValue;

    iput-boolean p4, p0, Lcom/oplus/anim/model/content/CircleShape;->isReversed:Z

    iput-boolean p5, p0, Lcom/oplus/anim/model/content/CircleShape;->hidden:Z

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/model/content/CircleShape;->name:Ljava/lang/String;

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

    iget-object p0, p0, Lcom/oplus/anim/model/content/CircleShape;->position:Lcom/oplus/anim/model/animatable/AnimatableValue;

    return-object p0
.end method

.method public getSize()Lcom/oplus/anim/model/animatable/AnimatablePointValue;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/model/content/CircleShape;->size:Lcom/oplus/anim/model/animatable/AnimatablePointValue;

    return-object p0
.end method

.method public isHidden()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/anim/model/content/CircleShape;->hidden:Z

    return p0
.end method

.method public isReversed()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/anim/model/content/CircleShape;->isReversed:Z

    return p0
.end method

.method public toContent(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;)Lcom/oplus/anim/animation/content/Content;
    .registers 4

    new-instance v0, Lcom/oplus/anim/animation/content/EllipseContent;

    invoke-direct {v0, p1, p2, p0}, Lcom/oplus/anim/animation/content/EllipseContent;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;Lcom/oplus/anim/model/content/CircleShape;)V

    return-object v0
.end method
