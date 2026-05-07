.class public final Lcom/android/launcher3/card/theme/data/SrcDescription;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final cardType:Ljava/lang/Integer;

.field private final itemInfoId:I

.field private final providerName:Ljava/lang/String;

.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .registers 6

    const-string/jumbo v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/card/theme/data/SrcDescription;->itemInfoId:I

    iput-object p2, p0, Lcom/android/launcher3/card/theme/data/SrcDescription;->type:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/launcher3/card/theme/data/SrcDescription;->cardType:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/android/launcher3/card/theme/data/SrcDescription;->providerName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/launcher3/card/theme/data/SrcDescription;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)Lcom/android/launcher3/card/theme/data/SrcDescription;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget p1, p0, Lcom/android/launcher3/card/theme/data/SrcDescription;->itemInfoId:I

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget-object p2, p0, Lcom/android/launcher3/card/theme/data/SrcDescription;->type:Ljava/lang/String;

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget-object p3, p0, Lcom/android/launcher3/card/theme/data/SrcDescription;->cardType:Ljava/lang/Integer;

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget-object p4, p0, Lcom/android/launcher3/card/theme/data/SrcDescription;->providerName:Ljava/lang/String;

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher3/card/theme/data/SrcDescription;->copy(ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lcom/android/launcher3/card/theme/data/SrcDescription;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/card/theme/data/SrcDescription;->itemInfoId:I

    return p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/SrcDescription;->type:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/SrcDescription;->cardType:Ljava/lang/Integer;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/SrcDescription;->providerName:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lcom/android/launcher3/card/theme/data/SrcDescription;
    .registers 5

    const-string/jumbo p0, "type"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/launcher3/card/theme/data/SrcDescription;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/card/theme/data/SrcDescription;-><init>(ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/launcher3/card/theme/data/SrcDescription;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/android/launcher3/card/theme/data/SrcDescription;

    iget v1, p0, Lcom/android/launcher3/card/theme/data/SrcDescription;->itemInfoId:I

    iget v3, p1, Lcom/android/launcher3/card/theme/data/SrcDescription;->itemInfoId:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/SrcDescription;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/launcher3/card/theme/data/SrcDescription;->type:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/SrcDescription;->cardType:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/android/launcher3/card/theme/data/SrcDescription;->cardType:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/SrcDescription;->providerName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/launcher3/card/theme/data/SrcDescription;->providerName:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_34

    return v2

    :cond_34
    return v0
.end method

.method public final getCardType()Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/SrcDescription;->cardType:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getItemInfoId()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/card/theme/data/SrcDescription;->itemInfoId:I

    return p0
.end method

.method public final getProviderName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/SrcDescription;->providerName:Ljava/lang/String;

    return-object p0
.end method

.method public final getType()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/SrcDescription;->type:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/android/launcher3/card/theme/data/SrcDescription;->itemInfoId:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/SrcDescription;->type:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/SrcDescription;->cardType:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-nez v1, :cond_17

    move v1, v2

    goto :goto_1b

    :cond_17
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/SrcDescription;->providerName:Ljava/lang/String;

    if-nez p0, :cond_23

    goto :goto_27

    :cond_23
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_27
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "SrcDescription(itemInfoId="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/card/theme/data/SrcDescription;->itemInfoId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/SrcDescription;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cardType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/SrcDescription;->cardType:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", providerName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/SrcDescription;->providerName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
