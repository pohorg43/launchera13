.class public Lcom/oplus/physicsengine/dynamics/spring/Spring;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mBeta:F

.field private mBodyA:Lcom/oplus/physicsengine/dynamics/Body;

.field private mBodyB:Lcom/oplus/physicsengine/dynamics/Body;

.field private mDampingRatio:F

.field public mEdgeA:Lcom/oplus/physicsengine/dynamics/spring/Edge;

.field public mEdgeB:Lcom/oplus/physicsengine/dynamics/spring/Edge;

.field private mFrequencyHz:F

.field private mGamma:F

.field private final mImpulse:Lcom/oplus/physicsengine/common/Vector;

.field private final mImpulseTemp:Lcom/oplus/physicsengine/common/Vector;

.field private mInvMass:F

.field public mIsSolved:Z

.field private final mLocalAnchor:Lcom/oplus/physicsengine/common/Vector;

.field private final mMass:Lcom/oplus/physicsengine/common/Mat22;

.field private mMaxForce:F

.field public mNext:Lcom/oplus/physicsengine/dynamics/spring/Spring;

.field private final mPositionCenter:Lcom/oplus/physicsengine/common/Vector;

.field public mPrev:Lcom/oplus/physicsengine/dynamics/spring/Spring;

.field private final mTarget:Lcom/oplus/physicsengine/common/Vector;


