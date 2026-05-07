.class Lcom/oplus/compat/app/TaskSnapshotNative$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/app/TaskSnapshotNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oplus/compat/app/TaskSnapshotNative;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/oplus/compat/app/TaskSnapshotNative;
    .registers 3

    new-instance p0, Lcom/oplus/compat/app/TaskSnapshotNative;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oplus/compat/app/TaskSnapshotNative;-><init>(Landroid/os/Parcel;Lcom/oplus/compat/app/TaskSnapshotNative$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/oplus/compat/app/TaskSnapshotNative$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oplus/compat/app/TaskSnapshotNative;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/oplus/compat/app/TaskSnapshotNative;
    .registers 2

    new-array p0, p1, [Lcom/oplus/compat/app/TaskSnapshotNative;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/oplus/compat/app/TaskSnapshotNative$1;->newArray(I)[Lcom/oplus/compat/app/TaskSnapshotNative;

    move-result-object p0

    return-object p0
.end method
