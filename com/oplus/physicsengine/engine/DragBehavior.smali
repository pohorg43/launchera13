.class public Lcom/oplus/physicsengine/engine/DragBehavior;
.super Lcom/oplus/physicsengine/engine/BaseBehavior;
.source ""


# instance fields
.field private mIsDragging:Z

.field private mSimulateBody:Lcom/oplus/physicsengine/dynamics/Body;

.field private mSimulateSpring:Lcom/oplus/physicsengine/dynamics/spring/Spring;

.field private mSimulateSpringDef:Lcom/oplus/physicsengine/dynamics/spring/SpringDef;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/BaseBehavior;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/physicsengine/engine/DragBehavior;->mIsDragging:Z

    invoke-virtual {p0}, Lcom/oplus/physicsengine/engine/BaseBehavior;->createSpringDef()V

    new-instance v0, Lcom/oplus/physicsengine/dynamics/spring/SpringDef;

    invoke-direct {v0}, Lcom/oplus/physicsengine/dynamics/spring/SpringDef;-><init>()V

    iput-object v0, p0, Lcom/oplus/physicsengine/engine/DragBehavior;->mSimulateSpringDef:Lcom/oplus/physicsengine/dynamics/spring/SpringDef;

    const p0, 0x49f42400  # 2000000.0f

    iput p0, v0, Lcom/oplus/physicsengine/dynamics/spring/SpringDef;->frequencyHz:F

    const/high16 p0, 0x42c80000  # 100.0f

    iput p0, v0, Lcom/oplus/physicsengine/dynamics/spring/SpringDef;->dampingRatio:F

    return-void
.end method

