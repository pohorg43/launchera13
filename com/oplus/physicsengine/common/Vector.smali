.class public Lcom/oplus/physicsengine/common/Vector;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public mX:F

.field public mY:F


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/oplus/physicsengine/common/Vector;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(FF)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oplus/physicsengine/common/Vector;->mX:F

    iput p2, p0, Lcom/oplus/physicsengine/common/Vector;->mY:F

    return-void
.end method

.method public constructor <init>(Lcom/oplus/physicsengine/common/Vector;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/oplus/physicsengine/common/Vector;->mX:F

    iput v0, p0, Lcom/oplus/physicsengine/common/Vector;->mX:F

    iget p1, p1, Lcom/oplus/physicsengine/common/Vector;->mY:F

    iput p1, p0, Lcom/oplus/physicsengine/common/Vector;->mY:F

    return-void
.end method


# virtual methods
.method public final addLocal(Lcom/oplus/physicsengine/common/Vector;)Lcom/oplus/physicsengine/common/Vector;
    .registers 4

    iget v0, p0, Lcom/oplus/physicsengine/common/Vector;->mX:F

    iget v1, p1, Lcom/oplus/physicsengine/common/Vector;->mX:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/oplus/physicsengine/common/Vector;->mX:F

    iget v0, p0, Lcom/oplus/physicsengine/common/Vector;->mY:F

    iget p1, p1, Lcom/oplus/physicsengine/common/Vector;->mY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/oplus/physicsengine/common/Vector;->mY:F

    return-object p0
.end method

.method public final divLocal(F)Lcom/oplus/physicsengine/common/Vector;
    .registers 3

    iget v0, p0, Lcom/oplus/physicsengine/common/Vector;->mX:F

    div-float/2addr v0, p1

    iput v0, p0, Lcom/oplus/physicsengine/common/Vector;->mX:F

    iget v0, p0, Lcom/oplus/physicsengine/common/Vector;->mY:F

    div-float/2addr v0, p1

    iput v0, p0, Lcom/oplus/physicsengine/common/Vector;->mY:F

    return-object p0
.end method

.method public final divLocal(Lcom/oplus/physicsengine/common/Vector;)Lcom/oplus/physicsengine/common/Vector;
    .registers 4

    iget v0, p0, Lcom/oplus/physicsengine/common/Vector;->mX:F

    iget v1, p1, Lcom/oplus/physicsengine/common/Vector;->mX:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/oplus/physicsengine/common/Vector;->mX:F

    iget v0, p0, Lcom/oplus/physicsengine/common/Vector;->mY:F

    iget p1, p1, Lcom/oplus/physicsengine/common/Vector;->mY:F

    div-float/2addr v0, p1

    iput v0, p0, Lcom/oplus/physicsengine/common/Vector;->mY:F

    return-object p0
.end method

.method public final length()F
    .registers 2

    iget v0, p0, Lcom/oplus/physicsengine/common/Vector;->mX:F

    mul-float/2addr v0, v0

    iget p0, p0, Lcom/oplus/physicsengine/common/Vector;->mY:F

    mul-float/2addr p0, p0

    add-float/2addr p0, v0

    invoke-static {p0}, Lcom/oplus/physicsengine/common/MathUtils;->sqrt(F)F

    move-result p0

    return p0
.end method

.method public final lengthSquared()F
    .registers 2

    iget v0, p0, Lcom/oplus/physicsengine/common/Vector;->mX:F

    mul-float/2addr v0, v0

    iget p0, p0, Lcom/oplus/physicsengine/common/Vector;->mY:F

    mul-float/2addr p0, p0

    add-float/2addr p0, v0

    return p0
.end method

.method public final mulLocal(F)Lcom/oplus/physicsengine/common/Vector;
    .registers 3

    iget v0, p0, Lcom/oplus/physicsengine/common/Vector;->mX:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/oplus/physicsengine/common/Vector;->mX:F

    iget v0, p0, Lcom/oplus/physicsengine/common/Vector;->mY:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/oplus/physicsengine/common/Vector;->mY:F

    return-object p0
.end method

.method public final mulLocal(Lcom/oplus/physicsengine/common/Vector;)Lcom/oplus/physicsengine/common/Vector;
    .registers 4

    iget v0, p0, Lcom/oplus/physicsengine/common/Vector;->mX:F

    iget v1, p1, Lcom/oplus/physicsengine/common/Vector;->mX:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/oplus/physicsengine/common/Vector;->mX:F

    iget v0, p0, Lcom/oplus/physicsengine/common/Vector;->mY:F

    iget p1, p1, Lcom/oplus/physicsengine/common/Vector;->mY:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/oplus/physicsengine/common/Vector;->mY:F

    return-object p0
.end method

.method public final negateLocal()Lcom/oplus/physicsengine/common/Vector;
    .registers 2

    iget v0, p0, Lcom/oplus/physicsengine/common/Vector;->mX:F

    neg-float v0, v0

    iput v0, p0, Lcom/oplus/physicsengine/common/Vector;->mX:F

    iget v0, p0, Lcom/oplus/physicsengine/common/Vector;->mY:F

    neg-float v0, v0

    iput v0, p0, Lcom/oplus/physicsengine/common/Vector;->mY:F

    return-object p0
.end method

.method public final set(F)Lcom/oplus/physicsengine/common/Vector;
    .registers 2

    iput p1, p0, Lcom/oplus/physicsengine/common/Vector;->mX:F

    iput p1, p0, Lcom/oplus/physicsengine/common/Vector;->mY:F

    return-object p0
.end method

.method public final set(FF)Lcom/oplus/physicsengine/common/Vector;
    .registers 3

    iput p1, p0, Lcom/oplus/physicsengine/common/Vector;->mX:F

    iput p2, p0, Lcom/oplus/physicsengine/common/Vector;->mY:F

    return-object p0
.end method

.method public final set(Lcom/oplus/physicsengine/common/Vector;)Lcom/oplus/physicsengine/common/Vector;
    .registers 3

    iget v0, p1, Lcom/oplus/physicsengine/common/Vector;->mX:F

    iput v0, p0, Lcom/oplus/physicsengine/common/Vector;->mX:F

    iget p1, p1, Lcom/oplus/physicsengine/common/Vector;->mY:F

    iput p1, p0, Lcom/oplus/physicsengine/common/Vector;->mY:F

    return-object p0
.end method

.method public final setZero()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/physicsengine/common/Vector;->mX:F

    iput v0, p0, Lcom/oplus/physicsengine/common/Vector;->mY:F

    return-void
.end method

.method public final subLocal(F)Lcom/oplus/physicsengine/common/Vector;
    .registers 3

    iget v0, p0, Lcom/oplus/physicsengine/common/Vector;->mX:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/oplus/physicsengine/common/Vector;->mX:F

    iget v0, p0, Lcom/oplus/physicsengine/common/Vector;->mY:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/oplus/physicsengine/common/Vector;->mY:F

    return-object p0
.end method

.method public final subLocal(Lcom/oplus/physicsengine/common/Vector;)Lcom/oplus/physicsengine/common/Vector;
    .registers 4

    iget v0, p0, Lcom/oplus/physicsengine/common/Vector;->mX:F

    iget v1, p1, Lcom/oplus/physicsengine/common/Vector;->mX:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/oplus/physicsengine/common/Vector;->mX:F

    iget v0, p0, Lcom/oplus/physicsengine/common/Vector;->mY:F

    iget p1, p1, Lcom/oplus/physicsengine/common/Vector;->mY:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/oplus/physicsengine/common/Vector;->mY:F

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    const-string v0, "("

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/physicsengine/common/Vector;->mX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/physicsengine/common/Vector;->mY:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final unitLocal()Lcom/oplus/physicsengine/common/Vector;
    .registers 3

    iget v0, p0, Lcom/oplus/physicsengine/common/Vector;->mX:F

    invoke-static {v0}, Lcom/oplus/physicsengine/common/MathUtils;->abs(F)F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/oplus/physicsengine/common/Vector;->mX:F

    iget v0, p0, Lcom/oplus/physicsengine/common/Vector;->mY:F

    invoke-static {v0}, Lcom/oplus/physicsengine/common/MathUtils;->abs(F)F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/oplus/physicsengine/common/Vector;->mY:F

    return-object p0
.end method
