.class public final Lcom/oplus/glcomponent/math/Vector3;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private x:F

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>()V
    .registers 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/oplus/glcomponent/math/Vector3;-><init>(FFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(FFF)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oplus/glcomponent/math/Vector3;->x:F

    iput p2, p0, Lcom/oplus/glcomponent/math/Vector3;->y:F

    iput p3, p0, Lcom/oplus/glcomponent/math/Vector3;->z:F

    return-void
.end method

.method public synthetic constructor <init>(FFFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_6

    move p1, v0

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_b

    move p2, v0

    :cond_b
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_10

    move p3, v0

    :cond_10
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/glcomponent/math/Vector3;-><init>(FFF)V

    return-void
.end method

.method public constructor <init>(Lcom/oplus/glcomponent/math/Vector3;)V
    .registers 4

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Lcom/oplus/glcomponent/math/Vector3;->x:F

    iget v1, p1, Lcom/oplus/glcomponent/math/Vector3;->y:F

    iget p1, p1, Lcom/oplus/glcomponent/math/Vector3;->z:F

    invoke-direct {p0, v0, v1, p1}, Lcom/oplus/glcomponent/math/Vector3;-><init>(FFF)V

    return-void
.end method

.method private final len2()F
    .registers 3

    iget v0, p0, Lcom/oplus/glcomponent/math/Vector3;->x:F

    mul-float/2addr v0, v0

    iget v1, p0, Lcom/oplus/glcomponent/math/Vector3;->y:F

    mul-float/2addr v1, v1

    add-float/2addr v1, v0

    iget p0, p0, Lcom/oplus/glcomponent/math/Vector3;->z:F

    mul-float/2addr p0, p0

    add-float/2addr p0, v1

    return p0
.end method

.method private final scl(F)Lcom/oplus/glcomponent/math/Vector3;
    .registers 5

    iget v0, p0, Lcom/oplus/glcomponent/math/Vector3;->x:F

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/oplus/glcomponent/math/Vector3;->y:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/oplus/glcomponent/math/Vector3;->z:F

    mul-float/2addr v2, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/oplus/glcomponent/math/Vector3;->set(FFF)Lcom/oplus/glcomponent/math/Vector3;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final add(FFF)Lcom/oplus/glcomponent/math/Vector3;
    .registers 5

    iget v0, p0, Lcom/oplus/glcomponent/math/Vector3;->x:F

    add-float/2addr v0, p1

    iget p1, p0, Lcom/oplus/glcomponent/math/Vector3;->y:F

    add-float/2addr p1, p2

    iget p2, p0, Lcom/oplus/glcomponent/math/Vector3;->z:F

    add-float/2addr p2, p3

    invoke-virtual {p0, v0, p1, p2}, Lcom/oplus/glcomponent/math/Vector3;->set(FFF)Lcom/oplus/glcomponent/math/Vector3;

    move-result-object p0

    return-object p0
.end method

.method public final getX()F
    .registers 1

    iget p0, p0, Lcom/oplus/glcomponent/math/Vector3;->x:F

    return p0
.end method

.method public final getY()F
    .registers 1

    iget p0, p0, Lcom/oplus/glcomponent/math/Vector3;->y:F

    return p0
.end method

.method public final getZ()F
    .registers 1

    iget p0, p0, Lcom/oplus/glcomponent/math/Vector3;->z:F

    return p0
.end method

.method public final nor()Lcom/oplus/glcomponent/math/Vector3;
    .registers 6

    invoke-direct {p0}, Lcom/oplus/glcomponent/math/Vector3;->len2()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_d

    move v1, v2

    goto :goto_e

    :cond_d
    move v1, v3

    :goto_e
    if-nez v1, :cond_26

    const/high16 v1, 0x3f800000  # 1.0f

    cmpg-float v4, v0, v1

    if-nez v4, :cond_17

    goto :goto_18

    :cond_17
    move v2, v3

    :goto_18
    if-eqz v2, :cond_1b

    goto :goto_26

    :cond_1b
    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    div-float/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/oplus/glcomponent/math/Vector3;->scl(F)Lcom/oplus/glcomponent/math/Vector3;

    move-result-object p0

    :cond_26
    :goto_26
    return-object p0
.end method

.method public final set(FFF)Lcom/oplus/glcomponent/math/Vector3;
    .registers 4

    iput p1, p0, Lcom/oplus/glcomponent/math/Vector3;->x:F

    iput p2, p0, Lcom/oplus/glcomponent/math/Vector3;->y:F

    iput p3, p0, Lcom/oplus/glcomponent/math/Vector3;->z:F

    return-object p0
.end method

.method public final set(Lcom/oplus/glcomponent/math/Vector3;)Lcom/oplus/glcomponent/math/Vector3;
    .registers 3

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Lcom/oplus/glcomponent/math/Vector3;->x:F

    iput v0, p0, Lcom/oplus/glcomponent/math/Vector3;->x:F

    iget v0, p1, Lcom/oplus/glcomponent/math/Vector3;->y:F

    iput v0, p0, Lcom/oplus/glcomponent/math/Vector3;->y:F

    iget p1, p1, Lcom/oplus/glcomponent/math/Vector3;->z:F

    iput p1, p0, Lcom/oplus/glcomponent/math/Vector3;->z:F

    return-object p0
.end method

.method public final setX(F)V
    .registers 2

    iput p1, p0, Lcom/oplus/glcomponent/math/Vector3;->x:F

    return-void
.end method

.method public final setY(F)V
    .registers 2

    iput p1, p0, Lcom/oplus/glcomponent/math/Vector3;->y:F

    return-void
.end method

.method public final setZ(F)V
    .registers 2

    iput p1, p0, Lcom/oplus/glcomponent/math/Vector3;->z:F

    return-void
.end method
