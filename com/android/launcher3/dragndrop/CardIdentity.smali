.class public final Lcom/android/launcher3/dragndrop/CardIdentity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/dragndrop/CardIdentity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/dragndrop/CardIdentity$Companion;


# instance fields
.field private final cardId:I

.field private final cardState:I

.field private final cardType:I

.field private final hostId:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/dragndrop/CardIdentity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/dragndrop/CardIdentity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/dragndrop/CardIdentity;->Companion:Lcom/android/launcher3/dragndrop/CardIdentity$Companion;

    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/dragndrop/CardIdentity;->cardState:I

    iput p2, p0, Lcom/android/launcher3/dragndrop/CardIdentity;->cardType:I

    iput p3, p0, Lcom/android/launcher3/dragndrop/CardIdentity;->cardId:I

    iput p4, p0, Lcom/android/launcher3/dragndrop/CardIdentity;->hostId:I

    return-void
.end method

.method public synthetic constructor <init>(IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_5

    const/4 p1, 0x0

    :cond_5
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_a

    const/4 p4, 0x3

    :cond_a
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/dragndrop/CardIdentity;-><init>(IIII)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/launcher3/dragndrop/CardIdentity;IIIIILjava/lang/Object;)Lcom/android/launcher3/dragndrop/CardIdentity;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget p1, p0, Lcom/android/launcher3/dragndrop/CardIdentity;->cardState:I

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget p2, p0, Lcom/android/launcher3/dragndrop/CardIdentity;->cardType:I

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget p3, p0, Lcom/android/launcher3/dragndrop/CardIdentity;->cardId:I

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget p4, p0, Lcom/android/launcher3/dragndrop/CardIdentity;->hostId:I

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher3/dragndrop/CardIdentity;->copy(IIII)Lcom/android/launcher3/dragndrop/CardIdentity;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/dragndrop/CardIdentity;->cardState:I

    return p0
.end method

.method public final component2()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/dragndrop/CardIdentity;->cardType:I

    return p0
.end method

.method public final component3()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/dragndrop/CardIdentity;->cardId:I

    return p0
.end method

.method public final component4()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/dragndrop/CardIdentity;->hostId:I

    return p0
.end method

.method public final copy(IIII)Lcom/android/launcher3/dragndrop/CardIdentity;
    .registers 5

    new-instance p0, Lcom/android/launcher3/dragndrop/CardIdentity;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/dragndrop/CardIdentity;-><init>(IIII)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/launcher3/dragndrop/CardIdentity;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/android/launcher3/dragndrop/CardIdentity;

    iget v1, p0, Lcom/android/launcher3/dragndrop/CardIdentity;->cardState:I

    iget v3, p1, Lcom/android/launcher3/dragndrop/CardIdentity;->cardState:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lcom/android/launcher3/dragndrop/CardIdentity;->cardType:I

    iget v3, p1, Lcom/android/launcher3/dragndrop/CardIdentity;->cardType:I

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget v1, p0, Lcom/android/launcher3/dragndrop/CardIdentity;->cardId:I

    iget v3, p1, Lcom/android/launcher3/dragndrop/CardIdentity;->cardId:I

    if-eq v1, v3, :cond_21

    return v2

    :cond_21
    iget p0, p0, Lcom/android/launcher3/dragndrop/CardIdentity;->hostId:I

    iget p1, p1, Lcom/android/launcher3/dragndrop/CardIdentity;->hostId:I

    if-eq p0, p1, :cond_28

    return v2

    :cond_28
    return v0
.end method

.method public final getCardId()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/dragndrop/CardIdentity;->cardId:I

    return p0
.end method

.method public final getCardState()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/dragndrop/CardIdentity;->cardState:I

    return p0
.end method

.method public final getCardType()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/dragndrop/CardIdentity;->cardType:I

    return p0
.end method

.method public final getHostId()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/dragndrop/CardIdentity;->hostId:I

    return p0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/android/launcher3/dragndrop/CardIdentity;->cardState:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/launcher3/dragndrop/CardIdentity;->cardType:I

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/dragndrop/CardIdentity;->cardId:I

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget p0, p0, Lcom/android/launcher3/dragndrop/CardIdentity;->hostId:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Gson().toJson(this)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
