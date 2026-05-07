.class public Lcom/oplus/anim/model/content/RectangleShape;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/anim/model/content/ContentModel;


# instance fields
.field private final cornerRadius:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

.field private final hidden:Z

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

.field private final size:Lcom/oplus/anim/model/animatable/AnimatableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/model/animatable/AnimatableValue<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/oplus/anim/model/animatable/AnimatableValue;Lcom/oplus/anim/model/animatable/AnimatableValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oplus/anim/model/animatable/AnimatableValue<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/oplus/anim/model/animatable/AnimatableValue<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/oplus/anim/model/animatable/AnimatableFloatValue;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/anim/model/content/RectangleShape;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/anim/model/content/RectangleShape;->position:Lcom/oplus/anim/model/animatable/AnimatableValue;

    iput-object p3, p0, Lcom/oplus/anim/model/content/RectangleShape;->size:Lcom/oplus/anim/model/animatable/AnimatableValue;

    iput-object p4, p0, Lcom/oplus/anim/model/content/RectangleShape;->cornerRadius:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    iput-boolean p5, p0, Lcom/oplus/anim/model/content/RectangleShape;->hidden:Z

    return-void
.end method


# virtual methods
.method public getCornerRadius()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/model/content/RectangleShape;->cornerRadius:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/model/content/RectangleShape;->name:Ljava/lang/String;

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

    iget-object p0, p0, Lcom/oplus/anim/model/content/RectangleShape;->position:Lcom/oplus/anim/model/animatable/AnimatableValue;

    return-object p0
.end method

.method public getSize()Lcom/oplus/anim/model/animatable/AnimatableValue;
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

    iget-object p0, p0, Lcom/oplus/anim/model/content/RectangleShape;->size:Lcom/oplus/anim/model/animatable/AnimatableValue;

    return-object p0
.end method

.method public isHidden()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/anim/model/content/RectangleShape;->hidden:Z

    return p0
.end method

.method public toContent(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;)Lcom/oplus/anim/animation/content/Content;
    .registers 4

    new-instance v0, Lcom/oplus/anim/animation/content/RectangleContent;

    invoke-direct {v0, p1, p2, p0}, Lcom/oplus/anim/animation/content/RectangleContent;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;Lcom/oplus/anim/model/content/RectangleShape;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "RectangleShape{position="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/anim/model/content/RectangleShape;->position:Lcom/oplus/anim/model/animatable/AnimatableValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/anim/model/content/RectangleShape;->size:Lcom/oplus/anim/model/animatable/AnimatableValue;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
