.class public final Lcom/android/launcher3/dragndrop/GroupChildCardDragInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/launcher3/dragndrop/GroupChildCardDragInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final cardIdentity:Ljava/lang/String;

.field private final uiData:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/dragndrop/GroupChildCardDragInfo$Creator;

    invoke-direct {v0}, Lcom/android/launcher3/dragndrop/GroupChildCardDragInfo$Creator;-><init>()V

    sput-object v0, Lcom/android/launcher3/dragndrop/GroupChildCardDragInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "cardIdentity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "uiData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/GroupChildCardDragInfo;->cardIdentity:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/launcher3/dragndrop/GroupChildCardDragInfo;->uiData:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/launcher3/dragndrop/GroupChildCardDragInfo;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/android/launcher3/dragndrop/GroupChildCardDragInfo;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/GroupChildCardDragInfo;->cardIdentity:Ljava/lang/String;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lcom/android/launcher3/dragndrop/GroupChildCardDragInfo;->uiData:Ljava/lang/String;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/dragndrop/GroupChildCardDragInfo;->copy(Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/dragndrop/GroupChildCardDragInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/GroupChildCardDragInfo;->cardIdentity:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/GroupChildCardDragInfo;->uiData:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/dragndrop/GroupChildCardDragInfo;
    .registers 3

    const-string p0, "cardIdentity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "uiData"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/launcher3/dragndrop/GroupChildCardDragInfo;

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/dragndrop/GroupChildCardDragInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

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
    instance-of v1, p1, Lcom/android/launcher3/dragndrop/GroupChildCardDragInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/android/launcher3/dragndrop/GroupChildCardDragInfo;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/GroupChildCardDragInfo;->cardIdentity:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/launcher3/dragndrop/GroupChildCardDragInfo;->cardIdentity:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/GroupChildCardDragInfo;->uiData:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/launcher3/dragndrop/GroupChildCardDragInfo;->uiData:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public final getCardIdentity()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/GroupChildCardDragInfo;->cardIdentity:Ljava/lang/String;

    return-object p0
.end method

.method public final getUiData()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/GroupChildCardDragInfo;->uiData:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/GroupChildCardDragInfo;->cardIdentity:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/GroupChildCardDragInfo;->uiData:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "GroupChildCardDragInfo(cardIdentity="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/GroupChildCardDragInfo;->cardIdentity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uiData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/GroupChildCardDragInfo;->uiData:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    const-string/jumbo p2, "out"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/launcher3/dragndrop/GroupChildCardDragInfo;->cardIdentity:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/GroupChildCardDragInfo;->uiData:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
