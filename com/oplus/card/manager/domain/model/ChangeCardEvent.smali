.class public final Lcom/oplus/card/manager/domain/model/ChangeCardEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/card/manager/domain/model/ChangeCardEvent$EVENT;,
        Lcom/oplus/card/manager/domain/model/ChangeCardEvent$LOCATION;,
        Lcom/oplus/card/manager/domain/model/ChangeCardEvent$POSITION;
    }
.end annotation


# instance fields
.field private final action:I

.field private final cardId:I

.field private final index:I

.field private final location:I

.field private final position:I

.field private final type:I


# direct methods
.method public constructor <init>(IIIIII)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oplus/card/manager/domain/model/ChangeCardEvent;->action:I

    iput p2, p0, Lcom/oplus/card/manager/domain/model/ChangeCardEvent;->type:I

    iput p3, p0, Lcom/oplus/card/manager/domain/model/ChangeCardEvent;->cardId:I

    iput p4, p0, Lcom/oplus/card/manager/domain/model/ChangeCardEvent;->location:I

    iput p5, p0, Lcom/oplus/card/manager/domain/model/ChangeCardEvent;->position:I

    iput p6, p0, Lcom/oplus/card/manager/domain/model/ChangeCardEvent;->index:I

    return-void
.end method

.method public synthetic constructor <init>(IIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 16

    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_5

    const/4 p3, -0x1

    :cond_5
    move v3, p3

    and-int/lit8 p3, p7, 0x8

    if-eqz p3, :cond_b

    const/4 p4, 0x1

    :cond_b
    move v4, p4

    and-int/lit8 p3, p7, 0x10

    if-eqz p3, :cond_11

    const/4 p5, 0x2

    :cond_11
    move v5, p5

    and-int/lit8 p3, p7, 0x20

    if-eqz p3, :cond_17

    const/4 p6, 0x0

    :cond_17
    move v6, p6

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/oplus/card/manager/domain/model/ChangeCardEvent;-><init>(IIIIII)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/card/manager/domain/model/ChangeCardEvent;IIIIIIILjava/lang/Object;)Lcom/oplus/card/manager/domain/model/ChangeCardEvent;
    .registers 13

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_6

    iget p1, p0, Lcom/oplus/card/manager/domain/model/ChangeCardEvent;->action:I

    :cond_6
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_c

    iget p2, p0, Lcom/oplus/card/manager/domain/model/ChangeCardEvent;->type:I

    :cond_c
    move p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_13

    iget p3, p0, Lcom/oplus/card/manager/domain/model/ChangeCardEvent;->cardId:I

    :cond_13
    move v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_1a

    iget p4, p0, Lcom/oplus/card/manager/domain/model/ChangeCardEvent;->location:I

    :cond_1a
    move v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_21

    iget p5, p0, Lcom/oplus/card/manager/domain/model/ChangeCardEvent;->position:I

    :cond_21
    move v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_28

    iget p6, p0, Lcom/oplus/card/manager/domain/model/ChangeCardEvent;->index:I

    :cond_28
    move v3, p6

    move-object p2, p0

    move p3, p1

    move p4, p8

    move p5, v0

    move p6, v1

    move p7, v2

    move p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/oplus/card/manager/domain/model/ChangeCardEvent;->copy(IIIIII)Lcom/oplus/card/manager/domain/model/ChangeCardEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/manager/domain/model/ChangeCardEvent;->action:I

    return p0
.end method

.method public final component2()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/manager/domain/model/ChangeCardEvent;->type:I

    return p0
.end method

.method public final component3()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/manager/domain/model/ChangeCardEvent;->cardId:I

    return p0
.end method

.method public final component4()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/manager/domain/model/ChangeCardEvent;->location:I

    return p0
.end method

.method public final component5()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/manager/domain/model/ChangeCardEvent;->position:I

    return p0
.end method

.method public final component6()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/manager/domain/model/ChangeCardEvent;->index:I

    return p0
.end method

.method public final copy(IIIIII)Lcom/oplus/card/manager/domain/model/ChangeCardEvent;
    .registers 14

    new-instance p0, Lcom/oplus/card/manager/domain/model/ChangeCardEvent;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/oplus/card/manager/domain/model/ChangeCardEvent;-><init>(IIIIII)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/oplus/card/manager/domain/model/ChangeCardEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/oplus/card/manager/domain/model/ChangeCardEvent;

    iget v1, p0, Lcom/oplus/card/manager/domain/model/ChangeCardEvent;->action:I

    iget v3, p1, Lcom/oplus/card/manager/domain/model/ChangeCardEvent;->action:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lcom/oplus/card/manager/domain/model/ChangeCardEvent;->type:I

    iget v3, p1, Lcom/oplus/card/manager/domain/model/ChangeCardEvent;->type:I

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget v1, p0, Lcom/oplus/card/manager/domain/model/ChangeCardEvent;->cardId:I

    iget v3, p1, Lcom/oplus/card/manager/domain/model/ChangeCardEvent;->cardId:I

    if-eq v1, v3, :cond_21

    return v2

    :cond_21
    iget v1, p0, Lcom/oplus/card/manager/domain/model/ChangeCardEvent;->location:I

    iget v3, p1, Lcom/oplus/card/manager/domain/model/ChangeCardEvent;->location:I

    if-eq v1, v3, :cond_28

    return v2

    :cond_28
    iget v1, p0, Lcom/oplus/card/manager/domain/model/ChangeCardEvent;->position:I

    iget v3, p1, Lcom/oplus/card/manager/domain/model/ChangeCardEvent;->position:I

    if-eq v1, v3, :cond_2f

    return v2

    :cond_2f
    iget p0, p0, Lcom/oplus/card/manager/domain/model/ChangeCardEvent;->index:I

    iget p1, p1, Lcom/oplus/card/manager/domain/model/ChangeCardEvent;->index:I

    if-eq p0, p1, :cond_36

    return v2

    :cond_36
    return v0
.end method

.method public final getAction()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/manager/domain/model/ChangeCardEvent;->action:I

    return p0
.end method

.method public final getCardId()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/manager/domain/model/ChangeCardEvent;->cardId:I

    return p0
.end method

.method public final getIndex()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/manager/domain/model/ChangeCardEvent;->index:I

    return p0
.end method

.method public final getLocation()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/manager/domain/model/ChangeCardEvent;->location:I

    return p0
.end method

.method public final getPosition()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/manager/domain/model/ChangeCardEvent;->position:I

    return p0
.end method

.method public final getType()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/manager/domain/model/ChangeCardEvent;->type:I

    return p0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/oplus/card/manager/domain/model/ChangeCardEvent;->action:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/oplus/card/manager/domain/model/ChangeCardEvent;->type:I

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Lcom/oplus/card/manager/domain/model/ChangeCardEvent;->cardId:I

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Lcom/oplus/card/manager/domain/model/ChangeCardEvent;->location:I

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Lcom/oplus/card/manager/domain/model/ChangeCardEvent;->position:I

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget p0, p0, Lcom/oplus/card/manager/domain/model/ChangeCardEvent;->index:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "ChangeCardEvent(action="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/card/manager/domain/model/ChangeCardEvent;->action:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/card/manager/domain/model/ChangeCardEvent;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cardId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/card/manager/domain/model/ChangeCardEvent;->cardId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/card/manager/domain/model/ChangeCardEvent;->location:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/card/manager/domain/model/ChangeCardEvent;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/card/manager/domain/model/ChangeCardEvent;->index:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/core/graphics/b;->a(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
