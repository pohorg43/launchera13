.class public final Lcom/oplus/glcomponent/math/Vector4;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private w:F

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>()V
    .registers 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/oplus/glcomponent/math/Vector4;-><init>(FFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oplus/glcomponent/math/Vector4;->x:F

    iput p2, p0, Lcom/oplus/glcomponent/math/Vector4;->y:F

    iput p3, p0, Lcom/oplus/glcomponent/math/Vector4;->z:F

    iput p4, p0, Lcom/oplus/glcomponent/math/Vector4;->w:F

    return-void
.end method

.method public synthetic constructor <init>(FFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 8

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_6

    move p1, v0

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_b

    move p2, v0

    :cond_b
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_10

    move p3, v0

    :cond_10
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_15

    move p4, v0

    :cond_15
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/glcomponent/math/Vector4;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>(Lcom/oplus/glcomponent/math/Vector4;)V
    .registers 5

    const-string v0, "oldVector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Lcom/oplus/glcomponent/math/Vector4;->x:F

    iget v1, p1, Lcom/oplus/glcomponent/math/Vector4;->y:F

    iget v2, p1, Lcom/oplus/glcomponent/math/Vector4;->z:F

    iget p1, p1, Lcom/oplus/glcomponent/math/Vector4;->w:F

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/oplus/glcomponent/math/Vector4;-><init>(FFFF)V

    return-void
.end method


# virtual methods
.method public final getW()F
    .registers 1

    iget p0, p0, Lcom/oplus/glcomponent/math/Vector4;->w:F

    return p0
.end method

.method public final getX()F
    .registers 1

    iget p0, p0, Lcom/oplus/glcomponent/math/Vector4;->x:F

    return p0
.end method

.method public final getY()F
    .registers 1

    iget p0, p0, Lcom/oplus/glcomponent/math/Vector4;->y:F

    return p0
.end method

.method public final getZ()F
    .registers 1

    iget p0, p0, Lcom/oplus/glcomponent/math/Vector4;->z:F

    return p0
.end method

.method public final minus(Lcom/oplus/glcomponent/math/Vector4;)Lcom/oplus/glcomponent/math/Vector4;
    .registers 7

    const-string v0, "vector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/glcomponent/math/Vector4;

    iget v1, p0, Lcom/oplus/glcomponent/math/Vector4;->x:F

    iget v2, p1, Lcom/oplus/glcomponent/math/Vector4;->x:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/oplus/glcomponent/math/Vector4;->y:F

    iget v3, p1, Lcom/oplus/glcomponent/math/Vector4;->y:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/oplus/glcomponent/math/Vector4;->z:F

    iget v4, p1, Lcom/oplus/glcomponent/math/Vector4;->z:F

    sub-float/2addr v3, v4

    iget p0, p0, Lcom/oplus/glcomponent/math/Vector4;->w:F

    iget p1, p1, Lcom/oplus/glcomponent/math/Vector4;->w:F

    sub-float/2addr p0, p1

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/oplus/glcomponent/math/Vector4;-><init>(FFFF)V

    return-object v0
.end method

.method public final plus(Lcom/oplus/glcomponent/math/Vector4;)Lcom/oplus/glcomponent/math/Vector4;
    .registers 7

    const-string v0, "vector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/glcomponent/math/Vector4;

    iget v1, p0, Lcom/oplus/glcomponent/math/Vector4;->x:F

    iget v2, p1, Lcom/oplus/glcomponent/math/Vector4;->x:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/oplus/glcomponent/math/Vector4;->y:F

    iget v3, p1, Lcom/oplus/glcomponent/math/Vector4;->y:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/oplus/glcomponent/math/Vector4;->z:F

    iget v4, p1, Lcom/oplus/glcomponent/math/Vector4;->z:F

    add-float/2addr v3, v4

    iget p0, p0, Lcom/oplus/glcomponent/math/Vector4;->w:F

    iget p1, p1, Lcom/oplus/glcomponent/math/Vector4;->w:F

    add-float/2addr p0, p1

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/oplus/glcomponent/math/Vector4;-><init>(FFFF)V

    return-object v0
.end method

.method public final plusAssign(Lcom/oplus/glcomponent/math/Vector4;)V
    .registers 4

    const-string v0, "vector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/oplus/glcomponent/math/Vector4;->x:F

    iget v1, p1, Lcom/oplus/glcomponent/math/Vector4;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/oplus/glcomponent/math/Vector4;->x:F

    iget v0, p0, Lcom/oplus/glcomponent/math/Vector4;->y:F

    iget v1, p1, Lcom/oplus/glcomponent/math/Vector4;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/oplus/glcomponent/math/Vector4;->y:F

    iget v0, p0, Lcom/oplus/glcomponent/math/Vector4;->z:F

    iget v1, p1, Lcom/oplus/glcomponent/math/Vector4;->z:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/oplus/glcomponent/math/Vector4;->z:F

    iget v0, p0, Lcom/oplus/glcomponent/math/Vector4;->w:F

    iget p1, p1, Lcom/oplus/glcomponent/math/Vector4;->w:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/oplus/glcomponent/math/Vector4;->w:F

    return-void
.end method

.method public final setW(F)V
    .registers 2

    iput p1, p0, Lcom/oplus/glcomponent/math/Vector4;->w:F

    return-void
.end method

.method public final setX(F)V
    .registers 2

    iput p1, p0, Lcom/oplus/glcomponent/math/Vector4;->x:F

    return-void
.end method

.method public final setY(F)V
    .registers 2

    iput p1, p0, Lcom/oplus/glcomponent/math/Vector4;->y:F

    return-void
.end method

.method public final setZ(F)V
    .registers 2

    iput p1, p0, Lcom/oplus/glcomponent/math/Vector4;->z:F

    return-void
.end method
