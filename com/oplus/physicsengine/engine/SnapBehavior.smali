.class public Lcom/oplus/physicsengine/engine/SnapBehavior;
.super Lcom/oplus/physicsengine/engine/BaseBehavior;
.source ""


# instance fields
.field private mTargetPosition:Lcom/oplus/physicsengine/common/Vector;

.field private mTargetPositionInPhysics:Lcom/oplus/physicsengine/common/Vector;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oplus/physicsengine/engine/SnapBehavior;-><init>(F)V

    return-void
.end method

.method public constructor <init>(F)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oplus/physicsengine/engine/SnapBehavior;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(FF)V
    .registers 4

    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/BaseBehavior;-><init>()V

    invoke-virtual {p0}, Lcom/oplus/physicsengine/engine/BaseBehavior;->createSpringDef()V

    new-instance v0, Lcom/oplus/physicsengine/common/Vector;

    invoke-direct {v0, p1, p2}, Lcom/oplus/physicsengine/common/Vector;-><init>(FF)V

    iput-object v0, p0, Lcom/oplus/physicsengine/engine/SnapBehavior;->mTargetPosition:Lcom/oplus/physicsengine/common/Vector;

    return-void
.end method

.method private calculateTargetPosInPhysics()V
    .registers 5

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/SnapBehavior;->mTargetPositionInPhysics:Lcom/oplus/physicsengine/common/Vector;

    if-nez v0, :cond_b

    new-instance v0, Lcom/oplus/physicsengine/common/Vector;

    invoke-direct {v0}, Lcom/oplus/physicsengine/common/Vector;-><init>()V

    iput-object v0, p0, Lcom/oplus/physicsengine/engine/SnapBehavior;->mTargetPositionInPhysics:Lcom/oplus/physicsengine/common/Vector;

    :cond_b
    iget-object v0, p0, Lcom/oplus/physicsengine/engine/SnapBehavior;->mTargetPositionInPhysics:Lcom/oplus/physicsengine/common/Vector;

    iget-object v1, p0, Lcom/oplus/physicsengine/engine/SnapBehavior;->mTargetPosition:Lcom/oplus/physicsengine/common/Vector;

    iget v1, v1, Lcom/oplus/physicsengine/common/Vector;->mX:F

    invoke-static {v1}, Lcom/oplus/physicsengine/common/Compat;->pixelsToPhysicalSize(F)F

    move-result v1

    iget-object v2, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {v2}, Lcom/oplus/physicsengine/dynamics/Body;->getHookPosition()Lcom/oplus/physicsengine/common/Vector;

    move-result-object v2

    iget v2, v2, Lcom/oplus/physicsengine/common/Vector;->mX:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mValueThreshold:F

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/oplus/physicsengine/engine/SnapBehavior;->mTargetPosition:Lcom/oplus/physicsengine/common/Vector;

    iget v2, v2, Lcom/oplus/physicsengine/common/Vector;->mY:F

    invoke-static {v2}, Lcom/oplus/physicsengine/common/Compat;->pixelsToPhysicalSize(F)F

    move-result v2

    iget-object v3, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {v3}, Lcom/oplus/physicsengine/dynamics/Body;->getHookPosition()Lcom/oplus/physicsengine/common/Vector;

    move-result-object v3

    iget v3, v3, Lcom/oplus/physicsengine/common/Vector;->mY:F

    add-float/2addr v2, v3

    iget p0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mValueThreshold:F

    div-float/2addr v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/oplus/physicsengine/common/Vector;->set(FF)Lcom/oplus/physicsengine/common/Vector;

    return-void
.end method

.method private createSpring()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mSpringDef:Lcom/oplus/physicsengine/dynamics/spring/SpringDef;

    invoke-virtual {p0, v0}, Lcom/oplus/physicsengine/engine/BaseBehavior;->createDefaultSpring(Lcom/oplus/physicsengine/dynamics/spring/SpringDef;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/SnapBehavior;->updateSpringPosition()V

    :cond_b
    return-void
.end method

.method private destroySpring()V
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/physicsengine/engine/BaseBehavior;->destroyDefaultSpring()Z

    return-void
.end method

.method private setTargetPosition(FF)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/physicsengine/engine/SnapBehavior;->mTargetPosition:Lcom/oplus/physicsengine/common/Vector;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/physicsengine/common/Vector;->set(FF)Lcom/oplus/physicsengine/common/Vector;

    return-void
.end method

.method private updateSpringPosition()V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/SnapBehavior;->calculateTargetPosInPhysics()V

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mSpring:Lcom/oplus/physicsengine/dynamics/spring/Spring;

    iget-object p0, p0, Lcom/oplus/physicsengine/engine/SnapBehavior;->mTargetPositionInPhysics:Lcom/oplus/physicsengine/common/Vector;

    invoke-virtual {v0, p0}, Lcom/oplus/physicsengine/dynamics/spring/Spring;->setTarget(Lcom/oplus/physicsengine/common/Vector;)V

    return-void
.end method


# virtual methods
.method public dispatchChanging()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    iget-object v0, v0, Lcom/oplus/physicsengine/engine/UIItem;->mMoveTarget:Lcom/oplus/physicsengine/common/Vector;

    iget-object v1, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {v1}, Lcom/oplus/physicsengine/dynamics/Body;->getPosition()Lcom/oplus/physicsengine/common/Vector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/physicsengine/common/Vector;->set(Lcom/oplus/physicsengine/common/Vector;)Lcom/oplus/physicsengine/common/Vector;

    invoke-super {p0}, Lcom/oplus/physicsengine/engine/BaseBehavior;->dispatchChanging()V

    return-void
.end method

.method public getType()I
    .registers 1

    const/4 p0, 0x4

    return p0
.end method

.method public start()V
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/physicsengine/engine/SnapBehavior;->startBehavior()V

    return-void
.end method

.method public start(F)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oplus/physicsengine/engine/SnapBehavior;->start(FF)V

    return-void
.end method

.method public start(FF)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/physicsengine/engine/SnapBehavior;->setTargetPosition(FF)V

    invoke-virtual {p0}, Lcom/oplus/physicsengine/engine/SnapBehavior;->start()V

    return-void
.end method

.method public startBehavior()V
    .registers 2

    invoke-super {p0}, Lcom/oplus/physicsengine/engine/BaseBehavior;->startBehavior()V

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mSpring:Lcom/oplus/physicsengine/dynamics/spring/Spring;

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/SnapBehavior;->createSpring()V

    goto :goto_e

    :cond_b
    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/SnapBehavior;->updateSpringPosition()V

    :goto_e
    return-void
.end method

.method public stop()V
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/physicsengine/engine/SnapBehavior;->stopBehavior()Z

    return-void
.end method

.method public stopBehavior()Z
    .registers 1

    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/SnapBehavior;->destroySpring()V

    invoke-super {p0}, Lcom/oplus/physicsengine/engine/BaseBehavior;->stopBehavior()Z

    move-result p0

    return p0
.end method
