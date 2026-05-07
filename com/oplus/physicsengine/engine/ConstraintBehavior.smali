.class public abstract Lcom/oplus/physicsengine/engine/ConstraintBehavior;
.super Lcom/oplus/physicsengine/engine/BaseBehavior;
.source ""


# static fields
.field public static final COLLISION_MODE_ATTACH:I = 0x1

.field public static final COLLISION_MODE_ERASE:I = 0x3

.field public static final COLLISION_MODE_NO_LIMIT:I = 0x0

.field public static final COLLISION_MODE_REBOUND:I = 0x2

.field private static final DEFAULT_REBOUND_DECAY_RATIO:F = 0.5f

.field private static final DEFAULT_SPRING_DAMPING_RATIO:F = 0.4f

.field private static final DEFAULT_SPRING_FREQUENCY:F = 1.0f

.field public static final NOT_OVER_BOUNDS:I = 0x0

.field public static final OVER_BOTTOM_BOUND:I = 0x8

.field public static final OVER_LEFT_BOUND:I = 0x1

.field public static final OVER_RIGHT_BOUND:I = 0x4

.field public static final OVER_TOP_BOUND:I = 0x2


# instance fields
.field public mAssistBody:Lcom/oplus/physicsengine/dynamics/Body;

.field public mCollisionMode:I

.field public mConstraintPointX:F

.field public mConstraintPointY:F

.field public final mConstraintRect:Landroid/graphics/RectF;

.field public mOverBoundsState:I

.field public mShouldFixXSide:Z

.field public mShouldFixYSide:Z


# direct methods
.method public constructor <init>(ILandroid/graphics/RectF;)V
    .registers 5

    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/BaseBehavior;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mConstraintRect:Landroid/graphics/RectF;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mShouldFixXSide:Z

    iput-boolean v0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mShouldFixYSide:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mConstraintPointX:F

    iput v1, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mConstraintPointY:F

    iput v0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mOverBoundsState:I

    iput v0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mCollisionMode:I

    iput p1, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mCollisionMode:I

    invoke-virtual {p0, p2}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->setConstraintRect(Landroid/graphics/RectF;)V

    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->isCollisionLimitMode()Z

    move-result p1

    if-eqz p1, :cond_33

    new-instance p1, Lcom/oplus/physicsengine/dynamics/spring/SpringDef;

    invoke-direct {p1}, Lcom/oplus/physicsengine/dynamics/spring/SpringDef;-><init>()V

    iput-object p1, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mSpringDef:Lcom/oplus/physicsengine/dynamics/spring/SpringDef;

    const/high16 p0, 0x3f800000  # 1.0f

    iput p0, p1, Lcom/oplus/physicsengine/dynamics/spring/SpringDef;->frequencyHz:F

    const p0, 0x3ecccccd  # 0.4f

    iput p0, p1, Lcom/oplus/physicsengine/dynamics/spring/SpringDef;->dampingRatio:F

    :cond_33
    return-void
.end method

