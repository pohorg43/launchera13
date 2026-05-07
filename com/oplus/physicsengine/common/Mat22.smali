.class public Lcom/oplus/physicsengine/common/Mat22;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final ex:Lcom/oplus/physicsengine/common/Vector;

.field public final ey:Lcom/oplus/physicsengine/common/Vector;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oplus/physicsengine/common/Vector;

    invoke-direct {v0}, Lcom/oplus/physicsengine/common/Vector;-><init>()V

    iput-object v0, p0, Lcom/oplus/physicsengine/common/Mat22;->ex:Lcom/oplus/physicsengine/common/Vector;

    new-instance v0, Lcom/oplus/physicsengine/common/Vector;

    invoke-direct {v0}, Lcom/oplus/physicsengine/common/Vector;-><init>()V

    iput-object v0, p0, Lcom/oplus/physicsengine/common/Mat22;->ey:Lcom/oplus/physicsengine/common/Vector;

    return-void
.end method

.method public static final mulToOutUnsafe(Lcom/oplus/physicsengine/common/Mat22;Lcom/oplus/physicsengine/common/Vector;Lcom/oplus/physicsengine/common/Vector;)V
    .registers 7

    iget-object v0, p0, Lcom/oplus/physicsengine/common/Mat22;->ex:Lcom/oplus/physicsengine/common/Vector;

    iget v1, v0, Lcom/oplus/physicsengine/common/Vector;->mX:F

    iget v2, p1, Lcom/oplus/physicsengine/common/Vector;->mX:F

    mul-float/2addr v1, v2

    iget-object p0, p0, Lcom/oplus/physicsengine/common/Mat22;->ey:Lcom/oplus/physicsengine/common/Vector;

    iget v2, p0, Lcom/oplus/physicsengine/common/Vector;->mX:F

    iget v3, p1, Lcom/oplus/physicsengine/common/Vector;->mY:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v1

    iput v2, p2, Lcom/oplus/physicsengine/common/Vector;->mX:F

    iget v0, v0, Lcom/oplus/physicsengine/common/Vector;->mY:F

    iget p1, p1, Lcom/oplus/physicsengine/common/Vector;->mX:F

    mul-float/2addr v0, p1

    iget p0, p0, Lcom/oplus/physicsengine/common/Vector;->mY:F

    mul-float/2addr p0, v3

    add-float/2addr p0, v0

    iput p0, p2, Lcom/oplus/physicsengine/common/Vector;->mY:F

    return-void
.end method


# virtual methods
.method public final invertLocal()Lcom/oplus/physicsengine/common/Mat22;
    .registers 9

    iget-object v0, p0, Lcom/oplus/physicsengine/common/Mat22;->ex:Lcom/oplus/physicsengine/common/Vector;

    iget v1, v0, Lcom/oplus/physicsengine/common/Vector;->mX:F

    iget-object v2, p0, Lcom/oplus/physicsengine/common/Mat22;->ey:Lcom/oplus/physicsengine/common/Vector;

    iget v3, v2, Lcom/oplus/physicsengine/common/Vector;->mX:F

    iget v4, v0, Lcom/oplus/physicsengine/common/Vector;->mY:F

    iget v5, v2, Lcom/oplus/physicsengine/common/Vector;->mY:F

    mul-float v6, v1, v5

    mul-float v7, v3, v4

    sub-float/2addr v6, v7

    const/4 v7, 0x0

    cmpl-float v7, v6, v7

    if-eqz v7, :cond_1a

    const/high16 v7, 0x3f800000  # 1.0f

    div-float v6, v7, v6

    :cond_1a
    mul-float/2addr v5, v6

    iput v5, v0, Lcom/oplus/physicsengine/common/Vector;->mX:F

    neg-float v5, v6

    mul-float/2addr v3, v5

    iput v3, v2, Lcom/oplus/physicsengine/common/Vector;->mX:F

    mul-float/2addr v5, v4

    iput v5, v0, Lcom/oplus/physicsengine/common/Vector;->mY:F

    mul-float/2addr v6, v1

    iput v6, v2, Lcom/oplus/physicsengine/common/Vector;->mY:F

    return-object p0
.end method