# direct methods
.method private constructor <init>(Lcom/oplus/physicsengine/common/Vector;Lcom/oplus/physicsengine/dynamics/spring/SpringDef;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mPrev:Lcom/oplus/physicsengine/dynamics/spring/Spring;

    iput-object v0, p0, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mNext:Lcom/oplus/physicsengine/dynamics/spring/Spring;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mBeta:F

    iput v0, p0, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mGamma:F

    new-instance v1, Lcom/oplus/physicsengine/common/Vector;

    invoke-direct {v1}, Lcom/oplus/physicsengine/common/Vector;-><init>()V

    iput-object v1, p0, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mLocalAnchor:Lcom/oplus/physicsengine/common/Vector;

    new-instance v2, Lcom/oplus/physicsengine/common/Vector;

    invoke-direct {v2}, Lcom/oplus/physicsengine/common/Vector;-><init>()V

    iput-object v2, p0, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mPositionCenter:Lcom/oplus/physicsengine/common/Vector;

    new-instance v2, Lcom/oplus/physicsengine/common/Vector;

    invoke-direct {v2}, Lcom/oplus/physicsengine/common/Vector;-><init>()V

    iput-object v2, p0, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mTarget:Lcom/oplus/physicsengine/common/Vector;

    new-instance v3, Lcom/oplus/physicsengine/common/Vector;

    invoke-direct {v3}, Lcom/oplus/physicsengine/common/Vector;-><init>()V

    iput-object v3, p0, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mImpulse:Lcom/oplus/physicsengine/common/Vector;

    new-instance v3, Lcom/oplus/physicsengine/common/Mat22;

    invoke-direct {v3}, Lcom/oplus/physicsengine/common/Mat22;-><init>()V

    iput-object v3, p0, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mMass:Lcom/oplus/physicsengine/common/Mat22;

    iput-object p1, p0, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mImpulseTemp:Lcom/oplus/physicsengine/common/Vector;

    iget-object p1, p2, Lcom/oplus/physicsengine/dynamics/spring/SpringDef;->bodyA:Lcom/oplus/physicsengine/dynamics/Body;

    iput-object p1, p0, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mBodyA:Lcom/oplus/physicsengine/dynamics/Body;

    iget-object p1, p2, Lcom/oplus/physicsengine/dynamics/spring/SpringDef;->bodyB:Lcom/oplus/physicsengine/dynamics/Body;

    iput-object p1, p0, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mBodyB:Lcom/oplus/physicsengine/dynamics/Body;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mIsSolved:Z

    new-instance p1, Lcom/oplus/physicsengine/dynamics/spring/Edge;

    invoke-direct {p1}, Lcom/oplus/physicsengine/dynamics/spring/Edge;-><init>()V

    iput-object p1, p0, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mEdgeA:Lcom/oplus/physicsengine/dynamics/spring/Edge;

    new-instance p1, Lcom/oplus/physicsengine/dynamics/spring/Edge;

    invoke-direct {p1}, Lcom/oplus/physicsengine/dynamics/spring/Edge;-><init>()V

    iput-object p1, p0, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mEdgeB:Lcom/oplus/physicsengine/dynamics/spring/Edge;

    iget p1, p2, Lcom/oplus/physicsengine/dynamics/spring/SpringDef;->frequencyHz:F

    cmpg-float p1, p1, v0

    if-ltz p1, :cond_7c

    iget p1, p2, Lcom/oplus/physicsengine/dynamics/spring/SpringDef;->maxForce:F

    cmpg-float p1, p1, v0

    if-ltz p1, :cond_7c

    iget p1, p2, Lcom/oplus/physicsengine/dynamics/spring/SpringDef;->dampingRatio:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_5e

    goto :goto_7c

    :cond_5e
    iget-object p1, p2, Lcom/oplus/physicsengine/dynamics/spring/SpringDef;->target:Lcom/oplus/physicsengine/common/Vector;

    invoke-virtual {v2, p1}, Lcom/oplus/physicsengine/common/Vector;->set(Lcom/oplus/physicsengine/common/Vector;)Lcom/oplus/physicsengine/common/Vector;

    invoke-virtual {v1, v2}, Lcom/oplus/physicsengine/common/Vector;->set(Lcom/oplus/physicsengine/common/Vector;)Lcom/oplus/physicsengine/common/Vector;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mBodyB:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {v0}, Lcom/oplus/physicsengine/dynamics/Body;->getPosition()Lcom/oplus/physicsengine/common/Vector;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oplus/physicsengine/common/Vector;->subLocal(Lcom/oplus/physicsengine/common/Vector;)Lcom/oplus/physicsengine/common/Vector;

    iget p1, p2, Lcom/oplus/physicsengine/dynamics/spring/SpringDef;->maxForce:F

    iput p1, p0, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mMaxForce:F

    iget p1, p2, Lcom/oplus/physicsengine/dynamics/spring/SpringDef;->frequencyHz:F

    iput p1, p0, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mFrequencyHz:F

    iget p1, p2, Lcom/oplus/physicsengine/dynamics/spring/SpringDef;->dampingRatio:F

    iput p1, p0, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mDampingRatio:F

    :cond_7c
    :goto_7c
    return-void
.end method

.method public static create(Lcom/oplus/physicsengine/dynamics/World;Lcom/oplus/physicsengine/dynamics/spring/SpringDef;)Lcom/oplus/physicsengine/dynamics/spring/Spring;
    .registers 3

    new-instance v0, Lcom/oplus/physicsengine/dynamics/spring/Spring;

    invoke-virtual {p0}, Lcom/oplus/physicsengine/dynamics/World;->getVectorTemp()Lcom/oplus/physicsengine/common/Vector;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/oplus/physicsengine/dynamics/spring/Spring;-><init>(Lcom/oplus/physicsengine/common/Vector;Lcom/oplus/physicsengine/dynamics/spring/SpringDef;)V

    return-object v0
.end method


# virtual methods
.method public final getBodyA()Lcom/oplus/physicsengine/dynamics/Body;
    .registers 1

    iget-object p0, p0, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mBodyA:Lcom/oplus/physicsengine/dynamics/Body;

    return-object p0
.end method

.method public final getBodyB()Lcom/oplus/physicsengine/dynamics/Body;
    .registers 1

    iget-object p0, p0, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mBodyB:Lcom/oplus/physicsengine/dynamics/Body;

    return-object p0
.end method

.method public getTarget()Lcom/oplus/physicsengine/common/Vector;
    .registers 1

    iget-object p0, p0, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mTarget:Lcom/oplus/physicsengine/common/Vector;

    return-object p0
.end method

.method public initVelocityConstraints(Lcom/oplus/physicsengine/dynamics/Body;F)V
    .registers 7

    iget-object v0, p0, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mBodyB:Lcom/oplus/physicsengine/dynamics/Body;

    iget v1, v0, Lcom/oplus/physicsengine/dynamics/Body;->mInvMass:F

    iput v1, p0, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mInvMass:F

    iget v1, p0, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mFrequencyHz:F

    const v2, 0x40c90fdb

    mul-float/2addr v1, v2

    invoke-virtual {v0}, Lcom/oplus/physicsengine/dynamics/Body;->getMass()F

    move-result v0

    const/high16 v2, 0x40000000  # 2.0f

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mDampingRatio:F

    mul-float/2addr v0, v2

    mul-float/2addr v0, v1

    iget-object v2, p0, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mBodyB:Lcom/oplus/physicsengine/dynamics/Body;

    invoke-virtual {v2}, Lcom/oplus/physicsengine/dynamics/Body;->getMass()F

    move-result v2

    mul-float/2addr v1, v1

    mul-float/2addr v1, v2

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    const/high16 v2, 0x34000000

    cmpl-float v2, v0, v2

    if-lez v2, :cond_2a

    mul-float/2addr p2, v0

    iput p2, p0, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mGamma:F

    :cond_2a
    iget p2, p0, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mGamma:F

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_36

    const/high16 v0, 0x3f800000  # 1.0f

    div-float/2addr v0, p2

    iput v0, p0, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mGamma:F

    :cond_36
    iget p2, p0, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mGamma:F

    mul-float/2addr v1, p2

    iput v1, p0, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mBeta:F

    iget-object v0, p0, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mMass:Lcom/oplus/physicsengine/common/Mat22;

    iget-object v1, v0, Lcom/oplus/physicsengine/common/Mat22;->ex:Lcom/oplus/physicsengine/common/Vector;

    iget v2, p0, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mInvMass:F

    add-float v3, v2, p2

    iput v3, v1, Lcom/oplus/physicsengine/common/Vector;->mX:F

    iget-object v1, v0, Lcom/oplus/physicsengine/common/Mat22;->ey:Lcom/oplus/physicsengine/common/Vector;

    add-float/2addr v2, p2

    iput v2, v1, Lcom/oplus/physicsengine/common/Vector;->mY:F

    invoke-virtual {v0}, Lcom/oplus/physicsengine/common/Mat22;->invertLocal()Lcom/oplus/physicsengine/common/Mat22;

    iget-object p2, p0, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mPositionCenter:Lcom/oplus/physicsengine/common/Vector;

    iget-object v0, p1, Lcom/oplus/physicsengine/dynamics/Body;->mWorldCenter:Lcom/oplus/physicsengine/common/Vector;

    invoke-virtual {p2, v0}, Lcom/oplus/physicsengine/common/Vector;->set(Lcom/oplus/physicsengine/common/Vector;)Lcom/oplus/physicsengine/common/Vector;

    move-result-object p2

    iget-object v0, p0, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mLocalAnchor:Lcom/oplus/physicsengine/common/Vector;

    invoke-virtual {p2, v0}, Lcom/oplus/physicsengine/common/Vector;->subLocal(Lcom/oplus/physicsengine/common/Vector;)Lcom/oplus/physicsengine/common/Vector;

    move-result-object p2

    iget-object v0, p0, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mTarget:Lcom/oplus/physicsengine/common/Vector;

    invoke-virtual {p2, v0}, Lcom/oplus/physicsengine/common/Vector;->subLocal(Lcom/oplus/physicsengine/common/Vector;)Lcom/oplus/physicsengine/common/Vector;

    move-result-object p2

    iget v0, p0, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mBeta:F

    invoke-virtual {p2, v0}, Lcom/oplus/physicsengine/common/Vector;->mulLocal(F)Lcom/oplus/physicsengine/common/Vector;

    iget-object p1, p1, Lcom/oplus/physicsengine/dynamics/Body;->mLinearVelocity:Lcom/oplus/physicsengine/common/Vector;

    iget p2, p1, Lcom/oplus/physicsengine/common/Vector;->mX:F

    iget v0, p0, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mInvMass:F

    iget-object p0, p0, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mImpulse:Lcom/oplus/physicsengine/common/Vector;

    iget v1, p0, Lcom/oplus/physicsengine/common/Vector;->mX:F

    mul-float/2addr v1, v0

    add-float/2addr v1, p2

    iput v1, p1, Lcom/oplus/physicsengine/common/Vector;->mX:F

    iget p2, p1, Lcom/oplus/physicsengine/common/Vector;->mY:F

    iget p0, p0, Lcom/oplus/physicsengine/common/Vector;->mY:F

    mul-float/2addr v0, p0

    add-float/2addr v0, p2

    iput v0, p1, Lcom/oplus/physicsengine/common/Vector;->mY:F

    return-void
.end method

.method public setDampingRatio(F)V
    .registers 2

    iput p1, p0, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mDampingRatio:F

    return-void
.end method

.method public setFrequency(F)V
    .registers 2

    iput p1, p0, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mFrequencyHz:F

    return-void
.end method

.method public setTarget(FF)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mTarget:Lcom/oplus/physicsengine/common/Vector;

    iput p1, p0, Lcom/oplus/physicsengine/common/Vector;->mX:F

    iput p2, p0, Lcom/oplus/physicsengine/common/Vector;->mY:F

    return-void
.end method

.method public setTarget(Lcom/oplus/physicsengine/common/Vector;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mTarget:Lcom/oplus/physicsengine/common/Vector;

    invoke-virtual {p0, p1}, Lcom/oplus/physicsengine/common/Vector;->set(Lcom/oplus/physicsengine/common/Vector;)Lcom/oplus/physicsengine/common/Vector;

    return-void
.end method

.method public solveVelocityConstraints(Lcom/oplus/physicsengine/dynamics/Body;)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mImpulseTemp:Lcom/oplus/physicsengine/common/Vector;

    iget-object v1, p0, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mImpulse:Lcom/oplus/physicsengine/common/Vector;

    invoke-virtual {v0, v1}, Lcom/oplus/physicsengine/common/Vector;->set(Lcom/oplus/physicsengine/common/Vector;)Lcom/oplus/physicsengine/common/Vector;

    iget-object v0, p0, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mImpulseTemp:Lcom/oplus/physicsengine/common/Vector;

    iget v1, p0, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mGamma:F

    invoke-virtual {v0, v1}, Lcom/oplus/physicsengine/common/Vector;->mulLocal(F)Lcom/oplus/physicsengine/common/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mPositionCenter:Lcom/oplus/physicsengine/common/Vector;

    invoke-virtual {v0, v1}, Lcom/oplus/physicsengine/common/Vector;->addLocal(Lcom/oplus/physicsengine/common/Vector;)Lcom/oplus/physicsengine/common/Vector;

    move-result-object v0

    iget-object v1, p1, Lcom/oplus/physicsengine/dynamics/Body;->mLinearVelocity:Lcom/oplus/physicsengine/common/Vector;

    invoke-virtual {v0, v1}, Lcom/oplus/physicsengine/common/Vector;->addLocal(Lcom/oplus/physicsengine/common/Vector;)Lcom/oplus/physicsengine/common/Vector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/physicsengine/common/Vector;->negateLocal()Lcom/oplus/physicsengine/common/Vector;

    iget-object v0, p0, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mMass:Lcom/oplus/physicsengine/common/Mat22;

    iget-object v1, p0, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mImpulseTemp:Lcom/oplus/physicsengine/common/Vector;

    invoke-static {v0, v1, v1}, Lcom/oplus/physicsengine/common/Mat22;->mulToOutUnsafe(Lcom/oplus/physicsengine/common/Mat22;Lcom/oplus/physicsengine/common/Vector;Lcom/oplus/physicsengine/common/Vector;)V

    iget-object v0, p0, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mImpulse:Lcom/oplus/physicsengine/common/Vector;

    iget-object v1, p0, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mImpulseTemp:Lcom/oplus/physicsengine/common/Vector;

    invoke-virtual {v0, v1}, Lcom/oplus/physicsengine/common/Vector;->addLocal(Lcom/oplus/physicsengine/common/Vector;)Lcom/oplus/physicsengine/common/Vector;

    iget-object p1, p1, Lcom/oplus/physicsengine/dynamics/Body;->mLinearVelocity:Lcom/oplus/physicsengine/common/Vector;

    iget-object v0, p0, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mImpulseTemp:Lcom/oplus/physicsengine/common/Vector;

    iget p0, p0, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mInvMass:F

    invoke-virtual {v0, p0}, Lcom/oplus/physicsengine/common/Vector;->mulLocal(F)Lcom/oplus/physicsengine/common/Vector;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/oplus/physicsengine/common/Vector;->addLocal(Lcom/oplus/physicsengine/common/Vector;)Lcom/oplus/physicsengine/common/Vector;

    return-void
.end method
