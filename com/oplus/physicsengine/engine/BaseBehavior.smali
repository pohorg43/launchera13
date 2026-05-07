.class public abstract Lcom/oplus/physicsengine/engine/BaseBehavior;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final BEHAVIOR_TYPE_ATTACHMENT:I = 0x3

.field public static final BEHAVIOR_TYPE_CONSTRAINT:I = 0x1

.field public static final BEHAVIOR_TYPE_DRAG:I = 0x0

.field public static final BEHAVIOR_TYPE_FLING:I = 0x2

.field public static final BEHAVIOR_TYPE_PRESS:I = 0x5

.field public static final BEHAVIOR_TYPE_SNAP:I = 0x4

.field private static final DEFAULT_DAMPING_RATIO:F = 0.2f

.field private static final DEFAULT_FREQUENCY:F = 4.0f


# instance fields
.field public mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

.field public mAnimator:Lcom/oplus/physicsengine/engine/PhysicalAnimator;

.field public mFirstProperty:Lcom/oplus/physicsengine/engine/FloatPropertyHolder;

.field public mIsSpringApplied:Z

.field public mIsStarted:Z

.field public mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

.field public mPropertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/physicsengine/engine/FloatPropertyHolder;",
            ">;"
        }
    .end annotation
.end field

.field public mSpring:Lcom/oplus/physicsengine/dynamics/spring/Spring;

.field public mSpringDef:Lcom/oplus/physicsengine/dynamics/spring/SpringDef;

.field public mStartAction:Ljava/lang/Runnable;

.field public mStopAction:Ljava/lang/Runnable;

.field public mTarget:Ljava/lang/Object;

.field public mValueThreshold:F


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mValueThreshold:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mIsSpringApplied:Z

    iput-boolean v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mIsStarted:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mFirstProperty:Lcom/oplus/physicsengine/engine/FloatPropertyHolder;

    iput-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mAnimator:Lcom/oplus/physicsengine/engine/PhysicalAnimator;

    iput-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mSpring:Lcom/oplus/physicsengine/dynamics/spring/Spring;

    invoke-virtual {p0}, Lcom/oplus/physicsengine/engine/BaseBehavior;->onBehaviorCreated()V

    return-void
.end method

.method private addProperty(Lcom/oplus/physicsengine/engine/FloatPropertyHolder;)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyMap:Ljava/util/HashMap;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyMap:Ljava/util/HashMap;

    :cond_c
    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mFirstProperty:Lcom/oplus/physicsengine/engine/FloatPropertyHolder;

    if-nez v0, :cond_15

    iput-object p1, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mFirstProperty:Lcom/oplus/physicsengine/engine/FloatPropertyHolder;

    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/BaseBehavior;->verifyBodyProperty()V

    :cond_15
    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/oplus/physicsengine/engine/FloatPropertyHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mValueThreshold:F

    iget p1, p1, Lcom/oplus/physicsengine/engine/FloatPropertyHolder;->mValueThreshold:F

    invoke-static {v0, p1}, Lcom/oplus/physicsengine/common/MathUtils;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mValueThreshold:F

    return-void
.end method

.method private createSubBody(Lcom/oplus/physicsengine/common/Vector;IIFFLjava/lang/String;)Lcom/oplus/physicsengine/dynamics/Body;
    .registers 14

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mAnimator:Lcom/oplus/physicsengine/engine/PhysicalAnimator;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->createBody(Lcom/oplus/physicsengine/common/Vector;IIFFLjava/lang/String;)Lcom/oplus/physicsengine/dynamics/Body;

    move-result-object p0

    return-object p0
.end method

.method private updateProperty(Lcom/oplus/physicsengine/engine/UIItem;Lcom/oplus/physicsengine/engine/FloatPropertyHolder;)V
    .registers 3

    invoke-virtual {p2, p1}, Lcom/oplus/physicsengine/engine/FloatPropertyHolder;->update(Ljava/lang/Object;)V

    return-void
.end method