.method private createSpring()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mSpringDef:Lcom/oplus/physicsengine/dynamics/spring/SpringDef;

    invoke-virtual {p0, v0}, Lcom/oplus/physicsengine/engine/BaseBehavior;->createDefaultSpring(Lcom/oplus/physicsengine/dynamics/spring/SpringDef;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mSpring:Lcom/oplus/physicsengine/dynamics/spring/Spring;

    iget-object v1, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    iget-object v1, v1, Lcom/oplus/physicsengine/engine/UIItem;->mMoveTarget:Lcom/oplus/physicsengine/common/Vector;

    invoke-virtual {v0, v1}, Lcom/oplus/physicsengine/dynamics/spring/Spring;->setTarget(Lcom/oplus/physicsengine/common/Vector;)V

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/DragBehavior;->mSimulateSpringDef:Lcom/oplus/physicsengine/dynamics/spring/SpringDef;

    iget-object v1, p0, Lcom/oplus/physicsengine/engine/DragBehavior;->mSimulateBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {p0, v0, v1}, Lcom/oplus/physicsengine/engine/BaseBehavior;->createSpring(Lcom/oplus/physicsengine/dynamics/spring/SpringDef;Lcom/oplus/physicsengine/dynamics/Body;)Lcom/oplus/physicsengine/dynamics/spring/Spring;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/physicsengine/engine/DragBehavior;->mSimulateSpring:Lcom/oplus/physicsengine/dynamics/spring/Spring;

    if-eqz v0, :cond_2a

    iget-object v1, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    iget-object v1, v1, Lcom/oplus/physicsengine/engine/UIItem;->mMoveTarget:Lcom/oplus/physicsengine/common/Vector;

    invoke-virtual {v0, v1}, Lcom/oplus/physicsengine/dynamics/spring/Spring;->setTarget(Lcom/oplus/physicsengine/common/Vector;)V

    iget-object p0, p0, Lcom/oplus/physicsengine/engine/DragBehavior;->mSimulateBody:Lcom/oplus/physicsengine/dynamics/Body;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oplus/physicsengine/dynamics/Body;->setAwake(Z)V

    :cond_2a
    return-void
.end method

.method private destroySpring()V
    .registers 2

    invoke-virtual {p0}, Lcom/oplus/physicsengine/engine/BaseBehavior;->destroyDefaultSpring()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/DragBehavior;->mSimulateSpring:Lcom/oplus/physicsengine/dynamics/spring/Spring;

    invoke-virtual {p0, v0}, Lcom/oplus/physicsengine/engine/BaseBehavior;->destroySpring(Lcom/oplus/physicsengine/dynamics/spring/Spring;)V

    iget-object p0, p0, Lcom/oplus/physicsengine/engine/DragBehavior;->mSimulateBody:Lcom/oplus/physicsengine/dynamics/Body;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/physicsengine/dynamics/Body;->setAwake(Z)V

    :cond_11
    return-void
.end method

.method private dragTo(FF)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mSpring:Lcom/oplus/physicsengine/dynamics/spring/Spring;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    iget-object v0, v0, Lcom/oplus/physicsengine/engine/UIItem;->mMoveTarget:Lcom/oplus/physicsengine/common/Vector;

    invoke-static {p1}, Lcom/oplus/physicsengine/common/Compat;->pixelsToPhysicalSize(F)F

    move-result p1

    invoke-static {p2}, Lcom/oplus/physicsengine/common/Compat;->pixelsToPhysicalSize(F)F

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/oplus/physicsengine/common/Vector;->set(FF)Lcom/oplus/physicsengine/common/Vector;

    iget-object p1, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mSpring:Lcom/oplus/physicsengine/dynamics/spring/Spring;

    iget-object p2, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    iget-object p2, p2, Lcom/oplus/physicsengine/engine/UIItem;->mMoveTarget:Lcom/oplus/physicsengine/common/Vector;

    invoke-virtual {p1, p2}, Lcom/oplus/physicsengine/dynamics/spring/Spring;->setTarget(Lcom/oplus/physicsengine/common/Vector;)V

    iget-object p1, p0, Lcom/oplus/physicsengine/engine/DragBehavior;->mSimulateSpring:Lcom/oplus/physicsengine/dynamics/spring/Spring;

    if-eqz p1, :cond_27

    iget-object p0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    iget-object p0, p0, Lcom/oplus/physicsengine/engine/UIItem;->mMoveTarget:Lcom/oplus/physicsengine/common/Vector;

    invoke-virtual {p1, p0}, Lcom/oplus/physicsengine/dynamics/spring/Spring;->setTarget(Lcom/oplus/physicsengine/common/Vector;)V

    :cond_27
    return-void
.end method

.method private transform(Lcom/oplus/physicsengine/common/Vector;)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {p0, v0, p1}, Lcom/oplus/physicsengine/engine/BaseBehavior;->transformBodyTo(Lcom/oplus/physicsengine/dynamics/Body;Lcom/oplus/physicsengine/common/Vector;)V

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/DragBehavior;->mSimulateBody:Lcom/oplus/physicsengine/dynamics/Body;

    if-eqz v0, :cond_c

    invoke-virtual {p0, v0, p1}, Lcom/oplus/physicsengine/engine/BaseBehavior;->transformBodyTo(Lcom/oplus/physicsengine/dynamics/Body;Lcom/oplus/physicsengine/common/Vector;)V

    :cond_c
    return-void
.end method


# virtual methods
.method public applySizeChanged(FF)Lcom/oplus/physicsengine/engine/BaseBehavior;
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/oplus/physicsengine/engine/BaseBehavior;->applySizeChanged(FF)Lcom/oplus/physicsengine/engine/BaseBehavior;

    iget-object p1, p0, Lcom/oplus/physicsengine/engine/DragBehavior;->mSimulateBody:Lcom/oplus/physicsengine/dynamics/Body;

    if-eqz p1, :cond_10

    iget-object p2, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    iget v0, p2, Lcom/oplus/physicsengine/dynamics/Body;->mWidth:F

    iget p2, p2, Lcom/oplus/physicsengine/dynamics/Body;->mHeight:F

    invoke-virtual {p1, v0, p2}, Lcom/oplus/physicsengine/dynamics/Body;->setSize(FF)V

    :cond_10
    return-object p0
.end method

.method public beginDrag(FF)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, v0}, Lcom/oplus/physicsengine/engine/DragBehavior;->beginDrag(FFFF)V

    return-void
.end method

