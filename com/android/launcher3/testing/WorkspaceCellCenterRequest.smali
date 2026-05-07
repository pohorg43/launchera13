.class public Lcom/android/launcher3/testing/WorkspaceCellCenterRequest;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/testing/TestInformationRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/testing/WorkspaceCellCenterRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/launcher3/testing/WorkspaceCellCenterRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final cellX:I

.field public final cellY:I

.field public final spanX:I

.field public final spanY:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/testing/WorkspaceCellCenterRequest$1;

    invoke-direct {v0}, Lcom/android/launcher3/testing/WorkspaceCellCenterRequest$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/testing/WorkspaceCellCenterRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IIII)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/testing/WorkspaceCellCenterRequest;->cellX:I

    iput p2, p0, Lcom/android/launcher3/testing/WorkspaceCellCenterRequest;->cellY:I

    iput p3, p0, Lcom/android/launcher3/testing/WorkspaceCellCenterRequest;->spanX:I

    iput p4, p0, Lcom/android/launcher3/testing/WorkspaceCellCenterRequest;->spanY:I

    return-void
.end method

.method public synthetic constructor <init>(IIIILcom/android/launcher3/testing/WorkspaceCellCenterRequest$1;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/testing/WorkspaceCellCenterRequest;-><init>(IIII)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/launcher3/testing/WorkspaceCellCenterRequest;-><init>(IIII)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/launcher3/testing/WorkspaceCellCenterRequest$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/launcher3/testing/WorkspaceCellCenterRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static builder()Lcom/android/launcher3/testing/WorkspaceCellCenterRequest$Builder;
    .registers 2

    new-instance v0, Lcom/android/launcher3/testing/WorkspaceCellCenterRequest$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/testing/WorkspaceCellCenterRequest$Builder;-><init>(Lcom/android/launcher3/testing/WorkspaceCellCenterRequest$1;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getRequestName()Ljava/lang/String;
    .registers 1

    const-string/jumbo p0, "workspace-cell-center"

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    iget p2, p0, Lcom/android/launcher3/testing/WorkspaceCellCenterRequest;->cellX:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/android/launcher3/testing/WorkspaceCellCenterRequest;->cellY:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/android/launcher3/testing/WorkspaceCellCenterRequest;->spanX:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lcom/android/launcher3/testing/WorkspaceCellCenterRequest;->spanY:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
