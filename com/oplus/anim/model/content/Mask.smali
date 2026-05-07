.class public Lcom/oplus/anim/model/content/Mask;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/anim/model/content/Mask$MaskMode;
    }
.end annotation


# instance fields
.field private final inverted:Z

.field private final maskMode:Lcom/oplus/anim/model/content/Mask$MaskMode;

.field private final maskPath:Lcom/oplus/anim/model/animatable/AnimatableShapeValue;

.field private final opacity:Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;


# direct methods
.method public constructor <init>(Lcom/oplus/anim/model/content/Mask$MaskMode;Lcom/oplus/anim/model/animatable/AnimatableShapeValue;Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/anim/model/content/Mask;->maskMode:Lcom/oplus/anim/model/content/Mask$MaskMode;

    iput-object p2, p0, Lcom/oplus/anim/model/content/Mask;->maskPath:Lcom/oplus/anim/model/animatable/AnimatableShapeValue;

    iput-object p3, p0, Lcom/oplus/anim/model/content/Mask;->opacity:Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;

    iput-boolean p4, p0, Lcom/oplus/anim/model/content/Mask;->inverted:Z

    return-void
.end method


# virtual methods
.method public getMaskMode()Lcom/oplus/anim/model/content/Mask$MaskMode;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/model/content/Mask;->maskMode:Lcom/oplus/anim/model/content/Mask$MaskMode;

    return-object p0
.end method

.method public getMaskPath()Lcom/oplus/anim/model/animatable/AnimatableShapeValue;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/model/content/Mask;->maskPath:Lcom/oplus/anim/model/animatable/AnimatableShapeValue;

    return-object p0
.end method

.method public getOpacity()Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/model/content/Mask;->opacity:Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;

    return-object p0
.end method

.method public isInverted()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/anim/model/content/Mask;->inverted:Z

    return p0
.end method
