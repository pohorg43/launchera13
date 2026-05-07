.class public final Lcom/android/launcher3/logging/InstanceId;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/launcher3/logging/InstanceId;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE_ID_MAX:I = 0x100000


# instance fields
.field private final mId:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/logging/InstanceId$1;

    invoke-direct {v0}, Lcom/android/launcher3/logging/InstanceId$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/high16 v0, 0x100000

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/logging/InstanceId;->mId:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/logging/InstanceId;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/launcher3/logging/InstanceId$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/launcher3/logging/InstanceId;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static fakeInstanceId(I)Lcom/android/launcher3/logging/InstanceId;
    .registers 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/android/launcher3/logging/InstanceId;

    invoke-direct {v0, p0}, Lcom/android/launcher3/logging/InstanceId;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/android/launcher3/logging/InstanceId;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget p0, p0, Lcom/android/launcher3/logging/InstanceId;->mId:I

    check-cast p1, Lcom/android/launcher3/logging/InstanceId;

    iget p1, p1, Lcom/android/launcher3/logging/InstanceId;->mId:I

    if-ne p0, p1, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1
.end method

.method public getId()I
    .registers 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget p0, p0, Lcom/android/launcher3/logging/InstanceId;->mId:I

    return p0
.end method

.method public hashCode()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/logging/InstanceId;->mId:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Lcom/android/launcher3/logging/InstanceId;->mId:I

    const-string v1, ""

    invoke-static {v0, p0, v1}, Landroid/support/v4/media/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    iget p0, p0, Lcom/android/launcher3/logging/InstanceId;->mId:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