.method public beginDrag(FFFF)V
    .registers 6

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    sub-float p3, p1, p3

    sub-float p4, p2, p4

    invoke-virtual {v0, p3, p4}, Lcom/oplus/physicsengine/dynamics/Body;->setHookPosition(FF)V

    iget-object p3, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {p3, p0}, Lcom/oplus/physicsengine/dynamics/Body;->updateActiveRect(Lcom/oplus/physicsengine/engine/BaseBehavior;)Z

    iget-object p3, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    iget-object p3, p3, Lcom/oplus/physicsengine/dynamics/Body;->mLinearVelocity:Lcom/oplus/physicsengine/common/Vector;

    invoke-virtual {p3}, Lcom/oplus/physicsengine/common/Vector;->setZero()V

    iget-object p3, p0, Lcom/oplus/physicsengine/engine/DragBehavior;->mSimulateBody:Lcom/oplus/physicsengine/dynamics/Body;

    if-eqz p3, :cond_1e

    iget-object p3, p3, Lcom/oplus/physicsengine/dynamics/Body;->mLinearVelocity:Lcom/oplus/physicsengine/common/Vector;

    invoke-virtual {p3}, Lcom/oplus/physicsengine/common/Vector;->setZero()V

    :cond_1e
    iget-object p3, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    iget-object p3, p3, Lcom/oplus/physicsengine/engine/UIItem;->mMoveTarget:Lcom/oplus/physicsengine/common/Vector;

    invoke-static {p1}, Lcom/oplus/physicsengine/common/Compat;->pixelsToPhysicalSize(F)F

    move-result p1

    invoke-static {p2}, Lcom/oplus/physicsengine/common/Compat;->pixelsToPhysicalSize(F)F

    move-result p2

    invoke-virtual {p3, p1, p2}, Lcom/oplus/physicsengine/common/Vector;->set(FF)Lcom/oplus/physicsengine/common/Vector;

    iget-object p1, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    iget-object p1, p1, Lcom/oplus/physicsengine/engine/UIItem;->mMoveTarget:Lcom/oplus/physicsengine/common/Vector;

    invoke-direct {p0, p1}, Lcom/oplus/physicsengine/engine/DragBehavior;->transform(Lcom/oplus/physicsengine/common/Vector;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/physicsengine/engine/DragBehavior;->mIsDragging:Z

    invoke-virtual {p0}, Lcom/oplus/physicsengine/engine/DragBehavior;->startBehavior()V

    return-void
.end method

.method public endDrag(F)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oplus/physicsengine/engine/DragBehavior;->endDrag(FF)V

    return-void
.end method

.method public endDrag(FF)V
    .registers 7

    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/DragBehavior;->destroySpring()V

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/DragBehavior;->mSimulateBody:Lcom/oplus/physicsengine/dynamics/Body;

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    iget-object v0, v0, Lcom/oplus/physicsengine/dynamics/Body;->mLinearVelocity:Lcom/oplus/physicsengine/common/Vector;

    iget v2, v0, Lcom/oplus/physicsengine/common/Vector;->mX:F

    cmpl-float v3, v2, v1

    if-nez v3, :cond_12

    move p1, v1

    goto :goto_1c

    :cond_12
    invoke-static {v2}, Lcom/oplus/physicsengine/common/MathUtils;->abs(F)F

    move-result v3

    div-float/2addr v2, v3

    invoke-static {p1}, Lcom/oplus/physicsengine/common/MathUtils;->abs(F)F

    move-result p1

    mul-float/2addr p1, v2

    :goto_1c
    iget v0, v0, Lcom/oplus/physicsengine/common/Vector;->mY:F

    cmpl-float v2, v0, v1

    if-nez v2, :cond_24

    move p2, v1

    goto :goto_2e

    :cond_24
    invoke-static {v0}, Lcom/oplus/physicsengine/common/MathUtils;->abs(F)F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {p2}, Lcom/oplus/physicsengine/common/MathUtils;->abs(F)F

    move-result p2

    mul-float/2addr p2, v0

    :cond_2e
    :goto_2e
    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/physicsengine/engine/UIItem;->setStartVelocity(FF)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/physicsengine/engine/DragBehavior;->mIsDragging:Z

    iget-object p1, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {p1, p0}, Lcom/oplus/physicsengine/dynamics/Body;->clearActiveRect(Lcom/oplus/physicsengine/engine/BaseBehavior;)V

    return-void
.end method

.method public getType()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isDragging()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/physicsengine/engine/DragBehavior;->mIsDragging:Z

    return p0
.end method

.method public isSteady()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/physicsengine/engine/DragBehavior;->mIsDragging:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public linkGroundToSpring(Lcom/oplus/physicsengine/dynamics/Body;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/oplus/physicsengine/engine/BaseBehavior;->linkGroundToSpring(Lcom/oplus/physicsengine/dynamics/Body;)V

    iget-object p0, p0, Lcom/oplus/physicsengine/engine/DragBehavior;->mSimulateSpringDef:Lcom/oplus/physicsengine/dynamics/spring/SpringDef;

    if-eqz p0, :cond_9

    iput-object p1, p0, Lcom/oplus/physicsengine/dynamics/spring/SpringDef;->bodyA:Lcom/oplus/physicsengine/dynamics/Body;

    :cond_9
    return-void
.end method

.method public moveToStartValue()V
    .registers 1

    return-void
.end method

.method public onDragging(F)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oplus/physicsengine/engine/DragBehavior;->dragTo(FF)V

    return-void
.end method

.method public onDragging(FF)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/physicsengine/engine/DragBehavior;->dragTo(FF)V

    return-void
.end method

.method public onPropertyBodyCreated()V
    .registers 3

    invoke-super {p0}, Lcom/oplus/physicsengine/engine/BaseBehavior;->onPropertyBodyCreated()V

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    iget-object v1, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mSpringDef:Lcom/oplus/physicsengine/dynamics/spring/SpringDef;

    iget v1, v1, Lcom/oplus/physicsengine/dynamics/spring/SpringDef;->frequencyHz:F

    invoke-virtual {v0, v1}, Lcom/oplus/physicsengine/dynamics/Body;->setActiveConstraintFrequency(F)V

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/DragBehavior;->mSimulateSpringDef:Lcom/oplus/physicsengine/dynamics/spring/SpringDef;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/DragBehavior;->mSimulateBody:Lcom/oplus/physicsengine/dynamics/Body;

    const-string v1, "SimulateTouch"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/physicsengine/engine/BaseBehavior;->copyBodyFromPropertyBody(Ljava/lang/String;Lcom/oplus/physicsengine/dynamics/Body;)Lcom/oplus/physicsengine/dynamics/Body;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/physicsengine/engine/DragBehavior;->mSimulateBody:Lcom/oplus/physicsengine/dynamics/Body;

    iget-object p0, p0, Lcom/oplus/physicsengine/engine/DragBehavior;->mSimulateSpringDef:Lcom/oplus/physicsengine/dynamics/spring/SpringDef;

    iput-object v0, p0, Lcom/oplus/physicsengine/dynamics/spring/SpringDef;->bodyB:Lcom/oplus/physicsengine/dynamics/Body;

    :cond_1e
    return-void
.end method

.method public onRemove()V
    .registers 2

    invoke-super {p0}, Lcom/oplus/physicsengine/engine/BaseBehavior;->onRemove()V

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/DragBehavior;->mSimulateBody:Lcom/oplus/physicsengine/dynamics/Body;

    if-eqz v0, :cond_a

    invoke-virtual {p0, v0}, Lcom/oplus/physicsengine/engine/BaseBehavior;->destroyBody(Lcom/oplus/physicsengine/dynamics/Body;)Z

    :cond_a
    return-void
.end method

.method public setSpringProperty(FF)Lcom/oplus/physicsengine/engine/BaseBehavior;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/oplus/physicsengine/engine/BaseBehavior;",
            ">(FF)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/oplus/physicsengine/dynamics/Body;->setActiveConstraintFrequency(F)V

    :cond_7
    invoke-super {p0, p1, p2}, Lcom/oplus/physicsengine/engine/BaseBehavior;->setSpringProperty(FF)Lcom/oplus/physicsengine/engine/BaseBehavior;

    move-result-object p0

    return-object p0
.end method

.method public startBehavior()V
    .registers 1

    invoke-super {p0}, Lcom/oplus/physicsengine/engine/BaseBehavior;->startBehavior()V

    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/DragBehavior;->createSpring()V

    return-void
.end method

.method public stopBehavior()Z
    .registers 1

    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/DragBehavior;->destroySpring()V

    invoke-super {p0}, Lcom/oplus/physicsengine/engine/BaseBehavior;->stopBehavior()Z

    move-result p0

    return p0
.end method
