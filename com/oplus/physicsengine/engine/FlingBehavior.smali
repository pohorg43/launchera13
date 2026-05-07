.class public Lcom/oplus/physicsengine/engine/FlingBehavior;
.super Lcom/oplus/physicsengine/engine/ConstraintBehavior;
.source ""


# instance fields
.field private mCustomLinearDamping:F

.field private mOriginLinearDamping:F


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oplus/physicsengine/engine/FlingBehavior;-><init>(ILandroid/graphics/RectF;)V

    return-void
.end method

.method public constructor <init>(FF)V
    .registers 4

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Lcom/oplus/physicsengine/engine/FlingBehavior;-><init>(IFF)V

    return-void
.end method

.method public constructor <init>(IFF)V
    .registers 5

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p2, p2, p3, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {p0, p1, v0}, Lcom/oplus/physicsengine/engine/FlingBehavior;-><init>(ILandroid/graphics/RectF;)V

    return-void
.end method

.method public constructor <init>(ILandroid/graphics/RectF;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;-><init>(ILandroid/graphics/RectF;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/oplus/physicsengine/engine/FlingBehavior;->mOriginLinearDamping:F

    iput p1, p0, Lcom/oplus/physicsengine/engine/FlingBehavior;->mCustomLinearDamping:F

    return-void
.end method

.method public constructor <init>(Landroid/graphics/RectF;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/oplus/physicsengine/engine/FlingBehavior;-><init>(ILandroid/graphics/RectF;)V

    return-void
.end method


# virtual methods
.method public getType()I
    .registers 1

    const/4 p0, 0x2

    return p0
.end method

.method public setActiveFrame(FF)V
    .registers 4

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1, p1, p2, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/oplus/physicsengine/engine/FlingBehavior;->setActiveFrame(Landroid/graphics/RectF;)V

    return-void
.end method

.method public setActiveFrame(Landroid/graphics/RectF;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->setConstraintRect(Landroid/graphics/RectF;)V

    return-void
.end method

.method public setLinearDamping(F)Lcom/oplus/physicsengine/engine/FlingBehavior;
    .registers 2

    iput p1, p0, Lcom/oplus/physicsengine/engine/FlingBehavior;->mCustomLinearDamping:F

    return-object p0
.end method

.method public start()V
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/physicsengine/engine/FlingBehavior;->startBehavior()V

    return-void
.end method

.method public start(F)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oplus/physicsengine/engine/FlingBehavior;->start(FF)V

    return-void
.end method

.method public start(FF)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {v0}, Lcom/oplus/physicsengine/dynamics/Body;->getLinearVelocity()Lcom/oplus/physicsengine/common/Vector;

    move-result-object v0

    invoke-static {p1}, Lcom/oplus/physicsengine/common/Compat;->pixelsToPhysicalSize(F)F

    move-result p1

    invoke-static {p2}, Lcom/oplus/physicsengine/common/Compat;->pixelsToPhysicalSize(F)F

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/oplus/physicsengine/common/Vector;->set(FF)Lcom/oplus/physicsengine/common/Vector;

    invoke-virtual {p0}, Lcom/oplus/physicsengine/engine/FlingBehavior;->start()V

    return-void
.end method

.method public startBehavior()V
    .registers 4

    invoke-super {p0}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->startBehavior()V

    iget v0, p0, Lcom/oplus/physicsengine/engine/FlingBehavior;->mCustomLinearDamping:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    iget v2, v1, Lcom/oplus/physicsengine/dynamics/Body;->mLinearDamping:F

    iput v2, p0, Lcom/oplus/physicsengine/engine/FlingBehavior;->mOriginLinearDamping:F

    invoke-virtual {v1, v0}, Lcom/oplus/physicsengine/dynamics/Body;->setLinearDamping(F)V

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mAssistBody:Lcom/oplus/physicsengine/dynamics/Body;

    if-eqz v0, :cond_1c

    iget p0, p0, Lcom/oplus/physicsengine/engine/FlingBehavior;->mCustomLinearDamping:F

    invoke-virtual {v0, p0}, Lcom/oplus/physicsengine/dynamics/Body;->setLinearDamping(F)V

    :cond_1c
    return-void
.end method

.method public stop()V
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/physicsengine/engine/FlingBehavior;->stopBehavior()Z

    return-void
.end method

.method public stopBehavior()Z
    .registers 3

    iget v0, p0, Lcom/oplus/physicsengine/engine/FlingBehavior;->mOriginLinearDamping:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {v1, v0}, Lcom/oplus/physicsengine/dynamics/Body;->setLinearDamping(F)V

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mAssistBody:Lcom/oplus/physicsengine/dynamics/Body;

    if-eqz v0, :cond_15

    iget v1, p0, Lcom/oplus/physicsengine/engine/FlingBehavior;->mOriginLinearDamping:F

    invoke-virtual {v0, v1}, Lcom/oplus/physicsengine/dynamics/Body;->setLinearDamping(F)V

    :cond_15
    invoke-super {p0}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->stopBehavior()Z

    move-result p0

    return p0
.end method