.method private createSpring()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mSpringDef:Lcom/oplus/physicsengine/dynamics/spring/SpringDef;

    invoke-virtual {p0, v0}, Lcom/oplus/physicsengine/engine/BaseBehavior;->createDefaultSpring(Lcom/oplus/physicsengine/dynamics/spring/SpringDef;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mSpring:Lcom/oplus/physicsengine/dynamics/spring/Spring;

    iget v1, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mConstraintPointX:F

    iget p0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mConstraintPointY:F

    invoke-virtual {v0, v1, p0}, Lcom/oplus/physicsengine/dynamics/spring/Spring;->setTarget(FF)V

    :cond_11
    return-void
.end method

.method private destroySpring()V
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/physicsengine/engine/BaseBehavior;->destroyDefaultSpring()Z

    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->resetOverBoundsState()V

    return-void
.end method

.method private isCollisionAttachMode()Z
    .registers 2

    iget p0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mCollisionMode:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private isCollisionEraseMode()Z
    .registers 2

    iget p0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mCollisionMode:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method private isCollisionLimitMode()Z
    .registers 2

    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->isCollisionAttachMode()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->isCollisionEraseMode()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->isCollisionReboundMode()Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    :goto_16
    return p0
.end method

.method private isCollisionNoLimitMode()Z
    .registers 1

    iget p0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mCollisionMode:I

    if-nez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private isCollisionReboundMode()Z
    .registers 2

    iget p0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mCollisionMode:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method private resetOverBoundsState()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mOverBoundsState:I

    iput-boolean v0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mShouldFixXSide:Z

    iput-boolean v0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mShouldFixYSide:Z

    return-void
.end method


# virtual methods
.method public applySizeChanged(FF)Lcom/oplus/physicsengine/engine/BaseBehavior;
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/oplus/physicsengine/engine/BaseBehavior;->applySizeChanged(FF)Lcom/oplus/physicsengine/engine/BaseBehavior;

    iget-object p1, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mAssistBody:Lcom/oplus/physicsengine/dynamics/Body;

    if-eqz p1, :cond_10

    iget-object p2, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    iget v0, p2, Lcom/oplus/physicsengine/dynamics/Body;->mWidth:F

    iget p2, p2, Lcom/oplus/physicsengine/dynamics/Body;->mHeight:F

    invoke-virtual {p1, v0, p2}, Lcom/oplus/physicsengine/dynamics/Body;->setSize(FF)V

    :cond_10
    return-object p0
.end method

.method public calculateConstraintPosition()V
    .registers 2

    invoke-virtual {p0}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->isOverXBounds()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mShouldFixXSide:Z

    invoke-virtual {p0}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->isOverYBounds()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mShouldFixYSide:Z

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {v0}, Lcom/oplus/physicsengine/dynamics/Body;->getPosition()Lcom/oplus/physicsengine/common/Vector;

    move-result-object v0

    iget v0, v0, Lcom/oplus/physicsengine/common/Vector;->mX:F

    invoke-virtual {p0, v0}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->getFixedXInActive(F)F

    move-result v0

    iput v0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mConstraintPointX:F

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {v0}, Lcom/oplus/physicsengine/dynamics/Body;->getPosition()Lcom/oplus/physicsengine/common/Vector;

    move-result-object v0

    iget v0, v0, Lcom/oplus/physicsengine/common/Vector;->mY:F

    invoke-virtual {p0, v0}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->getFixedYInActive(F)F

    move-result v0

    iput v0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mConstraintPointY:F

    return-void
.end method

.method public checkOverBoundsState(FF)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mOverBoundsState:I

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    iget-object v0, v0, Lcom/oplus/physicsengine/dynamics/Body;->mActiveRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_46

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_46

    :cond_10
    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    iget-object v0, v0, Lcom/oplus/physicsengine/dynamics/Body;->mActiveRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_21

    iget p1, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mOverBoundsState:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mOverBoundsState:I

    goto :goto_2d

    :cond_21
    iget v1, v0, Landroid/graphics/RectF;->right:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_2d

    iget p1, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mOverBoundsState:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mOverBoundsState:I

    :cond_2d
    :goto_2d
    iget p1, v0, Landroid/graphics/RectF;->top:F

    cmpg-float p1, p2, p1

    if-gez p1, :cond_3a

    iget p1, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mOverBoundsState:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mOverBoundsState:I

    goto :goto_46

    :cond_3a
    iget p1, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float p1, p2, p1

    if-lez p1, :cond_46

    iget p1, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mOverBoundsState:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mOverBoundsState:I

    :cond_46
    :goto_46
    return-void
.end method

.method public dispatchChanging()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    iget-object v1, v0, Lcom/oplus/physicsengine/dynamics/Body;->mActiveRect:Landroid/graphics/RectF;

    if-eqz v1, :cond_17

    invoke-virtual {v0}, Lcom/oplus/physicsengine/dynamics/Body;->getPosition()Lcom/oplus/physicsengine/common/Vector;

    move-result-object v0

    iget v0, v0, Lcom/oplus/physicsengine/common/Vector;->mX:F

    iget-object v1, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {v1}, Lcom/oplus/physicsengine/dynamics/Body;->getPosition()Lcom/oplus/physicsengine/common/Vector;

    move-result-object v1

    iget v1, v1, Lcom/oplus/physicsengine/common/Vector;->mY:F

    invoke-virtual {p0, v0, v1}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->checkOverBoundsState(FF)V

    :cond_17
    invoke-virtual {p0}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->handlePositionChanging()V

    invoke-super {p0}, Lcom/oplus/physicsengine/engine/BaseBehavior;->dispatchChanging()V

    return-void
.end method

.method public getFixedXInActive(F)F
    .registers 4

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    iget-object v0, v0, Lcom/oplus/physicsengine/dynamics/Body;->mActiveRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1f

    :cond_d
    iget-object p0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    iget-object p0, p0, Lcom/oplus/physicsengine/dynamics/Body;->mActiveRect:Landroid/graphics/RectF;

    iget v0, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_18

    return v0

    :cond_18
    iget p0, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v0, p1, p0

    if-lez v0, :cond_1f

    return p0

    :cond_1f
    :goto_1f
    return p1
.end method

.method public getFixedYInActive(F)F
    .registers 4

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    iget-object v0, v0, Lcom/oplus/physicsengine/dynamics/Body;->mActiveRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1f

    :cond_d
    iget-object p0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    iget-object p0, p0, Lcom/oplus/physicsengine/dynamics/Body;->mActiveRect:Landroid/graphics/RectF;

    iget v0, p0, Landroid/graphics/RectF;->top:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_18

    return v0

    :cond_18
    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, p1, p0

    if-lez v0, :cond_1f

    return p0

    :cond_1f
    :goto_1f
    return p1
.end method

.method public getType()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public handlePositionChanging()V
    .registers 4

    iget v0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mCollisionMode:I

    if-eqz v0, :cond_148

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_75

    const/4 v1, 0x3

    if-eq v0, v1, :cond_f

    goto/16 :goto_15e

    :cond_f
    iget-boolean v0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mShouldFixXSide:Z

    if-nez v0, :cond_5f

    iget-boolean v0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mShouldFixYSide:Z

    if-eqz v0, :cond_18

    goto :goto_5f

    :cond_18
    invoke-virtual {p0}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->isOverBounds()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {v0}, Lcom/oplus/physicsengine/dynamics/Body;->getLinearVelocity()Lcom/oplus/physicsengine/common/Vector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/physicsengine/common/Vector;->setZero()V

    :cond_27
    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    iget-object v0, v0, Lcom/oplus/physicsengine/engine/UIItem;->mMoveTarget:Lcom/oplus/physicsengine/common/Vector;

    iget-object v1, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {v1}, Lcom/oplus/physicsengine/dynamics/Body;->getPosition()Lcom/oplus/physicsengine/common/Vector;

    move-result-object v1

    iget v1, v1, Lcom/oplus/physicsengine/common/Vector;->mX:F

    invoke-virtual {p0, v1}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->getFixedXInActive(F)F

    move-result v1

    iget-object v2, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {v2}, Lcom/oplus/physicsengine/dynamics/Body;->getPosition()Lcom/oplus/physicsengine/common/Vector;

    move-result-object v2

    iget v2, v2, Lcom/oplus/physicsengine/common/Vector;->mY:F

    invoke-virtual {p0, v2}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->getFixedYInActive(F)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/oplus/physicsengine/common/Vector;->set(FF)Lcom/oplus/physicsengine/common/Vector;

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    iget-object v0, v0, Lcom/oplus/physicsengine/engine/UIItem;->mMoveTarget:Lcom/oplus/physicsengine/common/Vector;

    iget v0, v0, Lcom/oplus/physicsengine/common/Vector;->mX:F

    invoke-virtual {p0, v0}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->getFixedXInActive(F)F

    move-result v0

    iput v0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mConstraintPointX:F

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    iget-object v0, v0, Lcom/oplus/physicsengine/engine/UIItem;->mMoveTarget:Lcom/oplus/physicsengine/common/Vector;

    iget v0, v0, Lcom/oplus/physicsengine/common/Vector;->mY:F

    invoke-virtual {p0, v0}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->getFixedYInActive(F)F

    move-result v0

    iput v0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mConstraintPointY:F

    goto :goto_6c

    :cond_5f
    :goto_5f
    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    iget-object v0, v0, Lcom/oplus/physicsengine/engine/UIItem;->mMoveTarget:Lcom/oplus/physicsengine/common/Vector;

    iget-object v1, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mAssistBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {v1}, Lcom/oplus/physicsengine/dynamics/Body;->getPosition()Lcom/oplus/physicsengine/common/Vector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/physicsengine/common/Vector;->set(Lcom/oplus/physicsengine/common/Vector;)Lcom/oplus/physicsengine/common/Vector;

    :goto_6c
    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    iget-object v0, v0, Lcom/oplus/physicsengine/engine/UIItem;->mMoveTarget:Lcom/oplus/physicsengine/common/Vector;

    invoke-virtual {p0, v0}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->transform(Lcom/oplus/physicsengine/common/Vector;)V

    goto/16 :goto_15e

    :cond_75
    iget-boolean v0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mShouldFixXSide:Z

    if-nez v0, :cond_cf

    iget-boolean v0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mShouldFixYSide:Z

    if-eqz v0, :cond_7e

    goto :goto_cf

    :cond_7e
    invoke-virtual {p0}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->isOverBounds()Z

    move-result v0

    if-eqz v0, :cond_97

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {v0}, Lcom/oplus/physicsengine/dynamics/Body;->getLinearVelocity()Lcom/oplus/physicsengine/common/Vector;

    move-result-object v1

    const/high16 v2, 0x3f000000  # 0.5f

    invoke-virtual {v1, v2}, Lcom/oplus/physicsengine/common/Vector;->mulLocal(F)Lcom/oplus/physicsengine/common/Vector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/physicsengine/common/Vector;->negateLocal()Lcom/oplus/physicsengine/common/Vector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/physicsengine/dynamics/Body;->setLinearVelocity(Lcom/oplus/physicsengine/common/Vector;)V

    :cond_97
    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    iget-object v0, v0, Lcom/oplus/physicsengine/engine/UIItem;->mMoveTarget:Lcom/oplus/physicsengine/common/Vector;

    iget-object v1, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {v1}, Lcom/oplus/physicsengine/dynamics/Body;->getPosition()Lcom/oplus/physicsengine/common/Vector;

    move-result-object v1

    iget v1, v1, Lcom/oplus/physicsengine/common/Vector;->mX:F

    invoke-virtual {p0, v1}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->getFixedXInActive(F)F

    move-result v1

    iget-object v2, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {v2}, Lcom/oplus/physicsengine/dynamics/Body;->getPosition()Lcom/oplus/physicsengine/common/Vector;

    move-result-object v2

    iget v2, v2, Lcom/oplus/physicsengine/common/Vector;->mY:F

    invoke-virtual {p0, v2}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->getFixedYInActive(F)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/oplus/physicsengine/common/Vector;->set(FF)Lcom/oplus/physicsengine/common/Vector;

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    iget-object v0, v0, Lcom/oplus/physicsengine/engine/UIItem;->mMoveTarget:Lcom/oplus/physicsengine/common/Vector;

    iget v0, v0, Lcom/oplus/physicsengine/common/Vector;->mX:F

    invoke-virtual {p0, v0}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->getFixedXInActive(F)F

    move-result v0

    iput v0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mConstraintPointX:F

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    iget-object v0, v0, Lcom/oplus/physicsengine/engine/UIItem;->mMoveTarget:Lcom/oplus/physicsengine/common/Vector;

    iget v0, v0, Lcom/oplus/physicsengine/common/Vector;->mY:F

    invoke-virtual {p0, v0}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->getFixedYInActive(F)F

    move-result v0

    iput v0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mConstraintPointY:F

    goto :goto_dc

    :cond_cf
    :goto_cf
    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    iget-object v0, v0, Lcom/oplus/physicsengine/engine/UIItem;->mMoveTarget:Lcom/oplus/physicsengine/common/Vector;

    iget-object v1, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mAssistBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {v1}, Lcom/oplus/physicsengine/dynamics/Body;->getPosition()Lcom/oplus/physicsengine/common/Vector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/physicsengine/common/Vector;->set(Lcom/oplus/physicsengine/common/Vector;)Lcom/oplus/physicsengine/common/Vector;

    :goto_dc
    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    iget-object v0, v0, Lcom/oplus/physicsengine/engine/UIItem;->mMoveTarget:Lcom/oplus/physicsengine/common/Vector;

    invoke-virtual {p0, v0}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->transform(Lcom/oplus/physicsengine/common/Vector;)V

    goto/16 :goto_15e

    :cond_e5
    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    iget-object v0, v0, Lcom/oplus/physicsengine/engine/UIItem;->mMoveTarget:Lcom/oplus/physicsengine/common/Vector;

    iget-object v2, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {v2}, Lcom/oplus/physicsengine/dynamics/Body;->getPosition()Lcom/oplus/physicsengine/common/Vector;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oplus/physicsengine/common/Vector;->set(Lcom/oplus/physicsengine/common/Vector;)Lcom/oplus/physicsengine/common/Vector;

    iget-boolean v0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mShouldFixXSide:Z

    if-nez v0, :cond_103

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    iget-object v0, v0, Lcom/oplus/physicsengine/engine/UIItem;->mMoveTarget:Lcom/oplus/physicsengine/common/Vector;

    iget v0, v0, Lcom/oplus/physicsengine/common/Vector;->mX:F

    invoke-virtual {p0, v0}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->getFixedXInActive(F)F

    move-result v0

    iput v0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mConstraintPointX:F

    goto :goto_111

    :cond_103
    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    iget-object v0, v0, Lcom/oplus/physicsengine/engine/UIItem;->mMoveTarget:Lcom/oplus/physicsengine/common/Vector;

    iget-object v2, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mAssistBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {v2}, Lcom/oplus/physicsengine/dynamics/Body;->getPosition()Lcom/oplus/physicsengine/common/Vector;

    move-result-object v2

    iget v2, v2, Lcom/oplus/physicsengine/common/Vector;->mX:F

    iput v2, v0, Lcom/oplus/physicsengine/common/Vector;->mX:F

    :goto_111
    invoke-virtual {p0}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->isOverXBounds()Z

    move-result v0

    if-eqz v0, :cond_119

    iput-boolean v1, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mShouldFixXSide:Z

    :cond_119
    iget-boolean v0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mShouldFixYSide:Z

    if-nez v0, :cond_12a

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    iget-object v0, v0, Lcom/oplus/physicsengine/engine/UIItem;->mMoveTarget:Lcom/oplus/physicsengine/common/Vector;

    iget v0, v0, Lcom/oplus/physicsengine/common/Vector;->mY:F

    invoke-virtual {p0, v0}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->getFixedYInActive(F)F

    move-result v0

    iput v0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mConstraintPointY:F

    goto :goto_138

    :cond_12a
    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    iget-object v0, v0, Lcom/oplus/physicsengine/engine/UIItem;->mMoveTarget:Lcom/oplus/physicsengine/common/Vector;

    iget-object v2, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mAssistBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {v2}, Lcom/oplus/physicsengine/dynamics/Body;->getPosition()Lcom/oplus/physicsengine/common/Vector;

    move-result-object v2

    iget v2, v2, Lcom/oplus/physicsengine/common/Vector;->mY:F

    iput v2, v0, Lcom/oplus/physicsengine/common/Vector;->mY:F

    :goto_138
    invoke-virtual {p0}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->isOverYBounds()Z

    move-result v0

    if-eqz v0, :cond_140

    iput-boolean v1, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mShouldFixYSide:Z

    :cond_140
    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    iget-object v0, v0, Lcom/oplus/physicsengine/engine/UIItem;->mMoveTarget:Lcom/oplus/physicsengine/common/Vector;

    invoke-virtual {p0, v0}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->transform(Lcom/oplus/physicsengine/common/Vector;)V

    goto :goto_15e

    :cond_148
    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    iget-object v0, v0, Lcom/oplus/physicsengine/engine/UIItem;->mMoveTarget:Lcom/oplus/physicsengine/common/Vector;

    iget-object v1, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {v1}, Lcom/oplus/physicsengine/dynamics/Body;->getPosition()Lcom/oplus/physicsengine/common/Vector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/physicsengine/common/Vector;->set(Lcom/oplus/physicsengine/common/Vector;)Lcom/oplus/physicsengine/common/Vector;

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    iget-object v1, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    iget-object v1, v1, Lcom/oplus/physicsengine/engine/UIItem;->mMoveTarget:Lcom/oplus/physicsengine/common/Vector;

    invoke-virtual {p0, v0, v1}, Lcom/oplus/physicsengine/engine/BaseBehavior;->transformBodyTo(Lcom/oplus/physicsengine/dynamics/Body;Lcom/oplus/physicsengine/common/Vector;)V

    :goto_15e
    return-void
.end method

.method public isOverBottomBound()Z
    .registers 1

    iget p0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mOverBoundsState:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isOverBounds()Z
    .registers 1

    iget p0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mOverBoundsState:I

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isOverLeftBound()Z
    .registers 2

    iget p0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mOverBoundsState:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isOverRightBound()Z
    .registers 1

    iget p0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mOverBoundsState:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isOverTopBound()Z
    .registers 1

    iget p0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mOverBoundsState:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isOverXBounds()Z
    .registers 2

    invoke-virtual {p0}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->isOverLeftBound()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->isOverRightBound()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public isOverYBounds()Z
    .registers 2

    invoke-virtual {p0}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->isOverTopBound()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->isOverBottomBound()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public isSteady()Z
    .registers 2

    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->isCollisionLimitMode()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-super {p0}, Lcom/oplus/physicsengine/engine/BaseBehavior;->isSteady()Z

    move-result p0

    return p0

    :cond_b
    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    iget-object v0, v0, Lcom/oplus/physicsengine/dynamics/Body;->mLinearVelocity:Lcom/oplus/physicsengine/common/Vector;

    invoke-virtual {p0, v0}, Lcom/oplus/physicsengine/engine/BaseBehavior;->isVelocitySteady(Lcom/oplus/physicsengine/common/Vector;)Z

    move-result p0

    return p0
.end method

.method public linkGroundToSpring(Lcom/oplus/physicsengine/dynamics/Body;)V
    .registers 3

    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->isCollisionLimitMode()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-super {p0, p1}, Lcom/oplus/physicsengine/engine/BaseBehavior;->linkGroundToSpring(Lcom/oplus/physicsengine/dynamics/Body;)V

    :cond_9
    return-void
.end method

.method public moveToStartValue()V
    .registers 3

    invoke-super {p0}, Lcom/oplus/physicsengine/engine/BaseBehavior;->moveToStartValue()V

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mAssistBody:Lcom/oplus/physicsengine/dynamics/Body;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mActiveUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    iget-object v1, v1, Lcom/oplus/physicsengine/engine/UIItem;->mMoveTarget:Lcom/oplus/physicsengine/common/Vector;

    invoke-virtual {p0, v0, v1}, Lcom/oplus/physicsengine/engine/BaseBehavior;->transformBodyTo(Lcom/oplus/physicsengine/dynamics/Body;Lcom/oplus/physicsengine/common/Vector;)V

    :cond_e
    return-void
.end method

.method public onPropertyBodyCreated()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mConstraintRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    iget-object v1, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mConstraintRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/oplus/physicsengine/dynamics/Body;->setOriginActiveRect(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {v0, p0}, Lcom/oplus/physicsengine/dynamics/Body;->updateActiveRect(Lcom/oplus/physicsengine/engine/BaseBehavior;)Z

    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->isCollisionLimitMode()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    iget v1, v0, Lcom/oplus/physicsengine/dynamics/Body;->mActiveConstraintFrequency:F

    const/high16 v2, 0x42480000  # 50.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2d

    iget-object v1, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mSpringDef:Lcom/oplus/physicsengine/dynamics/spring/SpringDef;

    iget v1, v1, Lcom/oplus/physicsengine/dynamics/spring/SpringDef;->frequencyHz:F

    invoke-virtual {v0, v1}, Lcom/oplus/physicsengine/dynamics/Body;->setActiveConstraintFrequency(F)V

    :cond_2d
    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mSpringDef:Lcom/oplus/physicsengine/dynamics/spring/SpringDef;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mAssistBody:Lcom/oplus/physicsengine/dynamics/Body;

    const-string v1, "Assist"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/physicsengine/engine/BaseBehavior;->copyBodyFromPropertyBody(Ljava/lang/String;Lcom/oplus/physicsengine/dynamics/Body;)Lcom/oplus/physicsengine/dynamics/Body;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mAssistBody:Lcom/oplus/physicsengine/dynamics/Body;

    iget-object p0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mSpringDef:Lcom/oplus/physicsengine/dynamics/spring/SpringDef;

    iput-object v0, p0, Lcom/oplus/physicsengine/dynamics/spring/SpringDef;->bodyB:Lcom/oplus/physicsengine/dynamics/Body;

    :cond_3f
    return-void
.end method

.method public onRemove()V
    .registers 2

    invoke-super {p0}, Lcom/oplus/physicsengine/engine/BaseBehavior;->onRemove()V

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {v0, p0}, Lcom/oplus/physicsengine/dynamics/Body;->clearActiveConstraint(Lcom/oplus/physicsengine/engine/BaseBehavior;)V

    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->isCollisionLimitMode()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->destroySpring()V

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mAssistBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {p0, v0}, Lcom/oplus/physicsengine/engine/BaseBehavior;->destroyBody(Lcom/oplus/physicsengine/dynamics/Body;)Z

    :cond_16
    return-void
.end method

.method public onStartBehavior()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {v0, p0}, Lcom/oplus/physicsengine/dynamics/Body;->updateActiveRect(Lcom/oplus/physicsengine/engine/BaseBehavior;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->isCollisionLimitMode()Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {v0}, Lcom/oplus/physicsengine/dynamics/Body;->getPosition()Lcom/oplus/physicsengine/common/Vector;

    move-result-object v0

    iget v0, v0, Lcom/oplus/physicsengine/common/Vector;->mX:F

    iget-object v1, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {v1}, Lcom/oplus/physicsengine/dynamics/Body;->getPosition()Lcom/oplus/physicsengine/common/Vector;

    move-result-object v1

    iget v1, v1, Lcom/oplus/physicsengine/common/Vector;->mY:F

    invoke-virtual {p0, v0, v1}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->checkOverBoundsState(FF)V

    invoke-virtual {p0}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->calculateConstraintPosition()V

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mAssistBody:Lcom/oplus/physicsengine/dynamics/Body;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/physicsengine/dynamics/Body;->setAwake(Z)V

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mAssistBody:Lcom/oplus/physicsengine/dynamics/Body;

    iget-object v1, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {v1}, Lcom/oplus/physicsengine/dynamics/Body;->getLinearVelocity()Lcom/oplus/physicsengine/common/Vector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/physicsengine/dynamics/Body;->setLinearVelocity(Lcom/oplus/physicsengine/common/Vector;)V

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mAssistBody:Lcom/oplus/physicsengine/dynamics/Body;

    iget-object v1, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {v1}, Lcom/oplus/physicsengine/dynamics/Body;->getPosition()Lcom/oplus/physicsengine/common/Vector;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oplus/physicsengine/engine/BaseBehavior;->transformBodyTo(Lcom/oplus/physicsengine/dynamics/Body;Lcom/oplus/physicsengine/common/Vector;)V

    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->createSpring()V

    :cond_44
    return-void
.end method

.method public setCollisionLimitMode(I)V
    .registers 3

    iget v0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mCollisionMode:I

    if-eqz v0, :cond_8

    if-eqz p1, :cond_8

    iput p1, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mCollisionMode:I

    :cond_8
    return-void
.end method

.method public setConstraintRect(Landroid/graphics/RectF;)V
    .registers 3

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1c

    :cond_9
    iget-object v0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mConstraintRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object p1, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    if-eqz p1, :cond_1c

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mConstraintRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Lcom/oplus/physicsengine/dynamics/Body;->setOriginActiveRect(Landroid/graphics/RectF;)V

    iget-object p1, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {p1, p0}, Lcom/oplus/physicsengine/dynamics/Body;->updateActiveRect(Lcom/oplus/physicsengine/engine/BaseBehavior;)Z

    :cond_1c
    :goto_1c
    return-void
.end method

.method public setSpringProperty(FF)Lcom/oplus/physicsengine/engine/BaseBehavior;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/oplus/physicsengine/engine/BaseBehavior;",
            ">(FF)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    if-eqz v0, :cond_17

    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->isCollisionLimitMode()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    iget v1, v0, Lcom/oplus/physicsengine/dynamics/Body;->mActiveConstraintFrequency:F

    const/high16 v2, 0x42480000  # 50.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_17

    invoke-virtual {v0, p1}, Lcom/oplus/physicsengine/dynamics/Body;->setActiveConstraintFrequency(F)V

    :cond_17
    invoke-super {p0, p1, p2}, Lcom/oplus/physicsengine/engine/BaseBehavior;->setSpringProperty(FF)Lcom/oplus/physicsengine/engine/BaseBehavior;

    move-result-object p0

    return-object p0
.end method

.method public startBehavior()V
    .registers 1

    invoke-super {p0}, Lcom/oplus/physicsengine/engine/BaseBehavior;->startBehavior()V

    invoke-virtual {p0}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->onStartBehavior()V

    return-void
.end method

.method public stopBehavior()Z
    .registers 3

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {v0, p0}, Lcom/oplus/physicsengine/dynamics/Body;->clearActiveRect(Lcom/oplus/physicsengine/engine/BaseBehavior;)V

    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->isCollisionLimitMode()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->destroySpring()V

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mAssistBody:Lcom/oplus/physicsengine/dynamics/Body;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/physicsengine/dynamics/Body;->setAwake(Z)V

    :cond_14
    invoke-super {p0}, Lcom/oplus/physicsengine/engine/BaseBehavior;->stopBehavior()Z

    move-result p0

    return p0
.end method

.method public transform(Lcom/oplus/physicsengine/common/Vector;)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mPropertyBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {p0, v0, p1}, Lcom/oplus/physicsengine/engine/BaseBehavior;->transformBodyTo(Lcom/oplus/physicsengine/dynamics/Body;Lcom/oplus/physicsengine/common/Vector;)V

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/BaseBehavior;->mSpring:Lcom/oplus/physicsengine/dynamics/spring/Spring;

    if-eqz v0, :cond_15

    iget v1, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mConstraintPointX:F

    iget v2, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mConstraintPointY:F

    invoke-virtual {v0, v1, v2}, Lcom/oplus/physicsengine/dynamics/spring/Spring;->setTarget(FF)V

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->mAssistBody:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {p0, v0, p1}, Lcom/oplus/physicsengine/engine/BaseBehavior;->transformBodyTo(Lcom/oplus/physicsengine/dynamics/Body;Lcom/oplus/physicsengine/common/Vector;)V

    :cond_15
    return-void
.end method
