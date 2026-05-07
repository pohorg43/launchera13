.class public final Lcom/android/launcher3/card/theme/data/ActionResult;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final status:I

.field private final targetItemId:I

.field private final targetProviderName:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .registers 5

    const-string/jumbo v0, "targetProviderName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/card/theme/data/ActionResult;->status:I

    iput p2, p0, Lcom/android/launcher3/card/theme/data/ActionResult;->targetItemId:I

    iput-object p3, p0, Lcom/android/launcher3/card/theme/data/ActionResult;->targetProviderName:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_5

    const/4 p2, 0x0

    :cond_5
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_b

    const-string p3, ""

    :cond_b
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/card/theme/data/ActionResult;-><init>(IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/launcher3/card/theme/data/ActionResult;IILjava/lang/String;ILjava/lang/Object;)Lcom/android/launcher3/card/theme/data/ActionResult;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget p1, p0, Lcom/android/launcher3/card/theme/data/ActionResult;->status:I

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget p2, p0, Lcom/android/launcher3/card/theme/data/ActionResult;->targetItemId:I

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget-object p3, p0, Lcom/android/launcher3/card/theme/data/ActionResult;->targetProviderName:Ljava/lang/String;

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/card/theme/data/ActionResult;->copy(IILjava/lang/String;)Lcom/android/launcher3/card/theme/data/ActionResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/card/theme/data/ActionResult;->status:I

    return p0
.end method

.method public final component2()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/card/theme/data/ActionResult;->targetItemId:I

    return p0
.end method

.method public final component3()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/ActionResult;->targetProviderName:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(IILjava/lang/String;)Lcom/android/launcher3/card/theme/data/ActionResult;
    .registers 4

    const-string/jumbo p0, "targetProviderName"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/launcher3/card/theme/data/ActionResult;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/card/theme/data/ActionResult;-><init>(IILjava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/launcher3/card/theme/data/ActionResult;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/android/launcher3/card/theme/data/ActionResult;

    iget v1, p0, Lcom/android/launcher3/card/theme/data/ActionResult;->status:I

    iget v3, p1, Lcom/android/launcher3/card/theme/data/ActionResult;->status:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lcom/android/launcher3/card/theme/data/ActionResult;->targetItemId:I

    iget v3, p1, Lcom/android/launcher3/card/theme/data/ActionResult;->targetItemId:I

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/ActionResult;->targetProviderName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/launcher3/card/theme/data/ActionResult;->targetProviderName:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_25

    return v2

    :cond_25
    return v0
.end method

.method public final getStatus()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/card/theme/data/ActionResult;->status:I

    return p0
.end method

.method public final getTargetItemId()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/card/theme/data/ActionResult;->targetItemId:I

    return p0
.end method

.method public final getTargetProviderName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/ActionResult;->targetProviderName:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/android/launcher3/card/theme/data/ActionResult;->status:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/launcher3/card/theme/data/ActionResult;->targetItemId:I

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/ActionResult;->targetProviderName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "ActionResult(status="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/card/theme/data/ActionResult;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetItemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/card/theme/data/ActionResult;->targetItemId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetProviderName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/ActionResult;->targetProviderName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
