.class public Lcom/oplus/physicsengine/dynamics/World;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mBodyCount:I

.field private mBodyList:Lcom/oplus/physicsengine/dynamics/Body;

.field private mSpringCount:I

.field private mSpringList:Lcom/oplus/physicsengine/dynamics/spring/Spring;

.field private final mVectorTemp:Lcom/oplus/physicsengine/common/Vector;


# direct methods
.method public constructor <init>()V
    .registers 2

    new-instance v0, Lcom/oplus/physicsengine/common/Vector;

    invoke-direct {v0}, Lcom/oplus/physicsengine/common/Vector;-><init>()V

    invoke-direct {p0, v0}, Lcom/oplus/physicsengine/dynamics/World;-><init>(Lcom/oplus/physicsengine/common/Vector;)V

    return-void
.end method

.method public constructor <init>(Lcom/oplus/physicsengine/common/Vector;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/physicsengine/dynamics/World;->mVectorTemp:Lcom/oplus/physicsengine/common/Vector;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oplus/physicsengine/dynamics/World;->mBodyList:Lcom/oplus/physicsengine/dynamics/Body;

    iput-object p1, p0, Lcom/oplus/physicsengine/dynamics/World;->mSpringList:Lcom/oplus/physicsengine/dynamics/spring/Spring;

    const/4 p1, 0x0

    iput p1, p0, Lcom/oplus/physicsengine/dynamics/World;->mBodyCount:I

    iput p1, p0, Lcom/oplus/physicsengine/dynamics/World;->mSpringCount:I

    return-void
.end method

.method private dumpBodyList()V
    .registers 3

    iget-object p0, p0, Lcom/oplus/physicsengine/dynamics/World;->mBodyList:Lcom/oplus/physicsengine/dynamics/Body;

    :goto_2
    if-eqz p0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "world has body ====>>> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/physicsengine/common/Debug;->logD(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/physicsengine/dynamics/Body;->mNext:Lcom/oplus/physicsengine/dynamics/Body;

    goto :goto_2

    :cond_1b
    return-void
.end method

.method private solve(F)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/physicsengine/dynamics/World;->mBodyList:Lcom/oplus/physicsengine/dynamics/Body;

    :goto_2
    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iput-boolean v1, v0, Lcom/oplus/physicsengine/dynamics/Body;->mIsSolved:Z

    iget-object v0, v0, Lcom/oplus/physicsengine/dynamics/Body;->mNext:Lcom/oplus/physicsengine/dynamics/Body;

    goto :goto_2

    :cond_a
    iget-object v0, p0, Lcom/oplus/physicsengine/dynamics/World;->mSpringList:Lcom/oplus/physicsengine/dynamics/spring/Spring;

    :goto_c
    if-eqz v0, :cond_13

    iput-boolean v1, v0, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mIsSolved:Z

    iget-object v0, v0, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mNext:Lcom/oplus/physicsengine/dynamics/spring/Spring;

    goto :goto_c

    :cond_13
    iget-object v0, p0, Lcom/oplus/physicsengine/dynamics/World;->mBodyList:Lcom/oplus/physicsengine/dynamics/Body;

    :goto_15
    if-eqz v0, :cond_35

    iget-boolean v1, v0, Lcom/oplus/physicsengine/dynamics/Body;->mIsSolved:Z

    if-nez v1, :cond_32

    iget-boolean v1, v0, Lcom/oplus/physicsengine/dynamics/Body;->mIsAwake:Z

    if-nez v1, :cond_20

    goto :goto_32

    :cond_20
    invoke-virtual {v0}, Lcom/oplus/physicsengine/dynamics/Body;->getType()I

    move-result v1

    if-nez v1, :cond_27

    goto :goto_32

    :cond_27
    invoke-direct {p0, v0, p1}, Lcom/oplus/physicsengine/dynamics/World;->solve(Lcom/oplus/physicsengine/dynamics/Body;F)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oplus/physicsengine/dynamics/Body;->mIsSolved:Z

    iget-object v1, v0, Lcom/oplus/physicsengine/dynamics/Body;->mForce:Lcom/oplus/physicsengine/common/Vector;

    invoke-virtual {v1}, Lcom/oplus/physicsengine/common/Vector;->setZero()V

    :cond_32
    :goto_32
    iget-object v0, v0, Lcom/oplus/physicsengine/dynamics/Body;->mNext:Lcom/oplus/physicsengine/dynamics/Body;

    goto :goto_15

    :cond_35
    return-void
.end method

.method private solve(Lcom/oplus/physicsengine/dynamics/Body;F)V
    .registers 7

    iget p0, p1, Lcom/oplus/physicsengine/dynamics/Body;->mType:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_25

    invoke-virtual {p1}, Lcom/oplus/physicsengine/dynamics/Body;->updateActiveConstraintForce()V

    iget-object p0, p1, Lcom/oplus/physicsengine/dynamics/Body;->mLinearVelocity:Lcom/oplus/physicsengine/common/Vector;

    iget-object v1, p1, Lcom/oplus/physicsengine/dynamics/Body;->mForce:Lcom/oplus/physicsengine/common/Vector;

    iget v2, p1, Lcom/oplus/physicsengine/dynamics/Body;->mInvMass:F

    invoke-virtual {v1, v2}, Lcom/oplus/physicsengine/common/Vector;->mulLocal(F)Lcom/oplus/physicsengine/common/Vector;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/oplus/physicsengine/common/Vector;->mulLocal(F)Lcom/oplus/physicsengine/common/Vector;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oplus/physicsengine/common/Vector;->addLocal(Lcom/oplus/physicsengine/common/Vector;)Lcom/oplus/physicsengine/common/Vector;

    iget-object p0, p1, Lcom/oplus/physicsengine/dynamics/Body;->mLinearVelocity:Lcom/oplus/physicsengine/common/Vector;

    iget v1, p1, Lcom/oplus/physicsengine/dynamics/Body;->mLinearDamping:F

    mul-float/2addr v1, p2

    const/high16 v2, 0x3f800000  # 1.0f

    add-float/2addr v1, v2

    div-float/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/oplus/physicsengine/common/Vector;->mulLocal(F)Lcom/oplus/physicsengine/common/Vector;

    :cond_25
    iget-object p0, p1, Lcom/oplus/physicsengine/dynamics/Body;->mEdgeList:Lcom/oplus/physicsengine/dynamics/spring/Edge;

    :goto_27
    if-eqz p0, :cond_4f

    iget-object v1, p0, Lcom/oplus/physicsengine/dynamics/spring/Edge;->spring:Lcom/oplus/physicsengine/dynamics/spring/Spring;

    iget-boolean v2, v1, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mIsSolved:Z

    if-eqz v2, :cond_30

    goto :goto_4c

    :cond_30
    iput-boolean v0, v1, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mIsSolved:Z

    iget-object v2, p0, Lcom/oplus/physicsengine/dynamics/spring/Edge;->other:Lcom/oplus/physicsengine/dynamics/Body;

    iget-boolean v3, v2, Lcom/oplus/physicsengine/dynamics/Body;->mIsSolved:Z

    if-nez v3, :cond_4c

    iget-boolean v2, v2, Lcom/oplus/physicsengine/dynamics/Body;->mIsAwake:Z

    if-nez v2, :cond_3d

    goto :goto_4c

    :cond_3d
    invoke-virtual {v1, p1, p2}, Lcom/oplus/physicsengine/dynamics/spring/Spring;->initVelocityConstraints(Lcom/oplus/physicsengine/dynamics/Body;F)V

    const/4 v1, 0x0

    :goto_41
    const/4 v2, 0x4

    if-ge v1, v2, :cond_4c

    iget-object v2, p0, Lcom/oplus/physicsengine/dynamics/spring/Edge;->spring:Lcom/oplus/physicsengine/dynamics/spring/Spring;

    invoke-virtual {v2, p1}, Lcom/oplus/physicsengine/dynamics/spring/Spring;->solveVelocityConstraints(Lcom/oplus/physicsengine/dynamics/Body;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    :cond_4c
    :goto_4c
    iget-object p0, p0, Lcom/oplus/physicsengine/dynamics/spring/Edge;->next:Lcom/oplus/physicsengine/dynamics/spring/Edge;

    goto :goto_27

    :cond_4f
    iget-object p0, p1, Lcom/oplus/physicsengine/dynamics/Body;->mWorldCenter:Lcom/oplus/physicsengine/common/Vector;

    iget v0, p0, Lcom/oplus/physicsengine/common/Vector;->mX:F

    iget-object v1, p1, Lcom/oplus/physicsengine/dynamics/Body;->mLinearVelocity:Lcom/oplus/physicsengine/common/Vector;

    iget v2, v1, Lcom/oplus/physicsengine/common/Vector;->mX:F

    mul-float/2addr v2, p2

    add-float/2addr v2, v0

    iput v2, p0, Lcom/oplus/physicsengine/common/Vector;->mX:F

    iget v0, p0, Lcom/oplus/physicsengine/common/Vector;->mY:F

    iget v1, v1, Lcom/oplus/physicsengine/common/Vector;->mY:F

    mul-float/2addr p2, v1

    add-float/2addr p2, v0

    iput p2, p0, Lcom/oplus/physicsengine/common/Vector;->mY:F

    invoke-virtual {p1}, Lcom/oplus/physicsengine/dynamics/Body;->synchronizeTransform()V

    return-void
.end method


# virtual methods
.method public createBody(Lcom/oplus/physicsengine/common/Vector;IIFFLjava/lang/String;)Lcom/oplus/physicsengine/dynamics/Body;
    .registers 14

    new-instance v6, Lcom/oplus/physicsengine/dynamics/Body;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/oplus/physicsengine/dynamics/Body;-><init>(Lcom/oplus/physicsengine/common/Vector;IIFF)V

    invoke-virtual {v6, p6}, Lcom/oplus/physicsengine/dynamics/Body;->setTag(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, v6, Lcom/oplus/physicsengine/dynamics/Body;->mPrev:Lcom/oplus/physicsengine/dynamics/Body;

    iget-object p1, p0, Lcom/oplus/physicsengine/dynamics/World;->mBodyList:Lcom/oplus/physicsengine/dynamics/Body;

    iput-object p1, v6, Lcom/oplus/physicsengine/dynamics/Body;->mNext:Lcom/oplus/physicsengine/dynamics/Body;

    if-eqz p1, :cond_19

    iput-object v6, p1, Lcom/oplus/physicsengine/dynamics/Body;->mPrev:Lcom/oplus/physicsengine/dynamics/Body;

    :cond_19
    iput-object v6, p0, Lcom/oplus/physicsengine/dynamics/World;->mBodyList:Lcom/oplus/physicsengine/dynamics/Body;

    iget p1, p0, Lcom/oplus/physicsengine/dynamics/World;->mBodyCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/oplus/physicsengine/dynamics/World;->mBodyCount:I

    invoke-static {}, Lcom/oplus/physicsengine/common/Debug;->isDebugMode()Z

    move-result p1

    if-eqz p1, :cond_2a

    invoke-direct {p0}, Lcom/oplus/physicsengine/dynamics/World;->dumpBodyList()V

    :cond_2a
    return-object v6
.end method

.method public createSpring(Lcom/oplus/physicsengine/dynamics/spring/SpringDef;)Lcom/oplus/physicsengine/dynamics/spring/Spring;
    .registers 4

    invoke-static {p0, p1}, Lcom/oplus/physicsengine/dynamics/spring/Spring;->create(Lcom/oplus/physicsengine/dynamics/World;Lcom/oplus/physicsengine/dynamics/spring/SpringDef;)Lcom/oplus/physicsengine/dynamics/spring/Spring;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return-object v0

    :cond_8
    iput-object v0, p1, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mPrev:Lcom/oplus/physicsengine/dynamics/spring/Spring;

    iget-object v1, p0, Lcom/oplus/physicsengine/dynamics/World;->mSpringList:Lcom/oplus/physicsengine/dynamics/spring/Spring;

    iput-object v1, p1, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mNext:Lcom/oplus/physicsengine/dynamics/spring/Spring;

    if-eqz v1, :cond_12

    iput-object p1, v1, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mPrev:Lcom/oplus/physicsengine/dynamics/spring/Spring;

    :cond_12
    iput-object p1, p0, Lcom/oplus/physicsengine/dynamics/World;->mSpringList:Lcom/oplus/physicsengine/dynamics/spring/Spring;

    iget v1, p0, Lcom/oplus/physicsengine/dynamics/World;->mSpringCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/oplus/physicsengine/dynamics/World;->mSpringCount:I

    iget-object p0, p1, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mEdgeA:Lcom/oplus/physicsengine/dynamics/spring/Edge;

    iput-object p1, p0, Lcom/oplus/physicsengine/dynamics/spring/Edge;->spring:Lcom/oplus/physicsengine/dynamics/spring/Spring;

    invoke-virtual {p1}, Lcom/oplus/physicsengine/dynamics/spring/Spring;->getBodyB()Lcom/oplus/physicsengine/dynamics/Body;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/physicsengine/dynamics/spring/Edge;->other:Lcom/oplus/physicsengine/dynamics/Body;

    iget-object p0, p1, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mEdgeA:Lcom/oplus/physicsengine/dynamics/spring/Edge;

    iput-object v0, p0, Lcom/oplus/physicsengine/dynamics/spring/Edge;->prev:Lcom/oplus/physicsengine/dynamics/spring/Edge;

    invoke-virtual {p1}, Lcom/oplus/physicsengine/dynamics/spring/Spring;->getBodyA()Lcom/oplus/physicsengine/dynamics/Body;

    move-result-object v1

    iget-object v1, v1, Lcom/oplus/physicsengine/dynamics/Body;->mEdgeList:Lcom/oplus/physicsengine/dynamics/spring/Edge;

    iput-object v1, p0, Lcom/oplus/physicsengine/dynamics/spring/Edge;->next:Lcom/oplus/physicsengine/dynamics/spring/Edge;

    invoke-virtual {p1}, Lcom/oplus/physicsengine/dynamics/spring/Spring;->getBodyA()Lcom/oplus/physicsengine/dynamics/Body;

    move-result-object p0

    iget-object p0, p0, Lcom/oplus/physicsengine/dynamics/Body;->mEdgeList:Lcom/oplus/physicsengine/dynamics/spring/Edge;

    if-eqz p0, :cond_42

    invoke-virtual {p1}, Lcom/oplus/physicsengine/dynamics/spring/Spring;->getBodyA()Lcom/oplus/physicsengine/dynamics/Body;

    move-result-object p0

    iget-object p0, p0, Lcom/oplus/physicsengine/dynamics/Body;->mEdgeList:Lcom/oplus/physicsengine/dynamics/spring/Edge;

    iget-object v1, p1, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mEdgeA:Lcom/oplus/physicsengine/dynamics/spring/Edge;

    iput-object v1, p0, Lcom/oplus/physicsengine/dynamics/spring/Edge;->prev:Lcom/oplus/physicsengine/dynamics/spring/Edge;

    :cond_42
    invoke-virtual {p1}, Lcom/oplus/physicsengine/dynamics/spring/Spring;->getBodyA()Lcom/oplus/physicsengine/dynamics/Body;

    move-result-object p0

    iget-object v1, p1, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mEdgeA:Lcom/oplus/physicsengine/dynamics/spring/Edge;

    iput-object v1, p0, Lcom/oplus/physicsengine/dynamics/Body;->mEdgeList:Lcom/oplus/physicsengine/dynamics/spring/Edge;

    iget-object p0, p1, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mEdgeB:Lcom/oplus/physicsengine/dynamics/spring/Edge;

    iput-object p1, p0, Lcom/oplus/physicsengine/dynamics/spring/Edge;->spring:Lcom/oplus/physicsengine/dynamics/spring/Spring;

    invoke-virtual {p1}, Lcom/oplus/physicsengine/dynamics/spring/Spring;->getBodyA()Lcom/oplus/physicsengine/dynamics/Body;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/physicsengine/dynamics/spring/Edge;->other:Lcom/oplus/physicsengine/dynamics/Body;

    iget-object p0, p1, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mEdgeB:Lcom/oplus/physicsengine/dynamics/spring/Edge;

    iput-object v0, p0, Lcom/oplus/physicsengine/dynamics/spring/Edge;->prev:Lcom/oplus/physicsengine/dynamics/spring/Edge;

    invoke-virtual {p1}, Lcom/oplus/physicsengine/dynamics/spring/Spring;->getBodyB()Lcom/oplus/physicsengine/dynamics/Body;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/physicsengine/dynamics/Body;->mEdgeList:Lcom/oplus/physicsengine/dynamics/spring/Edge;

    iput-object v0, p0, Lcom/oplus/physicsengine/dynamics/spring/Edge;->next:Lcom/oplus/physicsengine/dynamics/spring/Edge;

    invoke-virtual {p1}, Lcom/oplus/physicsengine/dynamics/spring/Spring;->getBodyB()Lcom/oplus/physicsengine/dynamics/Body;

    move-result-object p0

    iget-object p0, p0, Lcom/oplus/physicsengine/dynamics/Body;->mEdgeList:Lcom/oplus/physicsengine/dynamics/spring/Edge;

    if-eqz p0, :cond_72

    invoke-virtual {p1}, Lcom/oplus/physicsengine/dynamics/spring/Spring;->getBodyB()Lcom/oplus/physicsengine/dynamics/Body;

    move-result-object p0

    iget-object p0, p0, Lcom/oplus/physicsengine/dynamics/Body;->mEdgeList:Lcom/oplus/physicsengine/dynamics/spring/Edge;

    iget-object v0, p1, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mEdgeB:Lcom/oplus/physicsengine/dynamics/spring/Edge;

    iput-object v0, p0, Lcom/oplus/physicsengine/dynamics/spring/Edge;->prev:Lcom/oplus/physicsengine/dynamics/spring/Edge;

    :cond_72
    invoke-virtual {p1}, Lcom/oplus/physicsengine/dynamics/spring/Spring;->getBodyB()Lcom/oplus/physicsengine/dynamics/Body;

    move-result-object p0

    iget-object v0, p1, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mEdgeB:Lcom/oplus/physicsengine/dynamics/spring/Edge;

    iput-object v0, p0, Lcom/oplus/physicsengine/dynamics/Body;->mEdgeList:Lcom/oplus/physicsengine/dynamics/spring/Edge;

    return-object p1
.end method

.method public destroyBody(Lcom/oplus/physicsengine/dynamics/Body;)V
    .registers 4

    iget v0, p0, Lcom/oplus/physicsengine/dynamics/World;->mBodyCount:I

    if-gtz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p1, Lcom/oplus/physicsengine/dynamics/Body;->mEdgeList:Lcom/oplus/physicsengine/dynamics/spring/Edge;

    :goto_7
    if-eqz v0, :cond_16

    iget-object v1, v0, Lcom/oplus/physicsengine/dynamics/spring/Edge;->next:Lcom/oplus/physicsengine/dynamics/spring/Edge;

    iget-object v0, v0, Lcom/oplus/physicsengine/dynamics/spring/Edge;->spring:Lcom/oplus/physicsengine/dynamics/spring/Spring;

    if-eqz v0, :cond_12

    invoke-virtual {p0, v0}, Lcom/oplus/physicsengine/dynamics/World;->destroySpring(Lcom/oplus/physicsengine/dynamics/spring/Spring;)V

    :cond_12
    iput-object v1, p1, Lcom/oplus/physicsengine/dynamics/Body;->mEdgeList:Lcom/oplus/physicsengine/dynamics/spring/Edge;

    move-object v0, v1

    goto :goto_7

    :cond_16
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/oplus/physicsengine/dynamics/Body;->mEdgeList:Lcom/oplus/physicsengine/dynamics/spring/Edge;

    iget-object v0, p1, Lcom/oplus/physicsengine/dynamics/Body;->mPrev:Lcom/oplus/physicsengine/dynamics/Body;

    if-eqz v0, :cond_21

    iget-object v1, p1, Lcom/oplus/physicsengine/dynamics/Body;->mNext:Lcom/oplus/physicsengine/dynamics/Body;

    iput-object v1, v0, Lcom/oplus/physicsengine/dynamics/Body;->mNext:Lcom/oplus/physicsengine/dynamics/Body;

    :cond_21
    iget-object v1, p1, Lcom/oplus/physicsengine/dynamics/Body;->mNext:Lcom/oplus/physicsengine/dynamics/Body;

    if-eqz v1, :cond_27

    iput-object v0, v1, Lcom/oplus/physicsengine/dynamics/Body;->mPrev:Lcom/oplus/physicsengine/dynamics/Body;

    :cond_27
    iget-object v0, p0, Lcom/oplus/physicsengine/dynamics/World;->mBodyList:Lcom/oplus/physicsengine/dynamics/Body;

    if-ne p1, v0, :cond_2d

    iput-object v1, p0, Lcom/oplus/physicsengine/dynamics/World;->mBodyList:Lcom/oplus/physicsengine/dynamics/Body;

    :cond_2d
    iget p1, p0, Lcom/oplus/physicsengine/dynamics/World;->mBodyCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/oplus/physicsengine/dynamics/World;->mBodyCount:I

    return-void
.end method

.method public destroySpring(Lcom/oplus/physicsengine/dynamics/spring/Spring;)V
    .registers 7

    iget v0, p0, Lcom/oplus/physicsengine/dynamics/World;->mSpringCount:I

    if-gtz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p1, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mPrev:Lcom/oplus/physicsengine/dynamics/spring/Spring;

    if-eqz v0, :cond_d

    iget-object v1, p1, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mNext:Lcom/oplus/physicsengine/dynamics/spring/Spring;

    iput-object v1, v0, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mNext:Lcom/oplus/physicsengine/dynamics/spring/Spring;

    :cond_d
    iget-object v1, p1, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mNext:Lcom/oplus/physicsengine/dynamics/spring/Spring;

    if-eqz v1, :cond_13

    iput-object v0, v1, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mPrev:Lcom/oplus/physicsengine/dynamics/spring/Spring;

    :cond_13
    iget-object v0, p0, Lcom/oplus/physicsengine/dynamics/World;->mSpringList:Lcom/oplus/physicsengine/dynamics/spring/Spring;

    if-ne p1, v0, :cond_19

    iput-object v1, p0, Lcom/oplus/physicsengine/dynamics/World;->mSpringList:Lcom/oplus/physicsengine/dynamics/spring/Spring;

    :cond_19
    invoke-virtual {p1}, Lcom/oplus/physicsengine/dynamics/spring/Spring;->getBodyA()Lcom/oplus/physicsengine/dynamics/Body;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oplus/physicsengine/dynamics/spring/Spring;->getBodyB()Lcom/oplus/physicsengine/dynamics/Body;

    move-result-object v1

    iget-object v2, p1, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mEdgeA:Lcom/oplus/physicsengine/dynamics/spring/Edge;

    iget-object v3, v2, Lcom/oplus/physicsengine/dynamics/spring/Edge;->prev:Lcom/oplus/physicsengine/dynamics/spring/Edge;

    if-eqz v3, :cond_2b

    iget-object v4, v2, Lcom/oplus/physicsengine/dynamics/spring/Edge;->next:Lcom/oplus/physicsengine/dynamics/spring/Edge;

    iput-object v4, v3, Lcom/oplus/physicsengine/dynamics/spring/Edge;->next:Lcom/oplus/physicsengine/dynamics/spring/Edge;

    :cond_2b
    iget-object v4, v2, Lcom/oplus/physicsengine/dynamics/spring/Edge;->next:Lcom/oplus/physicsengine/dynamics/spring/Edge;

    if-eqz v4, :cond_31

    iput-object v3, v4, Lcom/oplus/physicsengine/dynamics/spring/Edge;->prev:Lcom/oplus/physicsengine/dynamics/spring/Edge;

    :cond_31
    iget-object v3, v0, Lcom/oplus/physicsengine/dynamics/Body;->mEdgeList:Lcom/oplus/physicsengine/dynamics/spring/Edge;

    if-ne v2, v3, :cond_37

    iput-object v4, v0, Lcom/oplus/physicsengine/dynamics/Body;->mEdgeList:Lcom/oplus/physicsengine/dynamics/spring/Edge;

    :cond_37
    const/4 v0, 0x0

    iput-object v0, v2, Lcom/oplus/physicsengine/dynamics/spring/Edge;->prev:Lcom/oplus/physicsengine/dynamics/spring/Edge;

    iput-object v0, v2, Lcom/oplus/physicsengine/dynamics/spring/Edge;->next:Lcom/oplus/physicsengine/dynamics/spring/Edge;

    iget-object p1, p1, Lcom/oplus/physicsengine/dynamics/spring/Spring;->mEdgeB:Lcom/oplus/physicsengine/dynamics/spring/Edge;

    iget-object v2, p1, Lcom/oplus/physicsengine/dynamics/spring/Edge;->prev:Lcom/oplus/physicsengine/dynamics/spring/Edge;

    if-eqz v2, :cond_46

    iget-object v3, p1, Lcom/oplus/physicsengine/dynamics/spring/Edge;->next:Lcom/oplus/physicsengine/dynamics/spring/Edge;

    iput-object v3, v2, Lcom/oplus/physicsengine/dynamics/spring/Edge;->next:Lcom/oplus/physicsengine/dynamics/spring/Edge;

    :cond_46
    iget-object v3, p1, Lcom/oplus/physicsengine/dynamics/spring/Edge;->next:Lcom/oplus/physicsengine/dynamics/spring/Edge;

    if-eqz v3, :cond_4c

    iput-object v2, v3, Lcom/oplus/physicsengine/dynamics/spring/Edge;->prev:Lcom/oplus/physicsengine/dynamics/spring/Edge;

    :cond_4c
    iget-object v2, v1, Lcom/oplus/physicsengine/dynamics/Body;->mEdgeList:Lcom/oplus/physicsengine/dynamics/spring/Edge;

    if-ne p1, v2, :cond_52

    iput-object v3, v1, Lcom/oplus/physicsengine/dynamics/Body;->mEdgeList:Lcom/oplus/physicsengine/dynamics/spring/Edge;

    :cond_52
    iput-object v0, p1, Lcom/oplus/physicsengine/dynamics/spring/Edge;->prev:Lcom/oplus/physicsengine/dynamics/spring/Edge;

    iput-object v0, p1, Lcom/oplus/physicsengine/dynamics/spring/Edge;->next:Lcom/oplus/physicsengine/dynamics/spring/Edge;

    iget p1, p0, Lcom/oplus/physicsengine/dynamics/World;->mSpringCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/oplus/physicsengine/dynamics/World;->mSpringCount:I

    return-void
.end method

.method public getVectorTemp()Lcom/oplus/physicsengine/common/Vector;
    .registers 1

    iget-object p0, p0, Lcom/oplus/physicsengine/dynamics/World;->mVectorTemp:Lcom/oplus/physicsengine/common/Vector;

    return-object p0
.end method

.method public step(F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/physicsengine/dynamics/World;->solve(F)V

    return-void
.end method