.method private verifyBodyProperty()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mAnimator:Lcom/oplus/physicsengine/engine/PhysicalAnimator;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v1, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    if-eqz v1, :cond_a

    return-void

    :cond_a
    iget-object v1, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mTarget:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->getOrCreateUIItem(Ljava/lang/Object;)Lcom/oplus/physicsengine/engine/UIItem;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    iget-object v1, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mAnimator:Lcom/oplus/physicsengine/engine/PhysicalAnimator;

    iget-object v2, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mFirstProperty:Lcom/oplus/physicsengine/engine/FloatPropertyHolder;

    if-eqz v2, :cond_1b

    iget v2, v2, Lcom/oplus/physicsengine/engine/FloatPropertyHolder;->mPropertyType:I

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x1

    :goto_1c
    invoke-virtual {v1, v0, v2}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->getOrCreatePropertyBody(Lcom/oplus/physicsengine/engine/UIItem;I)Lcom/oplus/physicsengine/dynamics/Body;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {p0}, Lcom/oplus/physicsengine/engine/BaseBehavior;->onPropertyBodyCreated()V

    invoke-static {}, Lcom/oplus/physicsengine/common/Debug;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_3d

    const-string v0, "verifyBodyProperty mPropertyBody =:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/physicsengine/common/Debug;->logD(Ljava/lang/String;)V

    :cond_3d
    return-void
.end method


# virtual methods
.method public applySizeChanged(FF)Lcom/oplus/physicsengine/engine/BaseBehavior;
    .registers 4

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Lcom/oplus/physicsengine/engine/UIItem;->setSize(FF)Lcom/oplus/physicsengine/engine/UIItem;

    :cond_7
    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    if-eqz v0, :cond_1b

    invoke-static {p1}, Lcom/oplus/physicsengine/common/Compat;->pixelsToPhysicalSize(F)F

    move-result p1

    invoke-static {p2}, Lcom/oplus/physicsengine/common/Compat;->pixelsToPhysicalSize(F)F

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/oplus/physicsengine/dynamics/Body;->setSize(FF)V

    iget-object p1, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {p1, p0}, Lcom/oplus/physicsengine/dynamics/Body;->updateActiveRect(Lcom/oplus/physicsengine/engine/BaseBehavior;)Z

    :cond_1b
    return-object p0
.end method

.method public applyTo(Ljava/lang/Object;)Lcom/oplus/physicsengine/engine/BaseBehavior;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/oplus/physicsengine/engine/BaseBehavior;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mTarget:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/BaseBehavior;->verifyBodyProperty()V

    return-object p0
.end method

.method public bindAnimator(Lcom/oplus/physicsengine/engine/PhysicalAnimator;)Lcom/oplus/physicsengine/engine/BaseBehavior;
    .registers 2

    iput-object p1, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mAnimator:Lcom/oplus/physicsengine/engine/PhysicalAnimator;

    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/BaseBehavior;->verifyBodyProperty()V

    iget-object p1, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mAnimator:Lcom/oplus/physicsengine/engine/PhysicalAnimator;

    invoke-virtual {p1}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->getGround()Lcom/oplus/physicsengine/dynamics/Body;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/physicsengine/engine/BaseBehavior;->linkGroundToSpring(Lcom/oplus/physicsengine/dynamics/Body;)V

    return-object p0
.end method

.method public copyBodyFromPropertyBody(Ljava/lang/String;Lcom/oplus/physicsengine/dynamics/Body;)Lcom/oplus/physicsengine/dynamics/Body;
    .registers 10

    if-nez p2, :cond_1d

    iget-object p2, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    iget-object v1, p2, Lcom/oplus/physicsengine/dynamics/Body;->mOriginPosition:Lcom/oplus/physicsengine/common/Vector;

    invoke-virtual {p2}, Lcom/oplus/physicsengine/dynamics/Body;->getType()I

    move-result v2

    iget-object p2, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {p2}, Lcom/oplus/physicsengine/dynamics/Body;->getProperty()I

    move-result v3

    iget-object p2, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    iget v4, p2, Lcom/oplus/physicsengine/dynamics/Body;->mWidth:F

    iget v5, p2, Lcom/oplus/physicsengine/dynamics/Body;->mHeight:F

    move-object v0, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/oplus/physicsengine/engine/BaseBehavior;->createSubBody(Lcom/oplus/physicsengine/common/Vector;IIFFLjava/lang/String;)Lcom/oplus/physicsengine/dynamics/Body;

    move-result-object p2

    goto :goto_26

    :cond_1d
    iget-object p1, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    iget v0, p1, Lcom/oplus/physicsengine/dynamics/Body;->mWidth:F

    iget p1, p1, Lcom/oplus/physicsengine/dynamics/Body;->mHeight:F

    invoke-virtual {p2, v0, p1}, Lcom/oplus/physicsengine/dynamics/Body;->setSize(FF)V

    :goto_26
    iget-object p0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {p0}, Lcom/oplus/physicsengine/dynamics/Body;->getLinearVelocity()Lcom/oplus/physicsengine/common/Vector;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/oplus/physicsengine/dynamics/Body;->setLinearVelocity(Lcom/oplus/physicsengine/common/Vector;)V

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Lcom/oplus/physicsengine/dynamics/Body;->setAwake(Z)V

    return-object p2
