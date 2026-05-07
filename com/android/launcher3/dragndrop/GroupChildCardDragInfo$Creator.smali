.class public final Lcom/android/launcher3/dragndrop/GroupChildCardDragInfo$Creator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/dragndrop/GroupChildCardDragInfo;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/launcher3/dragndrop/GroupChildCardDragInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/android/launcher3/dragndrop/GroupChildCardDragInfo;
    .registers 3

    const-string/jumbo p0, "parcel"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/launcher3/dragndrop/GroupChildCardDragInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/dragndrop/GroupChildCardDragInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/GroupChildCardDragInfo$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/android/launcher3/dragndrop/GroupChildCardDragInfo;

    move-result-object p0

    return-object p0
.end method

.method public final newArray(I)[Lcom/android/launcher3/dragndrop/GroupChildCardDragInfo;
    .registers 2

    new-array p0, p1, [Lcom/android/launcher3/dragndrop/GroupChildCardDragInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/GroupChildCardDragInfo$Creator;->newArray(I)[Lcom/android/launcher3/dragndrop/GroupChildCardDragInfo;

    move-result-object p0

    return-object p0
.end method
