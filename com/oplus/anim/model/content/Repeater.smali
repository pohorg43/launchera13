.class public Lcom/oplus/anim/model/content/Repeater;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/anim/model/content/ContentModel;


# instance fields
.field private final copies:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

.field private final hidden:Z

.field private final name:Ljava/lang/String;

.field private final offset:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

.field private final transform:Lcom/oplus/anim/model/animatable/AnimatableTransform;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Lcom/oplus/anim/model/animatable/AnimatableTransform;Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/anim/model/content/Repeater;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/anim/model/content/Repeater;->copies:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    iput-object p3, p0, Lcom/oplus/anim/model/content/Repeater;->offset:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    iput-object p4, p0, Lcom/oplus/anim/model/content/Repeater;->transform:Lcom/oplus/anim/model/animatable/AnimatableTransform;

    iput-boolean p5, p0, Lcom/oplus/anim/model/content/Repeater;->hidden:Z

    return-void
.end method


# virtual methods
.method public getCopies()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/model/content/Repeater;->copies:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/model/content/Repeater;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getOffset()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/model/content/Repeater;->offset:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    return-object p0
.end method

.method public getTransform()Lcom/oplus/anim/model/animatable/AnimatableTransform;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/model/content/Repeater;->transform:Lcom/oplus/anim/model/animatable/AnimatableTransform;

    return-object p0
.end method

.method public isHidden()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/anim/model/content/Repeater;->hidden:Z

    return p0
.end method

.method public toContent(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;)Lcom/oplus/anim/animation/content/Content;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance v0, Lcom/oplus/anim/animation/content/RepeaterContent;

    invoke-direct {v0, p1, p2, p0}, Lcom/oplus/anim/animation/content/RepeaterContent;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;Lcom/oplus/anim/model/content/Repeater;)V

    return-object v0
.end method
