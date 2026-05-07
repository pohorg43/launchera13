.class public final Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final cardType:Ljava/lang/Integer;

.field private final itemId:Ljava/lang/Integer;

.field private final itemInfoId:I

.field private final itemType:Ljava/lang/String;

.field private final providerName:Ljava/lang/String;

.field private final spanSize:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore$Creator;

    invoke-direct {v0}, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore$Creator;-><init>()V

    sput-object v0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V
    .registers 8

    const-string v0, "itemType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->itemInfoId:I

    iput-object p2, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->itemType:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->spanSize:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->itemId:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->cardType:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->providerName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;
    .registers 13

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_6

    iget p1, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->itemInfoId:I

    :cond_6
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_c

    iget-object p2, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->itemType:Ljava/lang/String;

    :cond_c
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_13

    iget-object p3, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->spanSize:Ljava/lang/String;

    :cond_13
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_1a

    iget-object p4, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->itemId:Ljava/lang/Integer;

    :cond_1a
    move-object v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_21

    iget-object p5, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->cardType:Ljava/lang/Integer;

    :cond_21
    move-object v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_28

    iget-object p6, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->providerName:Ljava/lang/String;

    :cond_28
    move-object v3, p6

    move-object p2, p0

    move p3, p1

    move-object p4, p8

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->copy(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->itemInfoId:I

    return p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->itemType:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->spanSize:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->itemId:Ljava/lang/Integer;

    return-object p0
.end method

.method public final component5()Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->cardType:Ljava/lang/Integer;

    return-object p0
.end method

.method public final component6()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->providerName:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;
    .registers 14

    const-string p0, "itemType"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    return-object p0
.end method

.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;

    iget v1, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->itemInfoId:I

    iget v3, p1, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->itemInfoId:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->itemType:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->itemType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->spanSize:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->spanSize:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->itemId:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->itemId:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    return v2

    :cond_34
    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->cardType:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->cardType:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    return v2

    :cond_3f
    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->providerName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->providerName:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4a

    return v2

    :cond_4a
    return v0
.end method

.method public final getCardType()Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->cardType:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getItemId()Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->itemId:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getItemInfoId()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->itemInfoId:I

    return p0
.end method

.method public final getItemType()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->itemType:Ljava/lang/String;

    return-object p0
.end method

.method public final getProviderName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->providerName:Ljava/lang/String;

    return-object p0
.end method

.method public final getSpanSize()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->spanSize:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->itemInfoId:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->itemType:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->spanSize:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_17

    move v1, v2

    goto :goto_1b

    :cond_17
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->itemId:Ljava/lang/Integer;

    if-nez v1, :cond_24

    move v1, v2

    goto :goto_28

    :cond_24
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_28
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->cardType:Ljava/lang/Integer;

    if-nez v1, :cond_31

    move v1, v2

    goto :goto_35

    :cond_31
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_35
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->providerName:Ljava/lang/String;

    if-nez p0, :cond_3d

    goto :goto_41

    :cond_3d
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_41
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "ExtraDataForStartThemeStore(itemInfoId="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->itemInfoId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", itemType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->itemType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", spanSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->spanSize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", itemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->itemId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cardType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->cardType:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", providerName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->providerName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    const-string/jumbo p2, "out"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->itemInfoId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->itemType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->spanSize:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->itemId:Ljava/lang/Integer;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_1f

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_29

    :cond_1f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_29
    iget-object p2, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->cardType:Ljava/lang/Integer;

    if-nez p2, :cond_31

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3b

    :cond_31
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3b
    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->providerName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
