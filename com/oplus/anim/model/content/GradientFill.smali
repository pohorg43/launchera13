.class public Lcom/oplus/anim/model/content/GradientFill;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/anim/model/content/ContentModel;


# instance fields
.field private final endPoint:Lcom/oplus/anim/model/animatable/AnimatablePointValue;

.field private final fillType:Landroid/graphics/Path$FillType;

.field private final gradientColor:Lcom/oplus/anim/model/animatable/AnimatableGradientColorValue;

.field private final gradientType:Lcom/oplus/anim/model/content/GradientType;

.field private final hidden:Z

.field private final highlightAngle:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final highlightLength:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final opacity:Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;

.field private final startPoint:Lcom/oplus/anim/model/animatable/AnimatablePointValue;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/oplus/anim/model/content/GradientType;Landroid/graphics/Path$FillType;Lcom/oplus/anim/model/animatable/AnimatableGradientColorValue;Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;Lcom/oplus/anim/model/animatable/AnimatablePointValue;Lcom/oplus/anim/model/animatable/AnimatablePointValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Z)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/oplus/anim/model/content/GradientFill;->gradientType:Lcom/oplus/anim/model/content/GradientType;

    iput-object p3, p0, Lcom/oplus/anim/model/content/GradientFill;->fillType:Landroid/graphics/Path$FillType;

    iput-object p4, p0, Lcom/oplus/anim/model/content/GradientFill;->gradientColor:Lcom/oplus/anim/model/animatable/AnimatableGradientColorValue;

    iput-object p5, p0, Lcom/oplus/anim/model/content/GradientFill;->opacity:Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;

    iput-object p6, p0, Lcom/oplus/anim/model/content/GradientFill;->startPoint:Lcom/oplus/anim/model/animatable/AnimatablePointValue;

    iput-object p7, p0, Lcom/oplus/anim/model/content/GradientFill;->endPoint:Lcom/oplus/anim/model/animatable/AnimatablePointValue;

    iput-object p1, p0, Lcom/oplus/anim/model/content/GradientFill;->name:Ljava/lang/String;

    iput-object p8, p0, Lcom/oplus/anim/model/content/GradientFill;->highlightLength:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    iput-object p9, p0, Lcom/oplus/anim/model/content/GradientFill;->highlightAngle:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    iput-boolean p10, p0, Lcom/oplus/anim/model/content/GradientFill;->hidden:Z

    return-void
.end method


# virtual methods
.method public getEndPoint()Lcom/oplus/anim/model/animatable/AnimatablePointValue;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/model/content/GradientFill;->endPoint:Lcom/oplus/anim/model/animatable/AnimatablePointValue;

    return-object p0
.end method

.method public getFillType()Landroid/graphics/Path$FillType;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/model/content/GradientFill;->fillType:Landroid/graphics/Path$FillType;

    return-object p0
.end method

.method public getGradientColor()Lcom/oplus/anim/model/animatable/AnimatableGradientColorValue;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/model/content/GradientFill;->gradientColor:Lcom/oplus/anim/model/animatable/AnimatableGradientColorValue;

    return-object p0
.end method

.method public getGradientType()Lcom/oplus/anim/model/content/GradientType;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/model/content/GradientFill;->gradientType:Lcom/oplus/anim/model/content/GradientType;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/model/content/GradientFill;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getOpacity()Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/model/content/GradientFill;->opacity:Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;

    return-object p0
.end method

.method public getStartPoint()Lcom/oplus/anim/model/animatable/AnimatablePointValue;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/model/content/GradientFill;->startPoint:Lcom/oplus/anim/model/animatable/AnimatablePointValue;

    return-object p0
.end method

.method public isHidden()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/anim/model/content/GradientFill;->hidden:Z

    return p0
.end method

.method public toContent(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;)Lcom/oplus/anim/animation/content/Content;
    .registers 4

    new-instance v0, Lcom/oplus/anim/animation/content/GradientFillContent;

    invoke-direct {v0, p1, p2, p0}, Lcom/oplus/anim/animation/content/GradientFillContent;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;Lcom/oplus/anim/model/content/GradientFill;)V

    return-object v0
.end method
