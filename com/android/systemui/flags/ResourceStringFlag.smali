.class public final Lcom/android/systemui/flags/ResourceStringFlag;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/flags/ResourceFlag;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/flags/ResourceFlag<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final id:I

.field private final resourceId:I

.field private final teamfood:Z


# direct methods
.method public constructor <init>(II)V
    .registers 9
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/flags/ResourceStringFlag;-><init>(IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIZ)V
    .registers 4
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/flags/ResourceStringFlag;->id:I

    iput p2, p0, Lcom/android/systemui/flags/ResourceStringFlag;->resourceId:I

    iput-boolean p3, p0, Lcom/android/systemui/flags/ResourceStringFlag;->teamfood:Z

    return-void
.end method

.method public synthetic constructor <init>(IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/flags/ResourceStringFlag;-><init>(IIZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/systemui/flags/ResourceStringFlag;IIZILjava/lang/Object;)Lcom/android/systemui/flags/ResourceStringFlag;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/flags/ResourceStringFlag;->getId()I

    move-result p1

    :cond_8
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_10

    invoke-virtual {p0}, Lcom/android/systemui/flags/ResourceStringFlag;->getResourceId()I

    move-result p2

    :cond_10
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_18

    invoke-virtual {p0}, Lcom/android/systemui/flags/ResourceStringFlag;->getTeamfood()Z

    move-result p3

    :cond_18
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/flags/ResourceStringFlag;->copy(IIZ)Lcom/android/systemui/flags/ResourceStringFlag;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    invoke-virtual {p0}, Lcom/android/systemui/flags/ResourceStringFlag;->getId()I

    move-result p0

    return p0
.end method

.method public final component2()I
    .registers 1

    invoke-virtual {p0}, Lcom/android/systemui/flags/ResourceStringFlag;->getResourceId()I

    move-result p0

    return p0
.end method

.method public final component3()Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/systemui/flags/ResourceStringFlag;->getTeamfood()Z

    move-result p0

    return p0
.end method

.method public final copy(IIZ)Lcom/android/systemui/flags/ResourceStringFlag;
    .registers 4

    new-instance p0, Lcom/android/systemui/flags/ResourceStringFlag;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/flags/ResourceStringFlag;-><init>(IIZ)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/systemui/flags/ResourceStringFlag;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/android/systemui/flags/ResourceStringFlag;

    invoke-virtual {p0}, Lcom/android/systemui/flags/ResourceStringFlag;->getId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/systemui/flags/ResourceStringFlag;->getId()I

    move-result v3

    if-eq v1, v3, :cond_17

    return v2

    :cond_17
    invoke-virtual {p0}, Lcom/android/systemui/flags/ResourceStringFlag;->getResourceId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/systemui/flags/ResourceStringFlag;->getResourceId()I

    move-result v3

    if-eq v1, v3, :cond_22

    return v2

    :cond_22
    invoke-virtual {p0}, Lcom/android/systemui/flags/ResourceStringFlag;->getTeamfood()Z

    move-result p0

    invoke-virtual {p1}, Lcom/android/systemui/flags/ResourceStringFlag;->getTeamfood()Z

    move-result p1

    if-eq p0, p1, :cond_2d

    return v2

    :cond_2d
    return v0
.end method

.method public getId()I
    .registers 1

    iget p0, p0, Lcom/android/systemui/flags/ResourceStringFlag;->id:I

    return p0
.end method

.method public getResourceId()I
    .registers 1

    iget p0, p0, Lcom/android/systemui/flags/ResourceStringFlag;->resourceId:I

    return p0
.end method

.method public getTeamfood()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/systemui/flags/ResourceStringFlag;->teamfood:Z

    return p0
.end method

.method public hashCode()I
    .registers 3

    invoke-virtual {p0}, Lcom/android/systemui/flags/ResourceStringFlag;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/android/systemui/flags/ResourceStringFlag;->getResourceId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0}, Lcom/android/systemui/flags/ResourceStringFlag;->getTeamfood()Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    :cond_1c
    add-int/2addr v1, p0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "ResourceStringFlag(id="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/flags/ResourceStringFlag;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/flags/ResourceStringFlag;->getResourceId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", teamfood="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/flags/ResourceStringFlag;->getTeamfood()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