.end method

.method public createDefaultSpring(Lcom/oplus/physicsengine/dynamics/spring/SpringDef;)Z
    .registers 3

    iget-boolean v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mIsSpringApplied:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {p0, p1, v0}, Lcom/oplus/physicsengine/engine/BaseBehavior;->createSpring(Lcom/oplus/physicsengine/dynamics/spring/SpringDef;Lcom/oplus/physicsengine/dynamics/Body;)Lcom/oplus/physicsengine/dynamics/spring/Spring;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mSpring:Lcom/oplus/physicsengine/dynamics/spring/Spring;

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mIsSpringApplied:Z

    return p1

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public createSpring(Lcom/oplus/physicsengine/dynamics/spring/SpringDef;Lcom/oplus/physicsengine/dynamics/Body;)Lcom/oplus/physicsengine/dynamics/spring/Spring;
    .registers 4

    if-eqz p1, :cond_15

    if-nez p2, :cond_5

    goto :goto_15

    :cond_5
    iget-object v0, p1, Lcom/oplus/physicsengine/dynamics/spring/SpringDef;->target:Lcom/oplus/physicsengine/common/Vector;

    invoke-virtual {p2}, Lcom/oplus/physicsengine/dynamics/Body;->getWorldCenter()Lcom/oplus/physicsengine/common/Vector;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/oplus/physicsengine/common/Vector;->set(Lcom/oplus/physicsengine/common/Vector;)Lcom/oplus/physicsengine/common/Vector;

    iget-object p0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mAnimator:Lcom/oplus/physicsengine/engine/PhysicalAnimator;

    invoke-virtual {p0, p1}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->createSpring(Lcom/oplus/physicsengine/dynamics/spring/SpringDef;)Lcom/oplus/physicsengine/dynamics/spring/Spring;

    move-result-object p0

    return-object p0

    :cond_15
    :goto_15
    const/4 p0, 0x0

    return-object p0
.end method

.method public createSpringDef()V
    .registers 3

    const/high16 v0, 0x40800000  # 4.0f

    const v1, 0x3e4ccccd  # 0.2f

    invoke-virtual {p0, v0, v1}, Lcom/oplus/physicsengine/engine/BaseBehavior;->createSpringDef(FF)V

    return-void
.end method

.method public createSpringDef(FF)V
    .registers 3

    new-instance p1, Lcom/oplus/physicsengine/dynamics/spring/SpringDef;

    invoke-direct {p1}, Lcom/oplus/physicsengine/dynamics/spring/SpringDef;-><init>()V

    iput-object p1, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mSpringDef:Lcom/oplus/physicsengine/dynamics/spring/SpringDef;

    const/high16 p0, 0x40800000  # 4.0f

    iput p0, p1, Lcom/oplus/physicsengine/dynamics/spring/SpringDef;->frequencyHz:F

    const p0, 0x3e4ccccd  # 0.2f

    iput p0, p1, Lcom/oplus/physicsengine/dynamics/spring/SpringDef;->dampingRatio:F

    return-void
.end method

.method public destroyBody(Lcom/oplus/physicsengine/dynamics/Body;)Z
    .registers 2

    iget-object p0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mAnimator:Lcom/oplus/physicsengine/engine/PhysicalAnimator;

    invoke-virtual {p0, p1}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->destroyBody(Lcom/oplus/physicsengine/dynamics/Body;)Z

    move-result p0

    return p0
.end method

