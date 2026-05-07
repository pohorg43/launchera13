.class public final Lcom/oplus/card/manager/domain/model/CardIdInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final cardId:I

.field private final type:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oplus/card/manager/domain/model/CardIdInfo;->type:I

    iput p2, p0, Lcom/oplus/card/manager/domain/model/CardIdInfo;->cardId:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/card/manager/domain/model/CardIdInfo;IIILjava/lang/Object;)Lcom/oplus/card/manager/domain/model/CardIdInfo;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget p1, p0, Lcom/oplus/card/manager/domain/model/CardIdInfo;->type:I

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget p2, p0, Lcom/oplus/card/manager/domain/model/CardIdInfo;->cardId:I

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/oplus/card/manager/domain/model/CardIdInfo;->copy(II)Lcom/oplus/card/manager/domain/model/CardIdInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/manager/domain/model/CardIdInfo;->type:I

    return p0
.end method

.method public final component2()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/manager/domain/model/CardIdInfo;->cardId:I

    return p0
.end method

.method public final copy(II)Lcom/oplus/card/manager/domain/model/CardIdInfo;
    .registers 3

    new-instance p0, Lcom/oplus/card/manager/domain/model/CardIdInfo;

    invoke-direct {p0, p1, p2}, Lcom/oplus/card/manager/domain/model/CardIdInfo;-><init>(II)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/oplus/card/manager/domain/model/CardIdInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/oplus/card/manager/domain/model/CardIdInfo;

    iget v1, p0, Lcom/oplus/card/manager/domain/model/CardIdInfo;->type:I

    iget v3, p1, Lcom/oplus/card/manager/domain/model/CardIdInfo;->type:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget p0, p0, Lcom/oplus/card/manager/domain/model/CardIdInfo;->cardId:I

    iget p1, p1, Lcom/oplus/card/manager/domain/model/CardIdInfo;->cardId:I

    if-eq p0, p1, :cond_1a

    return v2

    :cond_1a
    return v0
.end method

.method public final getCardId()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/manager/domain/model/CardIdInfo;->cardId:I

    return p0
.end method

.method public final getType()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/manager/domain/model/CardIdInfo;->type:I

    return p0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lcom/oplus/card/manager/domain/model/CardIdInfo;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/oplus/card/manager/domain/model/CardIdInfo;->cardId:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "CardIdInfo(type="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/card/manager/domain/model/CardIdInfo;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cardId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/card/manager/domain/model/CardIdInfo;->cardId:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/core/graphics/b;->a(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
