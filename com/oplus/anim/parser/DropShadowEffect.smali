.class public Lcom/oplus/anim/parser/DropShadowEffect;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final color:Lcom/oplus/anim/model/animatable/AnimatableColorValue;

.field private final direction:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

.field private final distance:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

.field private final opacity:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

.field private final radius:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;


# direct methods
.method public constructor <init>(Lcom/oplus/anim/model/animatable/AnimatableColorValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/anim/parser/DropShadowEffect;->color:Lcom/oplus/anim/model/animatable/AnimatableColorValue;

    iput-object p2, p0, Lcom/oplus/anim/parser/DropShadowEffect;->opacity:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    iput-object p3, p0, Lcom/oplus/anim/parser/DropShadowEffect;->direction:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    iput-object p4, p0, Lcom/oplus/anim/parser/DropShadowEffect;->distance:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    iput-object p5, p0, Lcom/oplus/anim/parser/DropShadowEffect;->radius:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    return-void
.end method


# virtual methods
.method public getColor()Lcom/oplus/anim/model/animatable/AnimatableColorValue;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/parser/DropShadowEffect;->color:Lcom/oplus/anim/model/animatable/AnimatableColorValue;

    return-object p0
.end method

.method public getDirection()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/parser/DropShadowEffect;->direction:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    return-object p0
.end method

.method public getDistance()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/parser/DropShadowEffect;->distance:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    return-object p0
.end method

.method public getOpacity()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/parser/DropShadowEffect;->opacity:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    return-object p0
.end method

.method public getRadius()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/parser/DropShadowEffect;->radius:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    return-object p0
.end method