.method public destroyDefaultSpring()Z
    .registers 3

    iget-boolean v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mIsSpringApplied:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mSpring:Lcom/oplus/physicsengine/dynamics/spring/Spring;

    invoke-virtual {p0, v0}, Lcom/oplus/physicsengine/engine/BaseBehavior;->destroySpring(Lcom/oplus/physicsengine/dynamics/spring/Spring;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mSpring:Lcom/oplus/physicsengine/dynamics/spring/Spring;

    iput-boolean v1, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mIsSpringApplied:Z

    const/4 p0, 0x1

    return p0

    :cond_11
    return v1
.end method

.method public destroySpring(Lcom/oplus/physicsengine/dynamics/spring/Spring;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mAnimator:Lcom/oplus/physicsengine/engine/PhysicalAnimator;

    invoke-virtual {p0, p1}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->destroySpring(Lcom/oplus/physicsengine/dynamics/spring/Spring;)Z

    return-void
.end method

.method public dispatchChanging()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    iget-object v1, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {v1}, Lcom/oplus/physicsengine/dynamics/Body;->getPosition()Lcom/oplus/physicsengine/common/Vector;

    move-result-object v1

    iget v1, v1, Lcom/oplus/physicsengine/common/Vector;->mX:F

    iget-object v2, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {v2}, Lcom/oplus/physicsengine/dynamics/Body;->getHookPosition()Lcom/oplus/physicsengine/common/Vector;

    move-result-object v2

    iget v2, v2, Lcom/oplus/physicsengine/common/Vector;->mX:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Lcom/oplus/physicsengine/common/Compat;->physicalSizeToPixels(F)F

    move-result v1

    iget-object v2, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {v2}, Lcom/oplus/physicsengine/dynamics/Body;->getPosition()Lcom/oplus/physicsengine/common/Vector;

    move-result-object v2

    iget v2, v2, Lcom/oplus/physicsengine/common/Vector;->mY:F

    iget-object p0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {p0}, Lcom/oplus/physicsengine/dynamics/Body;->getHookPosition()Lcom/oplus/physicsengine/common/Vector;

    move-result-object p0

    iget p0, p0, Lcom/oplus/physicsengine/common/Vector;->mY:F

    sub-float/2addr v2, p0

    invoke-static {v2}, Lcom/oplus/physicsengine/common/Compat;->physicalSizeToPixels(F)F

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/oplus/physicsengine/engine/UIItem;->setTransformPosition(FF)V

    return-void
.end method

.method public getAnimatedValue()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    iget-object v1, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mFirstProperty:Lcom/oplus/physicsengine/engine/FloatPropertyHolder;

    invoke-virtual {p0, v0, v1}, Lcom/oplus/physicsengine/engine/BaseBehavior;->getPropertyValue(Ljava/lang/Object;Lcom/oplus/physicsengine/engine/FloatPropertyHolder;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/physicsengine/engine/FloatPropertyHolder;

    if-eqz p1, :cond_19

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    invoke-virtual {p0, v0, p1}, Lcom/oplus/physicsengine/engine/BaseBehavior;->getPropertyValue(Ljava/lang/Object;Lcom/oplus/physicsengine/engine/FloatPropertyHolder;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_19
    return-object v1
.end method

.method public getMoverTarget()Lcom/oplus/physicsengine/common/Vector;
    .registers 1

    iget-object p0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_8

    :cond_6
    iget-object p0, p0, Lcom/oplus/physicsengine/engine/UIItem;->mMoveTarget:Lcom/oplus/physicsengine/common/Vector;

    :goto_8
    return-object p0
.end method

.method public getPropertyBody()Lcom/oplus/physicsengine/dynamics/Body;
    .registers 1

    iget-object p0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    return-object p0
.end method

.method public getPropertyBodyLinearDamping()F
    .registers 1

    iget-object p0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/oplus/physicsengine/dynamics/Body;->getLinearDamping()F

    move-result p0

    return p0

    :cond_9
    const/high16 p0, -0x40800000  # -1.0f

    return p0
.end method

.method public getPropertyValue(Ljava/lang/Object;Lcom/oplus/physicsengine/engine/FloatPropertyHolder;)F
    .registers 3

    invoke-virtual {p2, p1}, Lcom/oplus/physicsengine/engine/FloatPropertyHolder;->getValue(Ljava/lang/Object;)F

    move-result p0

    return p0
.end method

.method public getTransform()Lcom/oplus/physicsengine/engine/Transform;
    .registers 1

    iget-object p0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/oplus/physicsengine/engine/UIItem;->getTransform()Lcom/oplus/physicsengine/engine/Transform;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getType()I
.end method

.method public isCloseToConstraint(Lcom/oplus/physicsengine/common/Vector;)Z
    .registers 4

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mSpring:Lcom/oplus/physicsengine/dynamics/spring/Spring;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/oplus/physicsengine/dynamics/spring/Spring;->getTarget()Lcom/oplus/physicsengine/common/Vector;

    move-result-object v0

    iget v0, v0, Lcom/oplus/physicsengine/common/Vector;->mX:F

    iget v1, p1, Lcom/oplus/physicsengine/common/Vector;->mX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Lcom/oplus/physicsengine/common/MathUtils;->abs(F)F

    move-result v0

    iget-object p0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mSpring:Lcom/oplus/physicsengine/dynamics/spring/Spring;

    invoke-virtual {p0}, Lcom/oplus/physicsengine/dynamics/spring/Spring;->getTarget()Lcom/oplus/physicsengine/common/Vector;

    move-result-object p0

    iget p0, p0, Lcom/oplus/physicsengine/common/Vector;->mY:F

    iget p1, p1, Lcom/oplus/physicsengine/common/Vector;->mY:F

    sub-float/2addr p0, p1

    invoke-static {p0}, Lcom/oplus/physicsengine/common/MathUtils;->abs(F)F

    move-result p0

    add-float/2addr p0, v0

    invoke-static {p0}, Lcom/oplus/physicsengine/common/Compat;->lessThanSteadyAccuracy(F)Z

    move-result p0

    return p0

    :cond_26
    const/4 p0, 0x1

    return p0
.end method

.method public isSteady()Z
    .registers 2

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    iget-object v0, v0, Lcom/oplus/physicsengine/dynamics/Body;->mLinearVelocity:Lcom/oplus/physicsengine/common/Vector;

    invoke-virtual {p0, v0}, Lcom/oplus/physicsengine/engine/BaseBehavior;->isVelocitySteady(Lcom/oplus/physicsengine/common/Vector;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {v0}, Lcom/oplus/physicsengine/dynamics/Body;->getPosition()Lcom/oplus/physicsengine/common/Vector;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/physicsengine/engine/BaseBehavior;->isCloseToConstraint(Lcom/oplus/physicsengine/common/Vector;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method public isVelocitySteady(Lcom/oplus/physicsengine/common/Vector;)Z
    .registers 2

    iget p0, p1, Lcom/oplus/physicsengine/common/Vector;->mX:F

    invoke-static {p0}, Lcom/oplus/physicsengine/common/MathUtils;->abs(F)F

    move-result p0

    invoke-static {p0}, Lcom/oplus/physicsengine/common/Compat;->lessThanSteadyAccuracy(F)Z

    move-result p0

    if-eqz p0, :cond_1a

    iget p0, p1, Lcom/oplus/physicsengine/common/Vector;->mY:F

    invoke-static {p0}, Lcom/oplus/physicsengine/common/MathUtils;->abs(F)F

    move-result p0

    invoke-static {p0}, Lcom/oplus/physicsengine/common/Compat;->lessThanSteadyAccuracy(F)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public linkGroundToSpring(Lcom/oplus/physicsengine/dynamics/Body;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mSpringDef:Lcom/oplus/physicsengine/dynamics/spring/SpringDef;

    if-eqz p0, :cond_a

    iput-object p1, p0, Lcom/oplus/physicsengine/dynamics/spring/SpringDef;->bodyA:Lcom/oplus/physicsengine/dynamics/Body;

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/oplus/physicsengine/dynamics/Body;->setAwake(Z)V

    :cond_a
    return-void
.end method

.method public moveToStartValue()V
    .registers 5

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    iget-object v1, v0, Lcom/oplus/physicsengine/engine/UIItem;->mMoveTarget:Lcom/oplus/physicsengine/common/Vector;

    iget-object v0, v0, Lcom/oplus/physicsengine/engine/UIItem;->mStartPosition:Lcom/oplus/physicsengine/common/Vector;

    iget v0, v0, Lcom/oplus/physicsengine/common/Vector;->mX:F

    invoke-static {v0}, Lcom/oplus/physicsengine/common/Compat;->pixelsToPhysicalSize(F)F

    move-result v0

    iget-object v2, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {v2}, Lcom/oplus/physicsengine/dynamics/Body;->getHookPosition()Lcom/oplus/physicsengine/common/Vector;

    move-result-object v2

    iget v2, v2, Lcom/oplus/physicsengine/common/Vector;->mX:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mValueThreshold:F

    div-float/2addr v0, v2

    iget-object v2, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    iget-object v2, v2, Lcom/oplus/physicsengine/engine/UIItem;->mStartPosition:Lcom/oplus/physicsengine/common/Vector;

    iget v2, v2, Lcom/oplus/physicsengine/common/Vector;->mY:F

    invoke-static {v2}, Lcom/oplus/physicsengine/common/Compat;->pixelsToPhysicalSize(F)F

    move-result v2

    iget-object v3, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {v3}, Lcom/oplus/physicsengine/dynamics/Body;->getHookPosition()Lcom/oplus/physicsengine/common/Vector;

    move-result-object v3

    iget v3, v3, Lcom/oplus/physicsengine/common/Vector;->mY:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mValueThreshold:F

    div-float/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/oplus/physicsengine/common/Vector;->set(FF)Lcom/oplus/physicsengine/common/Vector;

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    iget-object v1, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    iget-object v1, v1, Lcom/oplus/physicsengine/engine/UIItem;->mMoveTarget:Lcom/oplus/physicsengine/common/Vector;

    invoke-virtual {p0, v0, v1}, Lcom/oplus/physicsengine/engine/BaseBehavior;->transformBodyTo(Lcom/oplus/physicsengine/dynamics/Body;Lcom/oplus/physicsengine/common/Vector;)V

    return-void
.end method

.method public onBehaviorCreated()V
    .registers 1

    return-void
.end method

.method public onPropertyBodyCreated()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mSpringDef:Lcom/oplus/physicsengine/dynamics/spring/SpringDef;

    if-eqz v0, :cond_8

    iget-object p0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    iput-object p0, v0, Lcom/oplus/physicsengine/dynamics/spring/SpringDef;->bodyB:Lcom/oplus/physicsengine/dynamics/Body;

    :cond_8
    return-void
.end method

.method public onRemove()V
    .registers 3

    invoke-static {}, Lcom/oplus/physicsengine/common/Debug;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "onRemove mIsStarted =:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mIsStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",this =:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/physicsengine/common/Debug;->logD(Ljava/lang/String;)V

    :cond_20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mStopAction:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/oplus/physicsengine/engine/BaseBehavior;->stopBehavior()Z

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

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mSpringDef:Lcom/oplus/physicsengine/dynamics/spring/SpringDef;

    if-eqz v0, :cond_14

    iput p1, v0, Lcom/oplus/physicsengine/dynamics/spring/SpringDef;->frequencyHz:F

    iput p2, v0, Lcom/oplus/physicsengine/dynamics/spring/SpringDef;->dampingRatio:F

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mSpring:Lcom/oplus/physicsengine/dynamics/spring/Spring;

    if-eqz v0, :cond_14

    invoke-virtual {v0, p1}, Lcom/oplus/physicsengine/dynamics/spring/Spring;->setFrequency(F)V

    iget-object p1, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mSpring:Lcom/oplus/physicsengine/dynamics/spring/Spring;

    invoke-virtual {p1, p2}, Lcom/oplus/physicsengine/dynamics/spring/Spring;->setDampingRatio(F)V

    :cond_14
    return-object p0
.end method

.method public startBehavior()V
    .registers 2

    iget-boolean v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mIsStarted:Z

    if-nez v0, :cond_21

    invoke-virtual {p0}, Lcom/oplus/physicsengine/engine/BaseBehavior;->updateStartValue()V

    invoke-virtual {p0}, Lcom/oplus/physicsengine/engine/BaseBehavior;->moveToStartValue()V

    invoke-virtual {p0}, Lcom/oplus/physicsengine/engine/BaseBehavior;->dispatchChanging()V

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mAnimator:Lcom/oplus/physicsengine/engine/PhysicalAnimator;

    invoke-virtual {v0, p0}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->updateValue(Lcom/oplus/physicsengine/engine/BaseBehavior;)V

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mAnimator:Lcom/oplus/physicsengine/engine/PhysicalAnimator;

    invoke-virtual {v0, p0}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->startBehavior(Lcom/oplus/physicsengine/engine/BaseBehavior;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mIsStarted:Z

    iget-object p0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mStartAction:Ljava/lang/Runnable;

    if-eqz p0, :cond_21

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_21
    return-void
.end method

.method public stopBehavior()Z
    .registers 3

    iget-boolean v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mIsStarted:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/oplus/physicsengine/engine/BaseBehavior;->getType()I

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    iget-object v0, v0, Lcom/oplus/physicsengine/engine/UIItem;->mStartVelocity:Lcom/oplus/physicsengine/common/Vector;

    invoke-virtual {v0}, Lcom/oplus/physicsengine/common/Vector;->setZero()V

    :cond_12
    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mAnimator:Lcom/oplus/physicsengine/engine/PhysicalAnimator;

    invoke-virtual {v0, p0}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->stopBehavior(Lcom/oplus/physicsengine/engine/BaseBehavior;)V

    iput-boolean v1, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mIsStarted:Z

    iget-object p0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mStopAction:Ljava/lang/Runnable;

    if-eqz p0, :cond_20

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_20
    const/4 p0, 0x1

    return p0

    :cond_22
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "Behavior{ type="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/physicsengine/engine/BaseBehavior;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mValueThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mValueThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mTarget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mTarget:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPropertyBody="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public transformBodyTo(Lcom/oplus/physicsengine/dynamics/Body;Lcom/oplus/physicsengine/common/Vector;)V
    .registers 3

    invoke-virtual {p1, p2}, Lcom/oplus/physicsengine/dynamics/Body;->setPosition(Lcom/oplus/physicsengine/common/Vector;)V

    return-void
.end method

.method public updateProperties()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyMap:Ljava/util/HashMap;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/physicsengine/engine/FloatPropertyHolder;

    if-eqz v1, :cond_d

    iget-object v2, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    invoke-direct {p0, v2, v1}, Lcom/oplus/physicsengine/engine/BaseBehavior;->updateProperty(Lcom/oplus/physicsengine/engine/UIItem;Lcom/oplus/physicsengine/engine/FloatPropertyHolder;)V

    goto :goto_d

    :cond_21
    return-void
.end method

.method public updateStartValue()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyMap:Ljava/util/HashMap;

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    invoke-virtual {v0}, Lcom/oplus/physicsengine/engine/UIItem;->getTransform()Lcom/oplus/physicsengine/engine/Transform;

    move-result-object v1

    iget v1, v1, Lcom/oplus/physicsengine/engine/Transform;->x:F

    iget-object p0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    invoke-virtual {p0}, Lcom/oplus/physicsengine/engine/UIItem;->getTransform()Lcom/oplus/physicsengine/engine/Transform;

    move-result-object p0

    iget p0, p0, Lcom/oplus/physicsengine/engine/Transform;->y:F

    invoke-virtual {v0, v1, p0}, Lcom/oplus/physicsengine/engine/UIItem;->setStartPosition(FF)Lcom/oplus/physicsengine/engine/UIItem;

    return-void

    :cond_18
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_20
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/physicsengine/engine/FloatPropertyHolder;

    if-eqz v1, :cond_20

    iget-object v2, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    invoke-virtual {v1, v2}, Lcom/oplus/physicsengine/engine/FloatPropertyHolder;->verifyStartValue(Ljava/lang/Object;)V

    goto :goto_20

    :cond_34
    return-void
.end method

.method public varargs withProperty([Lcom/oplus/physicsengine/engine/FloatPropertyHolder;)Lcom/oplus/physicsengine/engine/BaseBehavior;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/oplus/physicsengine/engine/BaseBehavior;",
            ">([",
            "Lcom/oplus/physicsengine/engine/FloatPropertyHolder;",
            ")TT;"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_c

    aget-object v2, p1, v1

    invoke-direct {p0, v2}, Lcom/oplus/physicsengine/engine/BaseBehavior;->addProperty(Lcom/oplus/physicsengine/engine/FloatPropertyHolder;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    return-object p0
.end method

.method public withStartAction(Ljava/lang/Runnable;)Lcom/oplus/physicsengine/engine/BaseBehavior;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/oplus/physicsengine/engine/BaseBehavior;",
            ">(",
            "Ljava/lang/Runnable;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mStartAction:Ljava/lang/Runnable;

    return-object p0
.end method

.method public withStopAction(Ljava/lang/Runnable;)Lcom/oplus/physicsengine/engine/BaseBehavior;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/oplus/physicsengine/engine/BaseBehavior;",
            ">(",
            "Ljava/lang/Runnable;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mStopAction:Ljava/lang/Runnable;

    return-object p0
.end method
