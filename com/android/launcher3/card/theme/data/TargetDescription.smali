.class public final Lcom/android/launcher3/card/theme/data/TargetDescription;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final cardType:Ljava/lang/String;

.field private final providerName:Ljava/lang/String;

.field private final themeInfo:Lcom/android/launcher3/card/theme/data/ThemeCardInfo;

.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher3/card/theme/data/ThemeCardInfo;)V
    .registers 6

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->type:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->cardType:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->providerName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->themeInfo:Lcom/android/launcher3/card/theme/data/ThemeCardInfo;

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/launcher3/card/theme/data/TargetDescription;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher3/card/theme/data/ThemeCardInfo;ILjava/lang/Object;)Lcom/android/launcher3/card/theme/data/TargetDescription;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget-object p1, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->type:Ljava/lang/String;

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget-object p2, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->cardType:Ljava/lang/String;

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget-object p3, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->providerName:Ljava/lang/String;

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget-object p4, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->themeInfo:Lcom/android/launcher3/card/theme/data/ThemeCardInfo;

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher3/card/theme/data/TargetDescription;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher3/card/theme/data/ThemeCardInfo;)Lcom/android/launcher3/card/theme/data/TargetDescription;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->type:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->cardType:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->providerName:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Lcom/android/launcher3/card/theme/data/ThemeCardInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->themeInfo:Lcom/android/launcher3/card/theme/data/ThemeCardInfo;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher3/card/theme/data/ThemeCardInfo;)Lcom/android/launcher3/card/theme/data/TargetDescription;
    .registers 5

    const-string/jumbo p0, "type"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/launcher3/card/theme/data/TargetDescription;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/card/theme/data/TargetDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher3/card/theme/data/ThemeCardInfo;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/launcher3/card/theme/data/TargetDescription;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/android/launcher3/card/theme/data/TargetDescription;

    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/launcher3/card/theme/data/TargetDescription;->type:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->cardType:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/launcher3/card/theme/data/TargetDescription;->cardType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->providerName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/launcher3/card/theme/data/TargetDescription;->providerName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->themeInfo:Lcom/android/launcher3/card/theme/data/ThemeCardInfo;

    iget-object p1, p1, Lcom/android/launcher3/card/theme/data/TargetDescription;->themeInfo:Lcom/android/launcher3/card/theme/data/ThemeCardInfo;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_38

    return v2

    :cond_38
    return v0
.end method

.method public final getCardType()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->cardType:Ljava/lang/String;

    return-object p0
.end method

.method public final getProviderName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->providerName:Ljava/lang/String;

    return-object p0
.end method

.method public final getThemeInfo()Lcom/android/launcher3/card/theme/data/ThemeCardInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->themeInfo:Lcom/android/launcher3/card/theme/data/ThemeCardInfo;

    return-object p0
.end method

.method public final getType()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->type:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->cardType:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_f

    move v1, v2

    goto :goto_13

    :cond_f
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_13
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->providerName:Ljava/lang/String;

    if-nez v1, :cond_1c

    move v1, v2

    goto :goto_20

    :cond_1c
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_20
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->themeInfo:Lcom/android/launcher3/card/theme/data/ThemeCardInfo;

    if-nez p0, :cond_28

    goto :goto_2c

    :cond_28
    invoke-virtual {p0}, Lcom/android/launcher3/card/theme/data/ThemeCardInfo;->hashCode()I

    move-result v2

    :goto_2c
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "TargetDescription(type="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cardType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->cardType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", providerName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->providerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", themeInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->themeInfo:Lcom/android/launcher3/card/theme/data/ThemeCardInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
