.class public final Lcom/android/launcher3/folder/big/ConvertBgParams;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private radius:F

.field private sizeX:I

.field private sizeY:I

.field private tranX:F

.field private tranY:F

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(FIIFFFF)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->radius:F

    iput p2, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->sizeX:I

    iput p3, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->sizeY:I

    iput p4, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->x:F

    iput p5, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->y:F

    iput p6, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->tranX:F

    iput p7, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->tranY:F

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/launcher3/folder/big/ConvertBgParams;FIIFFFFILjava/lang/Object;)Lcom/android/launcher3/folder/big/ConvertBgParams;
    .registers 15

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_6

    iget p1, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->radius:F

    :cond_6
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_c

    iget p2, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->sizeX:I

    :cond_c
    move p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_13

    iget p3, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->sizeY:I

    :cond_13
    move v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_1a

    iget p4, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->x:F

    :cond_1a
    move v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_21

    iget p5, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->y:F

    :cond_21
    move v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_28

    iget p6, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->tranX:F

    :cond_28
    move v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_2f

    iget p7, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->tranY:F

    :cond_2f
    move v4, p7

    move-object p2, p0

    move p3, p1

    move p4, p9

    move p5, v0

    move p6, v1

    move p7, v2

    move p8, v3

    move p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/android/launcher3/folder/big/ConvertBgParams;->copy(FIIFFFF)Lcom/android/launcher3/folder/big/ConvertBgParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->radius:F

    return p0
.end method

.method public final component2()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->sizeX:I

    return p0
.end method

.method public final component3()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->sizeY:I

    return p0
.end method

.method public final component4()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->x:F

    return p0
.end method

.method public final component5()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->y:F

    return p0
.end method

.method public final component6()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->tranX:F

    return p0
.end method

.method public final component7()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->tranY:F

    return p0
.end method

.method public final copy(FIIFFFF)Lcom/android/launcher3/folder/big/ConvertBgParams;
    .registers 16

    new-instance p0, Lcom/android/launcher3/folder/big/ConvertBgParams;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/folder/big/ConvertBgParams;-><init>(FIIFFFF)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/launcher3/folder/big/ConvertBgParams;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/android/launcher3/folder/big/ConvertBgParams;

    iget v1, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->radius:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/android/launcher3/folder/big/ConvertBgParams;->radius:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    return v2

    :cond_1f
    iget v1, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->sizeX:I

    iget v3, p1, Lcom/android/launcher3/folder/big/ConvertBgParams;->sizeX:I

    if-eq v1, v3, :cond_26

    return v2

    :cond_26
    iget v1, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->sizeY:I

    iget v3, p1, Lcom/android/launcher3/folder/big/ConvertBgParams;->sizeY:I

    if-eq v1, v3, :cond_2d

    return v2

    :cond_2d
    iget v1, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->x:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/android/launcher3/folder/big/ConvertBgParams;->x:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    return v2

    :cond_40
    iget v1, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->y:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/android/launcher3/folder/big/ConvertBgParams;->y:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    return v2

    :cond_53
    iget v1, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->tranX:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/android/launcher3/folder/big/ConvertBgParams;->tranX:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_66

    return v2

    :cond_66
    iget p0, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->tranY:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iget p1, p1, Lcom/android/launcher3/folder/big/ConvertBgParams;->tranY:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_79

    return v2

    :cond_79
    return v0
.end method

.method public final getRadius()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->radius:F

    return p0
.end method

.method public final getSizeX()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->sizeX:I

    return p0
.end method

.method public final getSizeY()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->sizeY:I

    return p0
.end method

.method public final getTranX()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->tranX:F

    return p0
.end method

.method public final getTranY()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->tranY:F

    return p0
.end method

.method public final getX()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->x:F

    return p0
.end method

.method public final getY()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->y:F

    return p0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->radius:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->sizeX:I

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->sizeY:I

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->x:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->y:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->tranX:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget p0, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->tranY:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final setRadius(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->radius:F

    return-void
.end method

.method public final setSizeX(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->sizeX:I

    return-void
.end method

.method public final setSizeY(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->sizeY:I

    return-void
.end method

.method public final setTranX(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->tranX:F

    return-void
.end method

.method public final setTranY(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->tranY:F

    return-void
.end method

.method public final setX(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->x:F

    return-void
.end method

.method public final setY(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->y:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "ConvertBgParams(radius="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->radius:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", sizeX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->sizeX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sizeY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->sizeY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", tranX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->tranX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", tranY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->tranY:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateBg(FIIFF)V
    .registers 6

    iput p1, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->radius:F

    iput p2, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->sizeX:I

    iput p3, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->sizeY:I

    iput p4, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->x:F

    iput p5, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->y:F

    return-void
.end method

.method public final updateTrans(FF)V
    .registers 3

    iput p1, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->tranX:F

    iput p2, p0, Lcom/android/launcher3/folder/big/ConvertBgParams;->tranY:F

    return-void
.end method
