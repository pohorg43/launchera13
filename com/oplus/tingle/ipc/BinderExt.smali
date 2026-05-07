.class public Lcom/oplus/tingle/ipc/BinderExt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/tingle/ipc/BinderExt;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private mPid:I

.field private mProcessName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/tingle/ipc/BinderExt$1;

    invoke-direct {v0}, Lcom/oplus/tingle/ipc/BinderExt$1;-><init>()V

    sput-object v0, Lcom/oplus/tingle/ipc/BinderExt;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/tingle/ipc/BinderExt;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/tingle/ipc/BinderExt;->mBinder:Landroid/os/IBinder;

    iput-object p2, p0, Lcom/oplus/tingle/ipc/BinderExt;->mProcessName:Ljava/lang/String;

    iput p3, p0, Lcom/oplus/tingle/ipc/BinderExt;->mPid:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/tingle/ipc/BinderExt;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/tingle/ipc/BinderExt;->mProcessName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/oplus/tingle/ipc/BinderExt;->mPid:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getBinder()Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/oplus/tingle/ipc/BinderExt;->mBinder:Landroid/os/IBinder;

    return-object p0
.end method

.method public getPid()I
    .registers 1

    iget p0, p0, Lcom/oplus/tingle/ipc/BinderExt;->mPid:I

    return p0
.end method

.method public getProcessName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/tingle/ipc/BinderExt;->mProcessName:Ljava/lang/String;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    iget-object p2, p0, Lcom/oplus/tingle/ipc/BinderExt;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object p2, p0, Lcom/oplus/tingle/ipc/BinderExt;->mProcessName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p0, p0, Lcom/oplus/tingle/ipc/BinderExt;->mPid:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
