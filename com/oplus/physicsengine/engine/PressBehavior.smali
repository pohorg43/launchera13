.class public Lcom/oplus/physicsengine/engine/PressBehavior;
.super Lcom/oplus/physicsengine/engine/BaseBehavior;
.source ""


# static fields
.field private static final DEFAULT_START_SCALE:F = 1.0f


# instance fields
.field private mIsPressing:Z

.field private mMinScaleThreshold:F

.field private mPressForce:Lcom/oplus/physicsengine/common/Vector;

.field private mTransformScale:F


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/BaseBehavior;-><init>()V

    new-instance v0, Lcom/oplus/physicsengine/common/Vector;

    const/4 v1, 0x0

    const v2, 0x459c4000  # 5000.0f

    invoke-direct {v0, v1, v2}, Lcom/oplus/physicsengine/common/Vector;-><init>(FF)V

    iput-object v0, p0, Lcom/oplus/physicsengine/engine/PressBehavior;->mPressForce:Lcom/oplus/physicsengine/common/Vector;

    const v0, 0x7f7fffff  # Float.MAX_VALUE

    iput v0, p0, Lcom/oplus/physicsengine/engine/PressBehavior;->mTransformScale:F

    iput v1, p0, Lcom/oplus/physicsengine/engine/PressBehavior;->mMinScaleThreshold:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/physicsengine/engine/PressBehavior;->mIsPressing:Z

    invoke-virtual {p0}, Lcom/oplus/physicsengine/engine/BaseBehavior;->createSpringDef()V

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/oplus/physicsengine/engine/FloatPropertyHolder;

    invoke-static {}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->scaleX()Lcom/oplus/physicsengine/engine/FloatPropertyHolder;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->scaleY()Lcom/oplus/physicsengine/engine/FloatPropertyHolder;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lcom/oplus/physicsengine/engine/BaseBehavior;->withProperty([Lcom/oplus/physicsengine/engine/FloatPropertyHolder;)Lcom/oplus/physicsengine/engine/BaseBehavior;

    return-void
.end method

.method private calculateDistanceToScale()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mSpring:Lcom/oplus/physicsengine/dynamics/spring/Spring;

    invoke-virtual {v0}, Lcom/oplus/physicsengine/dynamics/spring/Spring;->getTarget()Lcom/oplus/physicsengine/common/Vector;

    move-result-object v0

    iget v0, v0, Lcom/oplus/physicsengine/common/Vector;->mY:F

    const/high16 v1, 0x40000000  # 2.0f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {v1}, Lcom/oplus/physicsengine/dynamics/Body;->getPosition()Lcom/oplus/physicsengine/common/Vector;

    move-result-object v1

    iget v1, v1, Lcom/oplus/physicsengine/common/Vector;->mY:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Lcom/oplus/physicsengine/common/Compat;->physicalSizeToPixels(F)F

    move-result v0

    iput v0, p0, Lcom/oplus/physicsengine/engine/PressBehavior;->mTransformScale:F

    iget v1, p0, Lcom/oplus/physicsengine/engine/PressBehavior;->mMinScaleThreshold:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_22

    iput v1, p0, Lcom/oplus/physicsengine/engine/PressBehavior;->mTransformScale:F

    :cond_22
    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    iget p0, p0, Lcom/oplus/physicsengine/engine/PressBehavior;->mTransformScale:F

    invoke-virtual {v0, p0}, Lcom/oplus/physicsengine/engine/UIItem;->setTransformScale(F)V

    return-void
.end method

.method private createSpring()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mSpringDef:Lcom/oplus/physicsengine/dynamics/spring/SpringDef;

    invoke-virtual {p0, v0}, Lcom/oplus/physicsengine/engine/BaseBehavior;->createDefaultSpring(Lcom/oplus/physicsengine/dynamics/spring/SpringDef;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mSpring:Lcom/oplus/physicsengine/dynamics/spring/Spring;

    iget-object p0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {p0}, Lcom/oplus/physicsengine/dynamics/Body;->getPosition()Lcom/oplus/physicsengine/common/Vector;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/oplus/physicsengine/dynamics/spring/Spring;->setTarget(Lcom/oplus/physicsengine/common/Vector;)V

    :cond_13
    return-void
.end method

.method private destroySpring()V
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/physicsengine/engine/BaseBehavior;->destroyDefaultSpring()Z

    return-void
.end method


# virtual methods
.method public dispatchChanging()V
    .registers 3

    iget-boolean v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mIsSpringApplied:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/oplus/physicsengine/engine/PressBehavior;->mIsPressing:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    iget-object v1, p0, Lcom/oplus/physicsengine/engine/PressBehavior;->mPressForce:Lcom/oplus/physicsengine/common/Vector;

    invoke-virtual {v0, v1}, Lcom/oplus/physicsengine/dynamics/Body;->applyForceToCenter(Lcom/oplus/physicsengine/common/Vector;)V

    :cond_f
    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/PressBehavior;->calculateDistanceToScale()V

    :cond_12
    return-void
.end method

.method public getType()I
    .registers 1

    const/4 p0, 0x5

    return p0
.end method

.method public moveToStartValue()V
    .registers 5

    new-instance v0, Lcom/oplus/physicsengine/common/Vector;

    iget-object v1, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    iget-object v1, v1, Lcom/oplus/physicsengine/engine/UIItem;->mStartScale:Lcom/oplus/physicsengine/common/Vector;

    iget v1, v1, Lcom/oplus/physicsengine/common/Vector;->mX:F

    iget v2, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mValueThreshold:F

    div-float/2addr v1, v2

    invoke-static {v1}, Lcom/oplus/physicsengine/common/Compat;->pixelsToPhysicalSize(F)F

    move-result v1

    iget-object v2, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    iget-object v2, v2, Lcom/oplus/physicsengine/engine/UIItem;->mStartScale:Lcom/oplus/physicsengine/common/Vector;

    iget v2, v2, Lcom/oplus/physicsengine/common/Vector;->mY:F

    iget v3, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mValueThreshold:F

    div-float/2addr v2, v3

    invoke-static {v2}, Lcom/oplus/physicsengine/common/Compat;->pixelsToPhysicalSize(F)F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/oplus/physicsengine/common/Vector;-><init>(FF)V

    iget-object v1, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {p0, v1, v0}, Lcom/oplus/physicsengine/engine/BaseBehavior;->transformBodyTo(Lcom/oplus/physicsengine/dynamics/Body;Lcom/oplus/physicsengine/common/Vector;)V

    iget-object p0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mSpring:Lcom/oplus/physicsengine/dynamics/spring/Spring;

    if-eqz p0, :cond_2b

    invoke-virtual {p0, v0}, Lcom/oplus/physicsengine/dynamics/spring/Spring;->setTarget(Lcom/oplus/physicsengine/common/Vector;)V

    :cond_2b
    invoke-static {}, Lcom/oplus/physicsengine/common/Debug;->isDebugMode()Z

    move-result p0

    if-eqz p0, :cond_45

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveToStartValue scaleToPosition =:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/physicsengine/common/Debug;->logD(Ljava/lang/String;)V

    :cond_45
    return-void
.end method

.method public setPressForce(F)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/physicsengine/engine/PressBehavior;->mPressForce:Lcom/oplus/physicsengine/common/Vector;

    iput p1, p0, Lcom/oplus/physicsengine/common/Vector;->mY:F

    return-void
.end method

.method public start(Z)V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/physicsengine/engine/PressBehavior;->mIsPressing:Z

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    iget-object v1, p0, Lcom/oplus/physicsengine/engine/PressBehavior;->mPressForce:Lcom/oplus/physicsengine/common/Vector;

    invoke-virtual {v0, v1}, Lcom/oplus/physicsengine/dynamics/Body;->applyForceToCenter(Lcom/oplus/physicsengine/common/Vector;)V

    invoke-virtual {p0}, Lcom/oplus/physicsengine/engine/PressBehavior;->startBehavior()V

    if-nez p1, :cond_12

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/physicsengine/engine/PressBehavior;->mIsPressing:Z

    :cond_12
    return-void
.end method

.method public startBehavior()V
    .registers 1

    invoke-super {p0}, Lcom/oplus/physicsengine/engine/BaseBehavior;->startBehavior()V

    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/PressBehavior;->createSpring()V

    return-void
.end method

.method public stop()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/physicsengine/engine/PressBehavior;->mIsPressing:Z

    return-void
.end method

.method public stopBehavior()Z
    .registers 1

    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/PressBehavior;->destroySpring()V

    invoke-super {p0}, Lcom/oplus/physicsengine/engine/BaseBehavior;->stopBehavior()Z

    move-result p0

    return p0
.end method

.method public updateStartValue()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/physicsengine/engine/FloatPropertyHolder;

    if-eqz v1, :cond_a

    iget-boolean v2, v1, Lcom/oplus/physicsengine/engine/FloatPropertyHolder;->mIsStartValueSet:Z

    if-nez v2, :cond_a

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v1, v2}, Lcom/oplus/physicsengine/engine/FloatPropertyHolder;->setStartValue(F)Lcom/oplus/physicsengine/engine/FloatPropertyHolder;

    iget-object v2, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    invoke-virtual {v1, v2}, Lcom/oplus/physicsengine/engine/FloatPropertyHolder;->verifyStartValue(Ljava/lang/Object;)V

    goto :goto_a

    :cond_27
    return-void
.end method
