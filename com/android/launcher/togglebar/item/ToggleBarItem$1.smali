.class Lcom/android/launcher/togglebar/item/ToggleBarItem$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/togglebar/item/ToggleBarItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/launcher/togglebar/item/ToggleBarItem;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/launcher/togglebar/item/ToggleBarItem;
    .registers 2

    new-instance p0, Lcom/android/launcher/togglebar/item/ToggleBarItem;

    invoke-direct {p0}, Lcom/android/launcher/togglebar/item/ToggleBarItem;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/launcher/togglebar/item/ToggleBarItem;->access$002(Lcom/android/launcher/togglebar/item/ToggleBarItem;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher/togglebar/item/ToggleBarItem$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/launcher/togglebar/item/ToggleBarItem;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/android/launcher/togglebar/item/ToggleBarItem;
    .registers 2

    new-array p0, p1, [Lcom/android/launcher/togglebar/item/ToggleBarItem;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher/togglebar/item/ToggleBarItem$1;->newArray(I)[Lcom/android/launcher/togglebar/item/ToggleBarItem;

    move-result-object p0

    return-object p0
.end method
