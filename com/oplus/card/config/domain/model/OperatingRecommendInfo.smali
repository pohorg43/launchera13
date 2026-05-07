.class public final Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final groupId:I

.field private final order:I

.field private final recommendType:I

.field private final type:I

.field private final weight:I


# direct methods
.method public constructor <init>(IIIII)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;->groupId:I

    iput p2, p0, Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;->type:I

    iput p3, p0, Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;->order:I

    iput p4, p0, Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;->weight:I

    iput p5, p0, Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;->recommendType:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;IIIIIILjava/lang/Object;)Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;
    .registers 11

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_6

    iget p1, p0, Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;->groupId:I

    :cond_6
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_c

    iget p2, p0, Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;->type:I

    :cond_c
    move p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_13

    iget p3, p0, Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;->order:I

    :cond_13
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_1a

    iget p4, p0, Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;->weight:I

    :cond_1a
    move v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_21

    iget p5, p0, Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;->recommendType:I

    :cond_21
    move v2, p5

    move-object p2, p0

    move p3, p1

    move p4, p7

    move p5, v0

    move p6, v1

    move p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;->copy(IIIII)Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;->groupId:I

    return p0
.end method

.method public final component2()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;->type:I

    return p0
.end method

.method public final component3()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;->order:I

    return p0
.end method

.method public final component4()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;->weight:I

    return p0
.end method

.method public final component5()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;->recommendType:I

    return p0
.end method

.method public final copy(IIIII)Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;
    .registers 12

    new-instance p0, Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;-><init>(IIIII)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;

    iget v1, p0, Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;->groupId:I

    iget v3, p1, Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;->groupId:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;->type:I

    iget v3, p1, Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;->type:I

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget v1, p0, Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;->order:I

    iget v3, p1, Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;->order:I

    if-eq v1, v3, :cond_21

    return v2

    :cond_21
    iget v1, p0, Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;->weight:I

    iget v3, p1, Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;->weight:I

    if-eq v1, v3, :cond_28

    return v2

    :cond_28
    iget p0, p0, Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;->recommendType:I

    iget p1, p1, Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;->recommendType:I

    if-eq p0, p1, :cond_2f

    return v2

    :cond_2f
    return v0
.end method

.method public final getGroupId()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;->groupId:I

    return p0
.end method

.method public final getOrder()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;->order:I

    return p0
.end method

.method public final getRecommendType()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;->recommendType:I

    return p0
.end method

.method public final getType()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;->type:I

    return p0
.end method

.method public final getWeight()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;->weight:I

    return p0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;->groupId:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;->type:I

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;->order:I

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;->weight:I

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget p0, p0, Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;->recommendType:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "OperatingRecommendInfo(groupId="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;->groupId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", order="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;->order:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", weight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;->weight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", recommendType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;->recommendType:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/core/graphics/b;->a(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
